import 'package:test/domain/enums/AuthStatus.dart';

abstract class IAuthRepository {

  ///Вход юзреа
  Future<AuthStatus> authUser(String login, String password);

  ///Выход юзреа
  Future<AuthStatus> logOut();
}