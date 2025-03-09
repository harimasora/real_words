// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'real_word.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RealWord _$RealWordFromJson(Map<String, dynamic> json) => _RealWord(
  id: (json['id'] as num).toInt(),
  word: json['word'] as String,
  ownerId: json['ownerId'] as String,
);

Map<String, dynamic> _$RealWordToJson(_RealWord instance) => <String, dynamic>{
  'id': instance.id,
  'word': instance.word,
  'ownerId': instance.ownerId,
};
