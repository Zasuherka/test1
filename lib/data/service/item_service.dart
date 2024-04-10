import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:test/data/dto/nomenclature_dto/nomenclature_dto.dart';
part 'item_service.g.dart';

@RestApi(baseUrl: '')
abstract class ItemService {
  factory ItemService(Dio dio, {String? baseUrl}) = _ItemService;

  @GET('/items')
  Future<dynamic> items(
      @Query('page') int page,
      @Query('pageSize') int pageSize,
      @Query('sortBy') String? sortBy,
      @Query('sortOrder') String? sortOrder,
      @Header('Authorization') String token);

  @POST('/items')
  Future<NomenclatureDto> createItem(
      @Body() Map<String, dynamic> json,
      @Header('Authorization') String token);

  @PATCH('/items/{id}')
  Future<NomenclatureDto> updateItem(
      @Path() String id,
      @Body() Map<String, dynamic> json,
      @Header('Authorization') String token);
}