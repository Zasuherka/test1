// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_auth_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserAuthDto _$UserAuthDtoFromJson(Map<String, dynamic> json) {
  return _UserAuthDto.fromJson(json);
}

/// @nodoc
mixin _$UserAuthDto {
  String get login => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAuthDtoCopyWith<UserAuthDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthDtoCopyWith<$Res> {
  factory $UserAuthDtoCopyWith(
          UserAuthDto value, $Res Function(UserAuthDto) then) =
      _$UserAuthDtoCopyWithImpl<$Res, UserAuthDto>;
  @useResult
  $Res call({String login, String password});
}

/// @nodoc
class _$UserAuthDtoCopyWithImpl<$Res, $Val extends UserAuthDto>
    implements $UserAuthDtoCopyWith<$Res> {
  _$UserAuthDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAuthDtoImplCopyWith<$Res>
    implements $UserAuthDtoCopyWith<$Res> {
  factory _$$UserAuthDtoImplCopyWith(
          _$UserAuthDtoImpl value, $Res Function(_$UserAuthDtoImpl) then) =
      __$$UserAuthDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String login, String password});
}

/// @nodoc
class __$$UserAuthDtoImplCopyWithImpl<$Res>
    extends _$UserAuthDtoCopyWithImpl<$Res, _$UserAuthDtoImpl>
    implements _$$UserAuthDtoImplCopyWith<$Res> {
  __$$UserAuthDtoImplCopyWithImpl(
      _$UserAuthDtoImpl _value, $Res Function(_$UserAuthDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
  }) {
    return _then(_$UserAuthDtoImpl(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAuthDtoImpl extends _UserAuthDto {
  const _$UserAuthDtoImpl({required this.login, required this.password})
      : super._();

  factory _$UserAuthDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAuthDtoImplFromJson(json);

  @override
  final String login;
  @override
  final String password;

  @override
  String toString() {
    return 'UserAuthDto(login: $login, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAuthDtoImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, login, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAuthDtoImplCopyWith<_$UserAuthDtoImpl> get copyWith =>
      __$$UserAuthDtoImplCopyWithImpl<_$UserAuthDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAuthDtoImplToJson(
      this,
    );
  }
}

abstract class _UserAuthDto extends UserAuthDto {
  const factory _UserAuthDto(
      {required final String login,
      required final String password}) = _$UserAuthDtoImpl;
  const _UserAuthDto._() : super._();

  factory _UserAuthDto.fromJson(Map<String, dynamic> json) =
      _$UserAuthDtoImpl.fromJson;

  @override
  String get login;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$UserAuthDtoImplCopyWith<_$UserAuthDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
