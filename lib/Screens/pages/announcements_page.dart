import 'package:flutter/material.dart';
import 'package:plateforme_univ/widgets/list_home.dart';

class AnnouncementsPage extends StatefulWidget {
  const AnnouncementsPage({super.key});

  @override
  State<AnnouncementsPage> createState() => _AnnouncementsPageState();
}

class _AnnouncementsPageState extends State<AnnouncementsPage> {
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
                  'Announcements',
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
      body: Center(
        child: Expanded(
          child: ListView(
            children: [
              const SizedBox(
                height: 10,
              ),
              ListHomePage(
                titles: 'You Made It!',
                content: 'Take a look at the other pages',
                author: 'Admin',
              ),
              ListHomePage(
                titles: 'The First Page is',
                content: ' your home page',
                author: 'Admin',
              ),
              ListHomePage(
                titles: 'This page is ',
                content:
                    'Announcements page where your can see all the announcements made by your teachers',
                author: 'Admin',
              ),
              ListHomePage(
                titles: 'The next page is ',
                content:
                    'Email page where your can see all your emails sent my your teachers',
                author: 'Admin',
              ),
              ListHomePage(
                titles: 'The next page is ',
                content: 'Grades page where your can see all your grades',
                author: 'Admin',
              ),
              ListHomePage(
                titles: 'Algorithme',
                content:
                    'Solution de Examen du 1er semestre de l\'année universitaire 2022-2023 est disponible',
                author: 'Azzouza',
              ),
              ListHomePage(
                titles: 'Base de données',
                content:
                    'Check your email for the solution of the exam of the 1st semester of the academic year 2022-2023',
                author: 'Hachichi',
              ),
              ListHomePage(
                titles: 'Logique',
                content:
                    'Consultation des notes du 1er semestre de l\'année universitaire 2022-2023 le 20/01/2023 à 10h', 
                author: 'Bahloul',
              ),
              ListHomePage(
                titles: 'Reseaux',
                content:
                    'Les cours sont disponibles sur votre email, veuillez consulter votre email',
                author: 'Hadj Sadouk',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
