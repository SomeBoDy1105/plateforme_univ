import 'package:flutter/material.dart';
import 'package:plateforme_univ/Screens/boarding_screen.dart';
import 'package:plateforme_univ/Screens/home_screen.dart';
import 'package:plateforme_univ/Screens/login_screen.dart';
import 'package:plateforme_univ/Screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MaterialApp(
      initialRoute: '/splashScreen',
      debugShowCheckedModeBanner: false,
      routes: {
        '/splashScreen': (context) => const SplashScreen(),
        '/boardScreen': (context) => const BoardScreen(),
        '/homeScreen': (context) => const HomeScreen(),
        '/loginScreen': (context) => const LoginScreen(),
      },
    ),
  );
}
