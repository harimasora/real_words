// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'real_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RealUser {

 String get id;
/// Create a copy of RealUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RealUserCopyWith<RealUser> get copyWith => _$RealUserCopyWithImpl<RealUser>(this as RealUser, _$identity);

  /// Serializes this RealUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RealUser&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'RealUser(id: $id)';
}


}

/// @nodoc
abstract mixin class $RealUserCopyWith<$Res>  {
  factory $RealUserCopyWith(RealUser value, $Res Function(RealUser) _then) = _$RealUserCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$RealUserCopyWithImpl<$Res>
    implements $RealUserCopyWith<$Res> {
  _$RealUserCopyWithImpl(this._self, this._then);

  final RealUser _self;
  final $Res Function(RealUser) _then;

/// Create a copy of RealUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _RealUser implements RealUser {
  const _RealUser({required this.id});
  factory _RealUser.fromJson(Map<String, dynamic> json) => _$RealUserFromJson(json);

@override final  String id;

/// Create a copy of RealUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RealUserCopyWith<_RealUser> get copyWith => __$RealUserCopyWithImpl<_RealUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RealUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RealUser&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'RealUser(id: $id)';
}


}

/// @nodoc
abstract mixin class _$RealUserCopyWith<$Res> implements $RealUserCopyWith<$Res> {
  factory _$RealUserCopyWith(_RealUser value, $Res Function(_RealUser) _then) = __$RealUserCopyWithImpl;
@override @useResult
$Res call({
 String id
});




}
/// @nodoc
class __$RealUserCopyWithImpl<$Res>
    implements _$RealUserCopyWith<$Res> {
  __$RealUserCopyWithImpl(this._self, this._then);

  final _RealUser _self;
  final $Res Function(_RealUser) _then;

/// Create a copy of RealUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_RealUser(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
