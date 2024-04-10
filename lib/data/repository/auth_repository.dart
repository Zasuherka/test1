import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:test/data/dto/user_auth_dto/user_auth_dto.dart';
import 'package:test/data/service/service.dart';
import 'package:test/domain/enums/AuthStatus.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:test/domain/repository/auth_repository.dart';

class AuthRepository implements IAuthRepository{

  static final StreamController<String?> controller = StreamController<String?>.broadcast();

  static final AuthRepository _authRepository = AuthRepository._internal();

  factory AuthRepository(){
    return _authRepository;
  }

  AuthRepository._internal();

  final ApiService _apiService = ApiService();

  ///Думал использовать Secure Storage, чтобы сохранять авторизованность пользователя
  ///Но в Тестовом задании не нашёл метода для проверки валидность токена, поэтому в приложении
  ///при каждом включении логинимся


  @override
  Future<AuthStatus> logOut() async {
    const FlutterSecureStorage storage = FlutterSecureStorage();
    if(await storage.containsKey(key: 'token')){
      await storage.delete(key: 'token');
    }
    return AuthStatus.notAuthorized;
  }

  @override
  Future<AuthStatus> authUser(String login, String password) async {
    final dto = UserAuthDto(login: login, password: password);
    print(login);
    try{
      final String response = await _apiService.authService.login(dto.toJson());
      final tokenMap = json.decode(response) as Map<String, dynamic>;
      saveToken(tokenMap['access_token']);
    }
    on DioException catch(e){
      return AuthStatus.notAuthorized;
    }
    return AuthStatus.authorized;
  }

  Future<void> saveToken(String token) async {
    const FlutterSecureStorage storage = FlutterSecureStorage();
    await storage.write(key: 'token', value: token);
  }
}