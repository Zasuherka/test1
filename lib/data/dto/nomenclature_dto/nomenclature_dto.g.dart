// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomenclature_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NomenclatureDtoImpl _$$NomenclatureDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$NomenclatureDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      measurementUnits: json['measurement_units'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$NomenclatureDtoImplToJson(
        _$NomenclatureDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'measurement_units': instance.measurementUnits,
      'code': instance.code,
    };
