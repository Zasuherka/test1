import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/internal/bloc/auth/auth_bloc.dart';
import 'package:test/internal/bloc/item/item_bloc.dart';
import 'package:test/presentation/auth_page/auth_page.dart';
import 'package:test/presentation/constants.dart';
import 'package:test/presentation/home_page/home_page.dart';
import 'package:test/presentation/theme/theme.dart';

void main() {
  runApp(const Test());
}

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    addScreenSize(context);
    return MultiBlocProvider(
        providers: <BlocProvider>[
          BlocProvider<AuthBloc>(
            create: (BuildContext context) => AuthBloc(),
          ),
          BlocProvider<ItemBloc>(
            create: (BuildContext context) => ItemBloc(),
          ),
        ],
        child: MaterialApp(
            theme: createTheme(),
            debugShowCheckedModeBanner: false,
            home: BlocBuilder<AuthBloc, AuthState>(
                buildWhen: (previous, current){
                  bool res = false;
                  current.whenOrNull(
                    authorized: () => res = !res,
                    notAuthorized: () => res = !res,
                  );
                  previous.whenOrNull(
                    authorized: () => res = !res,
                    notAuthorized: () => res = !res,
                  );
                  return res;
                },
                builder: (context, state){
                  Widget widget = const AuthPage();
                  state.whenOrNull(
                    authorized: () => widget = const HomePage()
                  );
                  return widget;
                }
            )
        )
    );


  }
}