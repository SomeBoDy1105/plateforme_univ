import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:plateforme_univ/widgets/my_button.dart';
import 'package:plateforme_univ/widgets/my_textfield.dart';
import 'package:plateforme_univ/widgets/my_tiles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 100),
                //logo
                Image.network(
                  'http://plateforme.univ-km.dz/images/logo_light.png',
                  fit: BoxFit.contain,
                  colorBlendMode: BlendMode.darken,
                ),
                const SizedBox(height: 25),
                //Hello There!
                const Text(
                  'Hello There!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 50),
                //Username
                MyTextField(
                    controller: emailController,
                    hintText: 'Email Here !',
                    obscureText: false),
                const SizedBox(height: 15),
                //Password
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password Here !',
                  obscureText: true,
                ),
                const SizedBox(height: 15),
                //Forgot Password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'Forgot Password ?',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                //Login Button
                MyButton(
                  onTap: signUserIn,
                ),
                // or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey[400],
                          thickness: 0.5,
                        ),
                      ),
                      const SizedBox(height: 50),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Or Continue With',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey[400],
                          thickness: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                //Google
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SquareTile(
                      imagePath:
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/1200px-Google_%22G%22_Logo.svg.png',
                    )
                  ],
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}