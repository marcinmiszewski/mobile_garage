import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_garage/app/cubit/root_cubit.dart';
import 'package:mobile_garage/app/features/home/home_page.dart';
import 'package:mobile_garage/app/features/login/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatelessWidget {
  const RootPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RootCubit()..start(),
      child: BlocBuilder<RootCubit, RootState>(
        builder: (context, state) {
          if (state.errorMessage.isNotEmpty) {
            return Scaffold(
                body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'Coś poszło nie tak:${state.errorMessage}',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ));
          }

          if (state.isLoading == true) {
            return const Scaffold(
              body: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ]),
            );
          }

          final user = state.user;
          if (user == null) {
            return LoginPage();
          }
          return HomePage(user: user);
        },
      ),
    );
  }
}
