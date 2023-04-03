import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_garage/app/home/add_cost/add_exploatation_cost/add_exploatation_cost_page_content.dart';
import 'package:mobile_garage/app/home/add_cost/add_insurance_cost/add_insurance_cost_page_content.dart';
import 'package:mobile_garage/app/home/add_cost/add_refueling_cost/add_refueling_cost_page_content.dart';
import 'package:mobile_garage/app/home/add_cost/add_repair_cost/add_repair_cost_page_content.dart';

class AddCostPageContent extends StatelessWidget {
  const AddCostPageContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Dodaj koszt'), centerTitle: true),
        body: Column(
          children: [
            Container(
              height: 235,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      top: 20,
                      right: 10,
                      bottom: 20,
                    ),
                    child: Container(
                      width: 150,
                      height: 200,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Expanded(
                            child: AspectRatio(
                              aspectRatio: 4 / 3,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Material(
                                  child: Ink.image(
                                    image: const NetworkImage(
                                      'https://miro.medium.com/v2/resize:fit:720/0*TjYAG638b0mvLPXA',
                                    ),
                                    fit: BoxFit.cover,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (_) =>
                                                const AddRefuelingPageContent(),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Tankowanie',
                            style: GoogleFonts.tourney(
                              textStyle: const TextStyle(
                                letterSpacing: 3,
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      top: 20,
                      right: 10,
                      bottom: 20,
                    ),
                    child: Container(
                      width: 150,
                      height: 200,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Expanded(
                            child: AspectRatio(
                              aspectRatio: 4 / 3,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Material(
                                  child: Ink.image(
                                    image: const NetworkImage(
                                      'https://cdn.pixabay.com/photo/2014/06/04/16/36/man-362150_960_720.jpg',
                                    ),
                                    fit: BoxFit.cover,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (_) =>
                                                const AddRepairPageContent(),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Naprawy',
                            style: GoogleFonts.tourney(
                              textStyle: const TextStyle(
                                letterSpacing: 3,
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      top: 20,
                      right: 10,
                      bottom: 20,
                    ),
                    child: Container(
                      width: 150,
                      height: 200,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Expanded(
                            child: AspectRatio(
                              aspectRatio: 4 / 3,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Material(
                                  child: Ink.image(
                                    image: const NetworkImage(
                                      'https://cdn.pixabay.com/photo/2017/08/22/22/24/oil-2670720_960_720.jpg',
                                    ),
                                    fit: BoxFit.cover,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (_) =>
                                                const AddExploatationContent(),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Eksploatacja',
                            style: GoogleFonts.tourney(
                              textStyle: const TextStyle(
                                letterSpacing: 3,
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      top: 20,
                      right: 20,
                      bottom: 20,
                    ),
                    child: Container(
                      width: 150,
                      height: 200,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Expanded(
                            child: AspectRatio(
                              aspectRatio: 4 / 3,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Material(
                                  child: Ink.image(
                                    image: const NetworkImage(
                                      'https://cdn.pixabay.com/photo/2015/02/03/23/41/paper-623167_960_720.jpg',
                                    ),
                                    fit: BoxFit.cover,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (_) =>
                                                const AddInsurancePageContent(),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Dokumenty',
                            style: GoogleFonts.tourney(
                              textStyle: const TextStyle(
                                letterSpacing: 3,
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
