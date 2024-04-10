import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:test/data/dto/new_nomenclature_dto/new_nomenclature_dto.dart';
import 'package:test/data/dto/nomenclature_dto/nomenclature_dto.dart';
import 'package:test/data/service/service.dart';
import 'package:test/domain/model/nomenclature.dart';
import 'package:test/domain/model/table.dart';
import 'package:test/domain/repository/item_repository.dart';

class ItemRepository implements IItemRepository{

  final ApiService _apiService = ApiService();

  static final ItemRepository _itemRepository = ItemRepository._internal();

  factory ItemRepository(){
    return _itemRepository;
  }

  ItemRepository._internal();

  @override
  Future<Nomenclature> createNomenclature({
    required String name,
    required String measurementUnits,
    String? description, String?
    code
  }) async {

    final String? token = await getToken();

    if(token == null){
      throw Exception('AuthStatus is not Authorized');
    }

    final newNomenclatureDto = NewNomenclatureDto(
        name: name,
        measurementUnits: measurementUnits,
        description: description,
        code: code
    );

    try{
      final NomenclatureDto newNomenclature = await _apiService
          .itemService.createItem(newNomenclatureDto.toJson(), token);
      return newNomenclature.toNomenclature();
    }
    on DioException catch(error){
      if(error.response != null){
        if(error.response!.statusCode == 403){
          throw Exception('Нет доступа');
        } else if(error.response!.statusCode == 401){
          throw Exception('Вы не авторизованы');
        } else if(error.response!.statusCode == 500){
          throw Exception('Ошибка сервера');
        }
      }
    }
    throw Exception('Не зивестная ошибка');
  }

  @override
  Future<Table> getTable(
      {required int page, required int pageSize, String? sortBy, String? sortOrder}) async {

    final String? token = await getToken();

    if(token == null){
      throw Exception('AuthStatus is not Authorized');
    }

    try{
      print(sortOrder);
      final response = await _apiService.itemService.items(page, pageSize, 'name', sortOrder, token);
      final Map<String, dynamic> map = response as Map<String, dynamic>;
      final list = (map['result'] as List).map((e) =>
          NomenclatureDto.fromJson(e as Map<String, dynamic>)
              .toNomenclature()).toList();
      return Table(
          page: page,
          pageSize: pageSize,
          sortBy: sortBy,
          sortOrder: sortOrder,
          listNomenclature: list
      );
    }
    on DioException catch(error){
      if(error.response != null){
        if(error.response!.statusCode == 403){
          throw Exception('Нет доступа');
        } else if(error.response!.statusCode == 401){
          throw Exception('Вы не авторизованы');
        } else if(error.response!.statusCode == 500){
          throw Exception('Ошибка сервера');
        }
      }
    }
    throw Exception('Не зивестная ошибка');
  }

  @override
  Future<Table> updateNomenclature({
    required Table table,
    required String id,
    required String name,
    required String measurementUnits,
    String? description,
    String? code
  }) async {

    final String? token = await getToken();

    if(token == null){
      throw Exception('AuthStatus is not Authorized');
    }

    final nomenclatureDto = NomenclatureDto(
        id: id,
        name: name,
        measurementUnits: measurementUnits,
        description: description,
        code: code
    );

    try{
      final response = await  _apiService.itemService.updateItem(
          id,
          nomenclatureDto.toJson(),
          token
      );

      for(int i = 0; i < table.listNomenclature.length; i++){
        if(table.listNomenclature[i].id == id){
          table.listNomenclature[i] = response.toNomenclature();
        }
      }

      return table;
    }
    on DioException catch(error){
      if(error.response != null){
        if(error.response!.statusCode == 403){
          throw Exception('Нет доступа');
        } else if(error.response!.statusCode == 401){
          throw Exception('Вы не авторизованы');
        } else if(error.response!.statusCode == 500){
          throw Exception('Ошибка сервера');
        }
      }
    }
    throw Exception('Не зивестная ошибка');
  }

  Future<String?> getToken() async {
    const FlutterSecureStorage storage = FlutterSecureStorage();

    final String? token = await storage.read(key: 'token');

    return token;
  }
}