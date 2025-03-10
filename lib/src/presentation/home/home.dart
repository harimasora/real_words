import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:real_social/src/presentation/home/home_notifier.dart';
import 'package:real_social/src/repositories/words_repository.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeNotifierProvider);
    final notifier = ref.watch(homeNotifierProvider.notifier);
    final currentWord = ref.watch(homeNotifierProvider.select((s) => s.currentWord));
    final controller = useTextEditingController();

    ref.listen(wordsListSizeMessageProvider, (prev, next) {
      if (prev != next && next?.isNotEmpty == true) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(next!)));
      }
    });

    useEffect(() {
      if (currentWord.isEmpty) {
        controller.text = currentWord;
      }
      return null;
    }, [currentWord]);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 2,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: Colors.orangeAccent, borderRadius: BorderRadius.circular(8)),
                  child:
                      state.words.isEmpty
                          ? Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('No favorite words 😭'),
                                SizedBox(height: 8),
                                Text('Use the field below to add something'),
                              ],
                            ),
                          )
                          : ListView.separated(
                            itemCount: state.words.length,
                            separatorBuilder: (context, index) => Divider(color: Colors.orange),
                            itemBuilder: (context, index) => ListTile(title: Text(state.words[index].word)),
                          ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    SizedBox(height: 24),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: controller,
                            onFieldSubmitted: (_) => notifier.addWord(),
                            onChanged: notifier.setWord,
                            onTapOutside: (_) {
                              FocusManager.instance.primaryFocus?.unfocus();
                            },
                          ),
                        ),
                        IconButton.filled(
                          onPressed: state.currentWord.isEmpty ? null : notifier.addWord,
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                  ],
                ),
              ),
              ElevatedButton(onPressed: notifier.signOut, child: Text('Sign out')),
            ],
          ),
        ),
      ),
    );
  }
}
