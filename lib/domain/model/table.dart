import 'package:test/domain/model/nomenclature.dart';

class Table{
  final int page;
  final int pageSize;
  final String? sortBy;
  final String? sortOrder;
  final List<Nomenclature> listNomenclature;

  Table({
    required this.page,
    required this.pageSize,
    this.sortBy,
    this.sortOrder,
    required this.listNomenclature,
  });
}