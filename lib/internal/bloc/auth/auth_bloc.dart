import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:test/data/repository/auth_repository.dart';
import 'package:test/domain/enums/AuthStatus.dart';
import 'package:test/domain/repository/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {

  final IAuthRepository _authRepository = AuthRepository();

  AuthBloc() : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
          auth: (value) =>
              _auth(
                  value.login,
                  value.password,
                  emit
              ),
          logOut: (value) => _logOut(emit)
      );
    });
  }

  Future<void> _auth(String login, String password, Emitter<AuthState> emitter) async{
    emitter(const AuthState.loading());
    print(login);
    final AuthStatus authStatus = await _authRepository.authUser(login, password);
    switch(authStatus){
      case AuthStatus.authorized:
        emitter(const AuthState.authorized());
      case AuthStatus.notAuthorized:
        emitter(const AuthState.failure());
    }
  }

  Future<void> _logOut(Emitter<AuthState> emitter) async{
    emitter(const AuthState.loading());
    final AuthStatus authStatus = await _authRepository.logOut();
    switch(authStatus){
      case AuthStatus.authorized:
        emitter(const AuthState.authorized());
      case AuthStatus.notAuthorized:
        emitter(const AuthState.notAuthorized());
    }
  }
}
