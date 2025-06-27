// ignore_for_file: use_build_context_synchronously

import 'package:crypto_app/core/app_theme.dart';
import 'package:crypto_app/providers/app_providers.dart';
import 'package:crypto_app/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_components/flutter_components.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Screen',
      home: MultiProvider(providers: providers, child: SplashScreen()),
      theme: AppTheme.theme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset("assets/images/crypto_logo.png")),
    );
  }
}
