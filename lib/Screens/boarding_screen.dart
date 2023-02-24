import 'package:flutter/material.dart';
import 'package:plateforme_univ/Screens/onboarding/page1.dart';
import 'package:plateforme_univ/Screens/onboarding/page2.dart';
import 'package:plateforme_univ/Screens/onboarding/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardScreen extends StatefulWidget {
  const BoardScreen({super.key});

  @override
  State<BoardScreen> createState() => _BoardScreenState();
}

class _BoardScreenState extends State<BoardScreen> {
  final _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              if (index == 2) {
                setState(() {
                  onLastPage = true;
                });
              } else {
                setState(() {
                  onLastPage = false;
                });
              }
            },
            children: const [
              Page1(),
              Page2(),
              Page3(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //skip button
                MaterialButton(
                  padding: const EdgeInsets.all(8),
                  color: Colors.black54,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/loginScreen');
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: const WormEffect(
                    activeDotColor: Colors.black54,
                    dotColor: Colors.grey,
                  ),
                ),
                //next or done
                onLastPage
                    ? MaterialButton(
                        padding: const EdgeInsets.all(8),
                        color: Colors.black54,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, '/loginScreen');
                        },
                        child: const Text(
                          'Done',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      )
                    : MaterialButton(
                        padding: const EdgeInsets.all(8),
                        color: Colors.black54,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        onPressed: () {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeIn,
                          );
                        },
                        child: const Text(
                          'Next',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
