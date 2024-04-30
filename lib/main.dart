import 'package:flutter/material.dart';
import 'package:flutter_chat/screens/welcome_screen.dart';
import 'package:flutter_chat/screens/login_screen.dart';
import 'package:flutter_chat/screens/registration_screen.dart';
import 'package:flutter_chat/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyBqye15Fvtz7AWGz3RCNc3k8qTcREBiGqs",
          appId: "1:544849865097:android:50efbc11c49270f3331958",
          messagingSenderId: "544849865097",
          projectId: "flash-chat-c38dc"));
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen()
      },
    );
  }
}
