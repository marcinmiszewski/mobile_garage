import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
      home: const RootPage(),
    );
  }
}

class RootPage extends StatelessWidget {
  const RootPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          final user = snapshot.data;
          if (user == null) {
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
                        style: GoogleFonts.lobster(
                          color: Colors.amber,
                          fontSize: 20,
                          letterSpacing: 3,
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        padding: const EdgeInsets.only(
                            left: 10, top: 13, bottom: 13),
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
                        padding: const EdgeInsets.only(
                            left: 10, top: 13, bottom: 13),
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
          return Scaffold(
            body: Center(
              child: Text('Jesteś zalogowany jako ${user.email}'),
            ),
          );
        });
  }
}
