import 'package:flutter/material.dart';
import 'package:mobile_garage/app/home/home_page.dart';

class AddCostPageContent extends StatelessWidget {
  const AddCostPageContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const AddRefuelingPageContent(),
                      ),
                    );
                  },
                  icon: Image.asset(
                    'images/garage.jpg',
                  ),
                  iconSize: 150,
                ),
                const Center(
                  child: Text(
                    'Tankowanie',
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const AddExploatationContent(),
                      ),
                    );
                  },
                  icon: Image.asset(
                    'images/garage.jpg',
                  ),
                  iconSize: 150,
                ),
                const Center(
                  child: Text(
                    'Eksplatacja',
                  ),
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const AddRepairsPageContent(),
                      ),
                    );
                  },
                  icon: Image.asset(
                    'images/garage.jpg',
                  ),
                  iconSize: 150,
                ),
                const Center(
                  child: Text(
                    'Naprawy',
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const AddInsurancePageContent(),
                      ),
                    );
                  },
                  icon: Image.asset(
                    'images/garage.jpg',
                  ),
                  iconSize: 150,
                ),
                const Center(
                  child: Text(
                    'Ubezpieczenie',
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
