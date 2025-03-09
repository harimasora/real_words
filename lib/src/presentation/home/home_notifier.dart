import 'package:real_social/src/words_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'home_state.dart';

part 'home_notifier.g.dart';

@riverpod
class HomeNotifier extends _$HomeNotifier {
  @override
  HomeState build() {
    final words = ref.watch(wordsRepositoryProvider);
    return HomeState(words: words);
  }

  Future<void> addWord() async {
    if (state.currentWord.isNotEmpty) {
      final notifier = ref.read(wordsRepositoryProvider.notifier);
      await notifier.addWord(state.currentWord);
      state = state.copyWith(currentWord: '');
    }
  }

  void setWord(String word) {
    state = state.copyWith(currentWord: word);
  }

  Future<void> signOut() async {
    await Supabase.instance.client.auth.signOut();
  }
}
