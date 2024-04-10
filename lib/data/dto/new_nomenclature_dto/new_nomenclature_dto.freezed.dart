// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_nomenclature_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewNomenclatureDto _$NewNomenclatureDtoFromJson(Map<String, dynamic> json) {
  return _NewNomenclatureDto.fromJson(json);
}

/// @nodoc
mixin _$NewNomenclatureDto {
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'measurement_units')
  String get measurementUnits => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewNomenclatureDtoCopyWith<NewNomenclatureDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewNomenclatureDtoCopyWith<$Res> {
  factory $NewNomenclatureDtoCopyWith(
          NewNomenclatureDto value, $Res Function(NewNomenclatureDto) then) =
      _$NewNomenclatureDtoCopyWithImpl<$Res, NewNomenclatureDto>;
  @useResult
  $Res call(
      {String name,
      String? description,
      @JsonKey(name: 'measurement_units') String measurementUnits,
      String? code});
}

/// @nodoc
class _$NewNomenclatureDtoCopyWithImpl<$Res, $Val extends NewNomenclatureDto>
    implements $NewNomenclatureDtoCopyWith<$Res> {
  _$NewNomenclatureDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? measurementUnits = null,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      measurementUnits: null == measurementUnits
          ? _value.measurementUnits
          : measurementUnits // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewNomenclatureDtoImplCopyWith<$Res>
    implements $NewNomenclatureDtoCopyWith<$Res> {
  factory _$$NewNomenclatureDtoImplCopyWith(_$NewNomenclatureDtoImpl value,
          $Res Function(_$NewNomenclatureDtoImpl) then) =
      __$$NewNomenclatureDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? description,
      @JsonKey(name: 'measurement_units') String measurementUnits,
      String? code});
}

/// @nodoc
class __$$NewNomenclatureDtoImplCopyWithImpl<$Res>
    extends _$NewNomenclatureDtoCopyWithImpl<$Res, _$NewNomenclatureDtoImpl>
    implements _$$NewNomenclatureDtoImplCopyWith<$Res> {
  __$$NewNomenclatureDtoImplCopyWithImpl(_$NewNomenclatureDtoImpl _value,
      $Res Function(_$NewNomenclatureDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? measurementUnits = null,
    Object? code = freezed,
  }) {
    return _then(_$NewNomenclatureDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      measurementUnits: null == measurementUnits
          ? _value.measurementUnits
          : measurementUnits // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewNomenclatureDtoImpl extends _NewNomenclatureDto {
  const _$NewNomenclatureDtoImpl(
      {required this.name,
      this.description,
      @JsonKey(name: 'measurement_units') required this.measurementUnits,
      this.code})
      : super._();

  factory _$NewNomenclatureDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewNomenclatureDtoImplFromJson(json);

  @override
  final String name;
  @override
  final String? description;
  @override
  @JsonKey(name: 'measurement_units')
  final String measurementUnits;
  @override
  final String? code;

  @override
  String toString() {
    return 'NewNomenclatureDto(name: $name, description: $description, measurementUnits: $measurementUnits, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewNomenclatureDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.measurementUnits, measurementUnits) ||
                other.measurementUnits == measurementUnits) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, measurementUnits, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewNomenclatureDtoImplCopyWith<_$NewNomenclatureDtoImpl> get copyWith =>
      __$$NewNomenclatureDtoImplCopyWithImpl<_$NewNomenclatureDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewNomenclatureDtoImplToJson(
      this,
    );
  }
}

abstract class _NewNomenclatureDto extends NewNomenclatureDto {
  const factory _NewNomenclatureDto(
      {required final String name,
      final String? description,
      @JsonKey(name: 'measurement_units')
      required final String measurementUnits,
      final String? code}) = _$NewNomenclatureDtoImpl;
  const _NewNomenclatureDto._() : super._();

  factory _NewNomenclatureDto.fromJson(Map<String, dynamic> json) =
      _$NewNomenclatureDtoImpl.fromJson;

  @override
  String get name;
  @override
  String? get description;
  @override
  @JsonKey(name: 'measurement_units')
  String get measurementUnits;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$NewNomenclatureDtoImplCopyWith<_$NewNomenclatureDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
