import 'package:flutter/material.dart';
import 'package:mobile_garage/app/home/add_cost/add_exploatation_cost/add_exploatation_cost_page_content.dart';
import 'package:mobile_garage/app/home/add_cost/add_insurance_cost/add_insurance_cost_page_content.dart';
import 'package:mobile_garage/app/home/add_cost/add_refueling_cost/add_refueling_cost_page_content.dart';
import 'package:mobile_garage/app/home/add_cost/add_repair_cost/add_repair_cost_page_content.dart';

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
