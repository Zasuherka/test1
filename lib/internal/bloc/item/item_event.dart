part of 'item_bloc.dart';

@freezed
class ItemEvent with _$ItemEvent {
  const factory ItemEvent.getTable({
    required int page,
    required int pageSize,
    String? sortBy,
    String? sortOrder
  }) = _GetTable;

  const factory ItemEvent.createNomenclature({
    required String name,
    required String measurementUnits,
    String? description,
    String? code
  }) = _CreateNomenclature;

  const factory ItemEvent.updateNomenclature({
    required String id,
    required String name,
    required String measurementUnits,
    String? description,
    String? code
  }) = _updateNomenclature;
}