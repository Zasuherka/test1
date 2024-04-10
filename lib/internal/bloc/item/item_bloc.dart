import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:test/data/repository/item_repository.dart';
import 'package:test/domain/model/nomenclature.dart';
import 'package:test/domain/model/table.dart';
import 'package:test/domain/repository/item_repository.dart';


part 'item_event.dart';
part 'item_state.dart';
part 'item_bloc.freezed.dart';


class ItemBloc extends Bloc<ItemEvent, ItemState> {

  final IItemRepository _itemRepository = ItemRepository();

  Table? table;

  ItemBloc() : super(const ItemState.initial()) {
    on<ItemEvent>(transformer: restartable(), (event, emit) async {
      await event.map(
          getTable: (value) =>  _getTable(
            emit,
            page: value.page,
            pageSize: value.pageSize,
            sortBy: value.sortBy,
            sortOrder: value.sortOrder,
          ),
          createNomenclature: (value) => _createNomenclature(emit,
              name: value.name, 
              measurementUnits: value.measurementUnits,
              description: value.description,
              code: value.code,
          ),
          updateNomenclature: (value) => _updateNomenclature(emit,
            id: value.id,
            name: value.name,
            measurementUnits: value.measurementUnits,
            description: value.description,
            code: value.code,
          ),
      );
    });
  }

  Future<void> _getTable(Emitter<ItemState> emitter, {
    required int page,
    required int pageSize,
    String? sortBy,
    String? sortOrder
  }) async {
    emitter(const ItemState.loading());
    try{
      final table = await _itemRepository.getTable(
        page: page,
        pageSize: pageSize,
        sortBy: sortBy,
        sortOrder: sortOrder,
      );
      this.table = table;
      emitter(ItemState.table(table: table));
    }
    catch(error){
      print(error);
      emitter(ItemState.failure(errorText: error.toString()));
    }
  }

  Future<void> _createNomenclature(Emitter<ItemState> emitter, {
    required String name, 
    required String measurementUnits,
    String? description,
    String? code
  }) async {
    try{
      final nomenclature = await _itemRepository.createNomenclature(
        name: name,
        measurementUnits: measurementUnits,
        description: description,
        code: code,
      );
      emitter(ItemState.successfulCreation(nomenclature: nomenclature));
    }
    catch(error){
      emitter(ItemState.failure(errorText: error.toString()));
    }
  }

  Future<void> _updateNomenclature(Emitter<ItemState> emitter, {
    required String id,
    required String name,
    required String measurementUnits,
    String? description,
    String? code
  }) async {
    try{
      if(table != null){
        final table = await _itemRepository.updateNomenclature(
          table: this.table!,
          id: id,
          name: name,
          measurementUnits: measurementUnits,
          description: description,
          code: code,
        );
        emitter(ItemState.table(table: table));
      }
      else{
        emitter(const ItemState.failure(errorText: 'Сначала получите таблицу'));
      }
    }
    catch(error){
      emitter(ItemState.failure(errorText: error.toString()));
    }
  }
}
