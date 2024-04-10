import 'package:test/data/dto/nomenclature_dto/nomenclature_dto.dart';

class Nomenclature {
  final String id;
  final String name;
  final String? description;
  final String? measurementUnits;
  final String? code;

  Nomenclature({
    required this.id,
    required this.name,
    this.description,
    this.measurementUnits,
    this.code
  });

  factory Nomenclature.fromDto({required NomenclatureDto nomenclatureDto}){
    return Nomenclature(
        id: nomenclatureDto.id,
        name: nomenclatureDto.name,
        description: nomenclatureDto.description,
        measurementUnits: nomenclatureDto.measurementUnits,
        code: nomenclatureDto.code
    );
  }
}
