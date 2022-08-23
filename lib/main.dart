import 'package:flutter/material.dart';
import 'package:hammalmobile/components/home.dart';
import 'package:hammalmobile/components/isAra.dart';
import 'package:hammalmobile/components/isVer.dart';
import 'package:hammalmobile/components/login.dart';
import 'package:hammalmobile/components/profile.dart';
import 'package:hammalmobile/components/register.dart';
import 'package:hammalmobile/components/sifre.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'profile': (_) => profilePage(),
        'login': (_) => LoginPage(),
        'home': (_) => homePage(),
        'register': (_) => registerPage(),
        'sifre': (_) => sifrePage(),
        'isver': (_) => isVerPage(),
        'isara': (_) => isAraPage()
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: homePage(),
    );
  }
}
