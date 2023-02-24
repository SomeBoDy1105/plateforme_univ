import 'package:flutter/material.dart';

class EmailPage extends StatefulWidget {
  const EmailPage({super.key});

  @override
  State<EmailPage> createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {
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
                  'Email',
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
        child: Text('email'),
      ),
    );
  }
}
