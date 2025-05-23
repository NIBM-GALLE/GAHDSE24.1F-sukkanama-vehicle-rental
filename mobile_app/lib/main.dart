import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:mobile_app/screens/home_screen.dart';
import 'package:mobile_app/theme/theme.dart';
import 'firebase_options.dart'; // Make sure this file exists

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme, // ✅ Using Theme
      home: const HomeScreen(), // ✅ Set Home Screen
    );
  }
}
