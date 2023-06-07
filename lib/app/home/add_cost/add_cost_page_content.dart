import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_garage/app/home/add_cost/add_exploatation_cost/add_exploatation_cost_page_content.dart';
import 'package:mobile_garage/app/home/add_cost/add_insurance_cost/add_insurance_cost_page_content.dart';
import 'package:mobile_garage/app/home/add_cost/add_refueling_cost/add_refueling_cost_page_content.dart';
import 'package:mobile_garage/app/home/add_cost/add_repair_cost/add_repair_cost_page_content.dart';

class AddCostPageContent extends StatelessWidget {
  const AddCostPageContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Dodaj koszt'), centerTitle: true),
        body: Column(
          children: [
            SizedBox(
              height: 235,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  AddButton(
                    item: const AddButtonItem(
                        urlImage:
                            'https://miro.medium.com/v2/resize:fit:720/0*TjYAG638b0mvLPXA',
                        title: 'ddsa'),
                    inkWell: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const AddRefuelingPageContent(),
                          ),
                        );
                      },
                    ),
                  ),
                  AddButton(
                    item: const AddButtonItem(
                        urlImage:
                            'https://cdn.pixabay.com/photo/2014/06/04/16/36/man-362150_960_720.jpg',
                        title: ''),
                    inkWell: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const AddRepairPageContent(),
                          ),
                        );
                      },
                    ),
                  ),
                  AddButton(
                    item: const AddButtonItem(urlImage: '', title: ''),
                    inkWell: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const AddExploatationPageContent(),
                          ),
                        );
                      },
                    ),
                  ),
                  AddButton(
                    item: const AddButtonItem(urlImage: '', title: ''),
                    inkWell: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const AddInsurancePageContent(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
}

class AddButton extends StatefulWidget {
  const AddButton({
    required this.inkWell,
    required this.item,
    super.key,
  });

  final InkWell inkWell;
  final AddButtonItem item;

  @override
  State<AddButton> createState() => _AddButtonState();
}

class AddButtonItem {
  final String urlImage;
  final String title;

  const AddButtonItem({
    required this.urlImage,
    required this.title,
  });
}

class _AddButtonState extends State<AddButton> {
  // List<AddButtonItem> items = [
  //   const AddButtonItem(
  //       urlImage:
  //           'https://cdn.pixabay.com/photo/2014/06/04/16/36/man-362150_960_720.jpg',
  //       title: 'Tankowanie'),
  //   const AddButtonItem(
  //       urlImage:
  //           'https://miro.medium.com/v2/resize:fit:720/0*TjYAG638b0mvLPXA',
  //       title: 'Naprawy'),
  //   const AddButtonItem(
  //       urlImage:
  //           'https://cdn.pixabay.com/photo/2017/08/22/22/24/oil-2670720_960_720.jpg',
  //       title: 'Naprawy'),
  //   const AddButtonItem(
  //       urlImage:
  //           'https://cdn.pixabay.com/photo/2015/02/03/23/41/paper-623167_960_720.jpg',
  //       title: 'Naprawy'),
  // ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24.0,
        top: 20,
        right: 12,
        bottom: 20,
      ),
      child: SizedBox(
        width: 150,
        height: 200,
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.6),
                      spreadRadius: 3,
                      blurRadius: 15,
                      offset: const Offset(7, 7),
                    ),
                  ],
                ),
                child: AspectRatio(
                  aspectRatio: 4 / 3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Material(
                      child: Ink.image(
                        image: NetworkImage(
                          widget.item.urlImage,
                        ),
                        fit: BoxFit.cover,
                        child: (widget.inkWell),
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
              widget.item.title,
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
    );
  }
}
