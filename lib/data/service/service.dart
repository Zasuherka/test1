import 'package:dio/dio.dart';
import 'package:test/data/service/auth_service.dart';
import 'package:test/data/service/item_service.dart';

class ApiService{
  static final Dio _dio = Dio();
  static const String _baseUrl = 'https://hcateringback-dev.unitbeandev.com/api';

  static final ApiService _apiService = ApiService._internal();

  factory ApiService(){
    return _apiService;
  }

  ApiService._internal();

  final AuthService authService = AuthService(_dio, baseUrl: _baseUrl);
  final ItemService itemService = ItemService(_dio, baseUrl: _baseUrl);
}