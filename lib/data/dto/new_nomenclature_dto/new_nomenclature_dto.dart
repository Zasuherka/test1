import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test/domain/model/nomenclature.dart';

part 'new_nomenclature_dto.g.dart';
part 'new_nomenclature_dto.freezed.dart';


@freezed
class NewNomenclatureDto with _$NewNomenclatureDto{
  const NewNomenclatureDto._();
  const factory NewNomenclatureDto({
    required String name,
    String? description,
    @JsonKey(name: 'measurement_units')
    required String measurementUnits,
    String? code
  }) = _NewNomenclatureDto;

  factory NewNomenclatureDto
      .fromJson(Map<String, dynamic> json) => _$NewNomenclatureDtoFromJson(json);
}