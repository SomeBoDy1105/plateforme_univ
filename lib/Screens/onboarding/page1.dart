import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        color: Colors.grey[300],

        child: Stack(

          children: 
            [ Image.asset('BG1.jpg',fit: BoxFit.cover,),
              Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
                const Text(
                  'Plateforme Univ Djilali Bounaama',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.network(
                  'http://plateforme.univ-km.dz/images/udbkm.png',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Welcome to the University Djilali Bounaama's platforme",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )),
          ],
        ));
  }
}
