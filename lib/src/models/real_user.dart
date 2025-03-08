import 'package:freezed_annotation/freezed_annotation.dart';

part 'real_user.freezed.dart';
part 'real_user.g.dart';

@freezed
abstract class RealUser with _$RealUser {
  const factory RealUser({required String id}) = _RealUser;

  factory RealUser.fromJson(Map<String, dynamic> json) => _$RealUserFromJson(json);
}
