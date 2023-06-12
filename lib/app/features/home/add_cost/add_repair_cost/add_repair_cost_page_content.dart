import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class AddRepairPageContent extends StatefulWidget {
  const AddRepairPageContent({
    super.key,
  });

  @override
  State<AddRepairPageContent> createState() => _AddRepairPageContent();
}

var newWhat = '';
var newPrice = '';
var newNext = '';

class _AddRepairPageContent extends State<AddRepairPageContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Naprawy',
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://cdn.pixabay.com/photo/2014/06/04/16/36/man-362150_960_720.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50, bottom: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
                  margin: const EdgeInsets.all(3),
                  child: TextField(
                    decoration: const InputDecoration.collapsed(
                      hintText: 'Co było naprawiane?',
                    ),
                    onChanged: (newValue) {
                      setState(() {
                        newWhat = newValue;
                      });
                    },
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
                  margin: const EdgeInsets.all(3),
                  child: TextField(
                    decoration: const InputDecoration.collapsed(
                      hintText: 'Koszt naprawy',
                    ),
                    onChanged: (newValue) {
                      setState(() {
                        newPrice = newValue;
                      });
                    },
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
                  margin: const EdgeInsets.all(3),
                  child: TextField(
                    decoration: const InputDecoration.collapsed(
                      hintText: 'Następna wymiana przebieg:',
                    ),
                    onChanged: (newValue) {
                      setState(() {
                        newNext = newValue;
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed:
                        newWhat.isEmpty || newPrice.isEmpty || newNext.isEmpty
                            ? null
                            : () {
                                FirebaseFirestore.instance
                                    .collection('repairs')
                                    .add({
                                  'what': newWhat,
                                  'price': newPrice,
                                  'next': newNext,
                                });
                              },
                    child: const Text('Dodaj Naprawę'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}