import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
  });

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
                fontSize: 40,
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
                'Jesteś niezalogowany',
                style: GoogleFonts.tourney(
                  color: Colors.amber,
                  fontSize: 20,
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
                child: const TextField(
                  decoration: InputDecoration.collapsed(
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
                child: const TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'Password',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}