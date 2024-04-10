import 'package:test/domain/model/nomenclature.dart';
import 'package:test/domain/model/table.dart';

abstract class IItemRepository {
  Future<Table> getTable({
    required int page,
    required int pageSize,
    String? sortBy,
    String? sortOrder
  });

  Future<Nomenclature> createNomenclature({
    required String name,
    required String measurementUnits,
    String? description,
    String? code
  });

  Future<Table> updateNomenclature({
    required Table table,
    required String id,
    required String name,
    required String measurementUnits,
    String? description,
    String? code
  });
}
