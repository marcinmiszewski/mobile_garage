import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddRefuelingPageContent extends StatefulWidget {
  const AddRefuelingPageContent({
    super.key,
  });

  @override
  State<AddRefuelingPageContent> createState() =>
      _AddRefuelingPageContentState();
}

var newLiters = '';
var newMileage = '';
var newPrice = '';
var newTotal = '';

class _AddRefuelingPageContentState extends State<AddRefuelingPageContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tankowanie',
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://miro.medium.com/v2/resize:fit:720/0*TjYAG638b0mvLPXA',
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
                      hintText: 'Litry',
                    ),
                    onChanged: (newValue) {
                      setState(() {
                        newLiters = newValue;
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
                      hintText: 'Cena za litr',
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
                      hintText: 'Kwota tankowania',
                    ),
                    onChanged: (newValue) {
                      setState(() {
                        newTotal = newValue;
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
                      hintText: 'Przebieg',
                    ),
                    onChanged: (newValue) {
                      setState(() {
                        newMileage = newValue;
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: newLiters.isEmpty ||
                            newPrice.isEmpty ||
                            newTotal.isEmpty ||
                            newMileage.isEmpty
                        ? null
                        : () {
                            FirebaseFirestore.instance
                                .collection('refueling')
                                .add({
                              'liters': newLiters,
                              'mileage': newMileage,
                              'price': newPrice,
                              'total': newTotal,
                            });
                          },
                    child: const Text('Dodaj Tankowanie'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
