import 'package:flutter/material.dart';

class AddRefuelingPageContent extends StatefulWidget {
  const AddRefuelingPageContent({
    super.key,
  });

  @override
  State<AddRefuelingPageContent> createState() =>
      _AddRefuelingPageContentState();
}

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
            image: AssetImage('images/refueling.jpg'),
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
                  child: const TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'Litry',
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
                  padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
                  margin: const EdgeInsets.all(3),
                  child: const TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'Cena za litr',
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
                  padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
                  margin: const EdgeInsets.all(3),
                  child: const TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'Kwota tankowania',
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
                  padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
                  margin: const EdgeInsets.all(3),
                  child: const TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'Przebieg',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {}, child: const Text('Dodaj Tankowanie'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
