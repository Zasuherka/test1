import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'auth_service.g.dart';

@RestApi(baseUrl: '')
abstract class AuthService{
  factory AuthService(Dio dio, {String? baseUrl}) = _AuthService;

  @POST('/auth/login')
  Future<String> login(@Body() Map<String, dynamic> json);

  @GET('/auth')
  Future<String> auth(@Header('Authorization') String token);
}

