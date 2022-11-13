import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

//0verification pages
import 'package:krishicare/features/auth/verify.dart';
import 'package:krishicare/features/auth/phone.dart';

//home pages
import 'package:krishicare/features/nav_pages/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'phone',
    routes: {
      'phone': (context) => const Myphone(),
      'otp': (context) => const MyVerify(),
      'home': (context) => const Myhome()
    },
  ));
}
