import 'package:flutter/material.dart';
import 'package:transporte_carga_flutter/src/presentation/pages/authentication/login/LoginPage.dart';
import 'package:transporte_carga_flutter/src/presentation/pages/authentication/recover_account/RecoverAccountPage.dart';
import 'package:transporte_carga_flutter/src/presentation/pages/authentication/register/RegisterPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: 'login',
      routes: {
        'login': (BuildContext context) => LoginPage(),
        'register': (BuildContext context) => RegisterPage(),
        'recover': (BuildContext context) => RecoverAccountPage(),
      },
    );
  }
}