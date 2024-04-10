
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_auth_dto.freezed.dart';
part 'user_auth_dto.g.dart';

@freezed
class UserAuthDto with _$UserAuthDto {
  const UserAuthDto._();
  const factory UserAuthDto({
    required String login,
    required String password
  }) = _UserAuthDto;

  factory UserAuthDto.fromJson(Map<String, dynamic> json) =>
      _$UserAuthDtoFromJson(json);
}