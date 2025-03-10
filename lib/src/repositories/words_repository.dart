import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:real_words/src/models/real_word.dart';
import 'package:real_words/src/repositories/user_repository.dart';
import 'package:real_words/src/services/words_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'words_repository.g.dart';

@riverpod
class WordsRepository extends _$WordsRepository {
  @override
  List<RealWord> build() {
    final sub = ref.read(wordsServiceProvider.notifier).streamWords().listen((data) {
      state = data;
    });
    ref.onDispose(sub.cancel);
    return [];
  }

  Future<void> addWord(String word) async {
    final user = ref.read(userRepositoryProvider);
    if (user != null) {
      state = [...state, RealWord(id: state.length + 1, word: word, ownerId: user.id)];
      await ref.read(wordsServiceProvider.notifier).insert(word: word, ownerId: user.id);
    }
  }
}

@riverpod
String? wordsListSizeMessage(Ref ref) {
  const breakpoints = [5, 12, 17, 21, 25];
  final list = ref.watch(wordsRepositoryProvider);
  if (breakpoints.contains(list.length)) {
    return 'You have ${list.length} words!';
  }
  return null;
}
