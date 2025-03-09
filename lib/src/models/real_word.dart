import 'package:freezed_annotation/freezed_annotation.dart';

part 'real_word.freezed.dart';
part 'real_word.g.dart';

@freezed
abstract class RealWord with _$RealWord {
  const factory RealWord({required int id, required String word, required String ownerId}) = _RealWord;

  factory RealWord.fromJson(Map<String, dynamic> json) => _$RealWordFromJson(json);
}
