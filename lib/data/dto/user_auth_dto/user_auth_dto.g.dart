// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_auth_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAuthDtoImpl _$$UserAuthDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserAuthDtoImpl(
      login: json['login'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$UserAuthDtoImplToJson(_$UserAuthDtoImpl instance) =>
    <String, dynamic>{
      'login': instance.login,
      'password': instance.password,
    };
