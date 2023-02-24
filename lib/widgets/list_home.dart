// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ListHomePage extends StatelessWidget {
  final String titles;
  final String content;
  final String author;

  ListHomePage(
      {super.key,
      required this.titles,
      required this.content,
      required this.author});

  final data = DateTime.now().toString();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(bottom: 20),
      width: double.infinity,
      color: Colors.black,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        // width: double.infinity,
        // height: double.infinity,
        child: Column(
          children: [
            Text(
              titles,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              height: 2,
              child: Divider(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              content,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  overflow: TextOverflow.clip,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
                height: 2,
                child: Divider(
                  color: Colors.black,
                )),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    const Text(
                      'Date:',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      data.substring(0, 10),
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'By:',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      author,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
