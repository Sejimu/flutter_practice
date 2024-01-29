import 'package:flutter/material.dart';
import 'package:task3crypto_currency/router/router.dart';
import 'package:task3crypto_currency/theme/theme.dart';

class CryptoCurrenciesListApp extends StatelessWidget {
  const CryptoCurrenciesListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: DarkTheme,
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
