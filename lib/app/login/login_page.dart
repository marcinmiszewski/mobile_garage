import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  LoginPage({
    super.key,
  });

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Center(
          child: Text(
            'MOBILE GARAGE',
            style: GoogleFonts.tourney(
              textStyle: const TextStyle(
                letterSpacing: 3,
                fontSize: 33,
                color: Colors.amber,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/garage.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Zaloguj się',
                style: GoogleFonts.tourney(
                  color: Colors.amber,
                  fontSize: 25,
                  letterSpacing: 3,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                padding: const EdgeInsets.only(left: 10, top: 13, bottom: 13),
                margin: const EdgeInsets.all(10),
                child: TextField(
                  controller: emailController,
                  decoration: const InputDecoration.collapsed(
                    hintText: 'E-mail',
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                padding: const EdgeInsets.only(left: 10, top: 13, bottom: 13),
                margin: const EdgeInsets.all(10),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration.collapsed(
                    hintText: 'Password',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () async {
                  try {
                    await FirebaseAuth.instance.signInWithEmailAndPassword(
                      email: emailController.text,
                      password: passwordController.text,
                    );
                  } catch (error) {
                    print(error);
                  }
                },
                child: const Text('Zaloguj się'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
