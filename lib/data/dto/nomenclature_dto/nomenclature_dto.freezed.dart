// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nomenclature_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NomenclatureDto _$NomenclatureDtoFromJson(Map<String, dynamic> json) {
  return _NomenclatureDto.fromJson(json);
}

/// @nodoc
mixin _$NomenclatureDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'measurement_units')
  String? get measurementUnits => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NomenclatureDtoCopyWith<NomenclatureDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NomenclatureDtoCopyWith<$Res> {
  factory $NomenclatureDtoCopyWith(
          NomenclatureDto value, $Res Function(NomenclatureDto) then) =
      _$NomenclatureDtoCopyWithImpl<$Res, NomenclatureDto>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      @JsonKey(name: 'measurement_units') String? measurementUnits,
      String? code});
}

/// @nodoc
class _$NomenclatureDtoCopyWithImpl<$Res, $Val extends NomenclatureDto>
    implements $NomenclatureDtoCopyWith<$Res> {
  _$NomenclatureDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? measurementUnits = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      measurementUnits: freezed == measurementUnits
          ? _value.measurementUnits
          : measurementUnits // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NomenclatureDtoImplCopyWith<$Res>
    implements $NomenclatureDtoCopyWith<$Res> {
  factory _$$NomenclatureDtoImplCopyWith(_$NomenclatureDtoImpl value,
          $Res Function(_$NomenclatureDtoImpl) then) =
      __$$NomenclatureDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      @JsonKey(name: 'measurement_units') String? measurementUnits,
      String? code});
}

/// @nodoc
class __$$NomenclatureDtoImplCopyWithImpl<$Res>
    extends _$NomenclatureDtoCopyWithImpl<$Res, _$NomenclatureDtoImpl>
    implements _$$NomenclatureDtoImplCopyWith<$Res> {
  __$$NomenclatureDtoImplCopyWithImpl(
      _$NomenclatureDtoImpl _value, $Res Function(_$NomenclatureDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? measurementUnits = freezed,
    Object? code = freezed,
  }) {
    return _then(_$NomenclatureDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      measurementUnits: freezed == measurementUnits
          ? _value.measurementUnits
          : measurementUnits // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NomenclatureDtoImpl extends _NomenclatureDto {
  const _$NomenclatureDtoImpl(
      {required this.id,
      required this.name,
      this.description,
      @JsonKey(name: 'measurement_units') this.measurementUnits,
      this.code})
      : super._();

  factory _$NomenclatureDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NomenclatureDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? description;
  @override
  @JsonKey(name: 'measurement_units')
  final String? measurementUnits;
  @override
  final String? code;

  @override
  String toString() {
    return 'NomenclatureDto(id: $id, name: $name, description: $description, measurementUnits: $measurementUnits, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NomenclatureDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
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
      Object.hash(runtimeType, id, name, description, measurementUnits, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NomenclatureDtoImplCopyWith<_$NomenclatureDtoImpl> get copyWith =>
      __$$NomenclatureDtoImplCopyWithImpl<_$NomenclatureDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NomenclatureDtoImplToJson(
      this,
    );
  }
}

abstract class _NomenclatureDto extends NomenclatureDto {
  const factory _NomenclatureDto(
      {required final String id,
      required final String name,
      final String? description,
      @JsonKey(name: 'measurement_units') final String? measurementUnits,
      final String? code}) = _$NomenclatureDtoImpl;
  const _NomenclatureDto._() : super._();

  factory _NomenclatureDto.fromJson(Map<String, dynamic> json) =
      _$NomenclatureDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  @JsonKey(name: 'measurement_units')
  String? get measurementUnits;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$NomenclatureDtoImplCopyWith<_$NomenclatureDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
