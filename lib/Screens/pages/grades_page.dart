import 'package:flutter/material.dart';

class GradesPage extends StatefulWidget {
  const GradesPage({super.key});

  @override
  State<GradesPage> createState() => _GradesPageState();
}

class _GradesPageState extends State<GradesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  'Grades',
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
        child: Text('Grades'),
      ),
    );
  }
}
