import 'package:flutter/material.dart';
import 'package:mentium_app/Backup_Your_Wallet.dart';
import 'package:mentium_app/Secure_Your_Mentium_Wallet.dart';
import 'package:mentium_app/legacy_notice.dart';
import 'package:mentium_app/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mentium.io',
      // theme: ThemeData(
      //   primarySwatch: Colors.purple,
      // ),
      home: const Login(),
    );
  }
}
