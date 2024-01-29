import 'package:flutter/material.dart';

final DarkTheme = ThemeData(
    scaffoldBackgroundColor: Color.fromARGB(255, 31, 31, 31),
    primarySwatch: Colors.yellow,
    appBarTheme: const AppBarTheme(
        backgroundColor: Color.fromARGB(255, 31, 31, 31),
        titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700) // Yellow color
        ),
    dividerColor: Colors.white24,
    listTileTheme: const ListTileThemeData(iconColor: Colors.white),
    textTheme: TextTheme(
      bodyMedium: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      ),
      labelSmall: TextStyle(
        color: Colors.white.withOpacity(0.6),
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),
    ));
