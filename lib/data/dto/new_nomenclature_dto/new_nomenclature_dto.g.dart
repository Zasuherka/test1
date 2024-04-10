// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_nomenclature_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewNomenclatureDtoImpl _$$NewNomenclatureDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$NewNomenclatureDtoImpl(
      name: json['name'] as String,
      description: json['description'] as String?,
      measurementUnits: json['measurement_units'] as String,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$NewNomenclatureDtoImplToJson(
        _$NewNomenclatureDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'measurement_units': instance.measurementUnits,
      'code': instance.code,
    };
