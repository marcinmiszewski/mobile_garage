import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.user,
  });

  final User user;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        if (currentIndex == 0) {
          return MyAccountPageContent(email: widget.user.email);
        }
        if (currentIndex == 1) {
          return const AddCostPageContent();
        }
        return const CostsPageContent();
      }),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Moje konto',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Dodaj koszt',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.currency_exchange),
            label: 'Koszty',
          ),
        ],
      ),
    );
  }
}

class CostsPageContent extends StatelessWidget {
  const CostsPageContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: FirebaseFirestore.instance.collection('refueling').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(child: Text('Coś poszło nie tak'));
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: Text('Ładowanie'));
          }

          final documents = snapshot.data!.docs;

          return ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Litry'),
                        Text('Cena za litr'),
                        Text('Zapłacono')
                      ],
                    ),
                    for (final document in documents) ...[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(document['liters'].toString()),
                          Text(document['price'].toString()),
                          Text(document['total'].toString()),
                        ],
                      ),
                      Column(
                        children: const [Text('L'), Text('PLN'), Text('PLN')],
                      ),
                    ]
                  ],
                ),
              ),
            ],
          );
        });
  }
}

class AddCostPageContent extends StatelessWidget {
  const AddCostPageContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Dodaj koszt',
      ),
    );
  }
}

class MyAccountPageContent extends StatelessWidget {
  const MyAccountPageContent({
    super.key,
    required this.email,
  });

  final String? email;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Jesteś zalogowany jako $email',
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            child: const Text('Wyloguj'),
          ),
        ],
      ),
    );
  }
}
