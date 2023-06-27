import 'package:baymax/pages/darkhomepage.dart';
import 'package:baymax/pages/homepage.dart';
import 'package:baymax/pages/login.dart';
import 'package:baymax/pages/loginpage.dart';
import 'package:baymax/screens/gifscreen.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  // initialize the cameras when the app starts
  WidgetsFlutterBinding.ensureInitialized();
  // cameras = await availableCameras();
  // running the app
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData.dark(),
  ));
  WidgetsFlutterBinding.ensureInitialized();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
