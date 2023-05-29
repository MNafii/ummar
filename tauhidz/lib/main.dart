import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:tauhidz/app/modules/awalan/awalan.dart';
import 'package:tauhidz/app/modules/koneksi2/koneksi2.dart';
import 'package:tauhidz/app/modules/login/login.dart';
import 'package:tauhidz/app/modules/profilortu/profilortu.dart';
import 'package:tauhidz/app/modules/tbpembayaran/tbpembayaran.dart';
=======
import 'package:tauhidz/app/modules/introductionpage/awalan/awalan.dart';
import 'package:tauhidz/app/widgets/custom_bottom_navigation_bar.dart';

>>>>>>> ac0aba2fd398f0e4407754a50408bb0152a2b9d1

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
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          ),
      home: Awalan(),
    );
  }
}
