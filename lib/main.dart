import 'package:chat_app/pages/chat.dart';
import 'package:chat_app/pages/register.dart';
import 'package:chat_app/pages/signin.dart';
import 'package:chat_app/pages/welcome.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp();
  } catch (e) {
    print("Firebase Initialization Error: $e");
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Message Us',
      theme: ThemeData(),
      initialRoute: 'welcome',
      routes: {
        'welcome': (context) => const WelcomePage(),
        'signin': (context) => const LoginPage(),
        'register': (context) => const RegisterPage(),
        'chat': (context) => const ChatPage(),
      },
    );
  }
}
