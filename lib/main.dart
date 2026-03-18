import 'package:flutter/material.dart';
import 'package:smartbiz_app/core/theme/app_theme.dart';
import 'package:smartbiz_app/features/auth/presentation/demo_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      home: DemoScreen()
    );
  }
}