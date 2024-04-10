import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/internal/bloc/auth/auth_bloc.dart';
import 'package:test/presentation/constants.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {

  String login = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    const Widget verticalOffset = SizedBox(
      height: 10,
    );
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20,
                child: BlocBuilder<AuthBloc, AuthState>(
                  builder: (BuildContext context, AuthState state) {
                    String text = '';
                    state.mapOrNull(
                        authorized: (_) => text = 'Удалось войти',
                        failure: (_) => text = 'Не удалось войти'
                    );
                    return Text(
                      text,
                      style: Theme.of(context).textTheme.titleSmall,
                    );
                  },
                ),
              ),
              verticalOffset,
              TextField(
                onChanged: (String value) {
                  login = value;
                  print(value);
                  print(login);
                },
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                      RegExp(r'[a-zA-Zа-яА-Я0-9.@-]'))
                ],
                style: Theme.of(context).textTheme.titleMedium,
                decoration: InputDecoration(
                  hoverColor: Colors.orange,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  hintText: 'login',
                  hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: AppColors.textHintColor
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                  constraints: const BoxConstraints(maxWidth: 300),
                  contentPadding: const EdgeInsets.only(bottom: -10),
                  border: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
              ),
              verticalOffset,
              TextField(
                onChanged: (String value) {
                  password = value;
                },
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                      RegExp(r'[a-zA-Zа-яА-Я0-9.@-]'))
                ],
                style: Theme.of(context).textTheme.titleMedium,
                decoration: InputDecoration(
                  hoverColor: Colors.orange,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  hintText: 'password',
                  hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: AppColors.textHintColor
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                  constraints: const BoxConstraints(maxWidth: 300),
                  contentPadding: const EdgeInsets.only(bottom: -10),
                  border: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () => context.read<AuthBloc>()
                    .add(AuthEvent.auth(login: login, password: password)),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 30),
                  decoration: BoxDecoration(
                    color: AppColors.buttonColor2,
                    boxShadow: boxShadow,
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: Text('Войти',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: AppColors.additionalTextColor
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
