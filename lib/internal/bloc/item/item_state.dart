part of 'item_bloc.dart';


@freezed
class ItemState with _$ItemState {
  const factory ItemState.initial() = _Initial;
  const factory ItemState.loading() = _Loading;

  const factory ItemState.successfulCreation({
    required Nomenclature nomenclature
  }) = _SuccessfulCreation;

  const factory ItemState.failure({required String errorText}) = _Failure;

  const factory ItemState.table({
    required Table table
  }) = _Table;
}
