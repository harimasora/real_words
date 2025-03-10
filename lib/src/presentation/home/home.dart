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
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: state.words.length,
              itemBuilder: (context, index) => Text(state.words[index].toString()),
            ),
          ),
          Row(
            children: [
              Flexible(
                child: TextFormField(
                  controller: controller,
                  onFieldSubmitted: (_) => notifier.addWord(),
                  onChanged: notifier.setWord,
                ),
              ),
              IconButton.filled(onPressed: state.currentWord.isEmpty ? null : notifier.addWord, icon: Icon(Icons.add)),
            ],
          ),
          ElevatedButton(onPressed: notifier.signOut, child: Text('Sign out')),
        ],
      ),
    );
  }
}
