import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test/domain/model/nomenclature.dart';

part 'nomenclature_dto.g.dart';
part 'nomenclature_dto.freezed.dart';

@freezed
class NomenclatureDto with _$NomenclatureDto{
  const NomenclatureDto._();
  const factory NomenclatureDto({
    required String id,
    required String name,
    String? description,
    @JsonKey(name: 'measurement_units')
    String? measurementUnits,
    String? code
  }) = _NomenclatureDto;

  factory NomenclatureDto
      .fromJson(Map<String, dynamic> json) => _$NomenclatureDtoFromJson(json);

  factory NomenclatureDto.fromNomenclature(Nomenclature nomenclature){
    return NomenclatureDto(
        id: nomenclature.id,
        name: nomenclature.name,
        description: nomenclature.description,
        measurementUnits: nomenclature.measurementUnits,
        code: nomenclature.code,
    );
  }

  Nomenclature toNomenclature(){
    return Nomenclature(
        id: id,
        name: name,
        description: description,
        measurementUnits: measurementUnits,
        code: code
    );
  }
}