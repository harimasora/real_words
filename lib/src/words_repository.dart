import 'package:real_social/src/models/real_word.dart';
import 'package:real_social/src/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'words_repository.g.dart';

@riverpod
class WordsRepository extends _$WordsRepository {
  @override
  List<RealWord> build() {
    final sub = Supabase.instance.client.from('words').stream(primaryKey: ['id']).listen((data) {
      state = data.map((json) => RealWord.fromJson(json)).toList();
    });
    ref.onDispose(sub.cancel);
    return [];
  }

  Future<void> addWord(String word) async {
    final user = ref.read(userRepositoryProvider);
    if (user != null) {
      state = [...state, RealWord(id: state.length + 1, word: word, ownerId: user.id)];
      await Supabase.instance.client.from('words').insert({'word': word, 'ownerId': user.id});
    }
  }
}
