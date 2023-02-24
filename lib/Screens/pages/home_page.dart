import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.black54,
        leading: IconButton(
          icon: const Icon(Icons.person_sharp),
          iconSize: 30,
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/loginScreen');
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              width: 190,
              child: Center(
                child: Text(
                  'Plateforme Univ-KM',
                ),
              ),
            ),
            Image.network(
              'http://plateforme.univ-km.dz/images/logo_light.png',
              fit: BoxFit.contain,
              scale: 2,
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: const Center(
          child: Text('Home Page',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ))),
    );
  }
}
