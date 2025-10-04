import 'package:flutter/material.dart';
import 'package:flutter_application_2/chat/presentation/screens/chat_screen.dart';
import 'package:flutter_application_2/core/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes No App',
      theme: AppTheme().theme(),
      home: const ChatScreen(),
    );
  }
}
