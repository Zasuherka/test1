part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.auth({
    required String login,
    required String password
  }) = _Auth;

  const factory AuthEvent.logOut() = _LogOut;
}
