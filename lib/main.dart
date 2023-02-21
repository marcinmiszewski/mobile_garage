import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
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
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  padding: const EdgeInsets.only(left: 10),
                  margin: const EdgeInsets.all(10),
                  child: const TextField(
                    decoration: InputDecoration(hintText: 'E-mail'),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  padding: const EdgeInsets.only(left: 10),
                  margin: const EdgeInsets.all(10),
                  child: const TextField(
                    decoration: InputDecoration(hintText: 'Password'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
