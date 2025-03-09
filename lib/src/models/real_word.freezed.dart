// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'real_word.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RealWord {

 int get id; String get word; String get ownerId;
/// Create a copy of RealWord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RealWordCopyWith<RealWord> get copyWith => _$RealWordCopyWithImpl<RealWord>(this as RealWord, _$identity);

  /// Serializes this RealWord to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RealWord&&(identical(other.id, id) || other.id == id)&&(identical(other.word, word) || other.word == word)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,word,ownerId);

@override
String toString() {
  return 'RealWord(id: $id, word: $word, ownerId: $ownerId)';
}


}

/// @nodoc
abstract mixin class $RealWordCopyWith<$Res>  {
  factory $RealWordCopyWith(RealWord value, $Res Function(RealWord) _then) = _$RealWordCopyWithImpl;
@useResult
$Res call({
 int id, String word, String ownerId
});




}
/// @nodoc
class _$RealWordCopyWithImpl<$Res>
    implements $RealWordCopyWith<$Res> {
  _$RealWordCopyWithImpl(this._self, this._then);

  final RealWord _self;
  final $Res Function(RealWord) _then;

/// Create a copy of RealWord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? word = null,Object? ownerId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _RealWord implements RealWord {
  const _RealWord({required this.id, required this.word, required this.ownerId});
  factory _RealWord.fromJson(Map<String, dynamic> json) => _$RealWordFromJson(json);

@override final  int id;
@override final  String word;
@override final  String ownerId;

/// Create a copy of RealWord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RealWordCopyWith<_RealWord> get copyWith => __$RealWordCopyWithImpl<_RealWord>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RealWordToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RealWord&&(identical(other.id, id) || other.id == id)&&(identical(other.word, word) || other.word == word)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,word,ownerId);

@override
String toString() {
  return 'RealWord(id: $id, word: $word, ownerId: $ownerId)';
}


}

/// @nodoc
abstract mixin class _$RealWordCopyWith<$Res> implements $RealWordCopyWith<$Res> {
  factory _$RealWordCopyWith(_RealWord value, $Res Function(_RealWord) _then) = __$RealWordCopyWithImpl;
@override @useResult
$Res call({
 int id, String word, String ownerId
});




}
/// @nodoc
class __$RealWordCopyWithImpl<$Res>
    implements _$RealWordCopyWith<$Res> {
  __$RealWordCopyWithImpl(this._self, this._then);

  final _RealWord _self;
  final $Res Function(_RealWord) _then;

/// Create a copy of RealWord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? word = null,Object? ownerId = null,}) {
  return _then(_RealWord(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,word: null == word ? _self.word : word // ignore: cast_nullable_to_non_nullable
as String,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
