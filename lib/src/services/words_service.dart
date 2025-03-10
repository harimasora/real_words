import 'package:real_social/src/models/real_word.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'words_service.g.dart';

@riverpod
class WordsService extends _$WordsService {
  @override
  void build() {
    return;
  }

  final _supabase = Supabase.instance.client;

  /// TODO: Check later
  /// This keeps spamming errors on the console when used on the WEB.
  /// https://github.com/supabase/supabase-flutter/issues/1126
  Stream<List<RealWord>> streamWords() {
    return _supabase.from('words').stream(primaryKey: ['id']).map((data) {
      return data.map((json) => RealWord.fromJson(json)).toList();
    });
  }

  Future<void> insert({required String word, required String ownerId}) async {
    return _supabase.from('words').insert({'word': word, 'ownerId': ownerId});
  }
}
