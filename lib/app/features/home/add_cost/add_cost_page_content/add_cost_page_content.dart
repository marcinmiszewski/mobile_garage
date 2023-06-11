import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_garage/app/features/home/add_cost/add_exploatation_cost/add_exploatation_cost_page_content.dart';
import 'package:mobile_garage/app/features/home/add_cost/add_insurance_cost/add_insurance_cost_page_content.dart';
import 'package:mobile_garage/app/features/home/add_cost/add_refueling_cost/add_refueling_cost_page_content.dart';
import 'package:mobile_garage/app/features/home/add_cost/add_repair_cost/add_repair_cost_page_content.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_garage/app/features/home/add_cost/add_cost_page_content/cubit/add_cost_cubit.dart';

class AddCostPageContent extends StatelessWidget {
  const AddCostPageContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddCostPageContentCubit()..start(),
      child: BlocBuilder<AddCostPageContentCubit, AddCostPageContentState>(
        builder: (context, state) {
          if (state.errorMessage.isNotEmpty) {
            return Center(
              child: Text(
                'Coś poszło nie tak:${state.errorMessage}',
              ),
            );
          }

          if (state.isLoading == true) {
            return const Center(child: CircularProgressIndicator());
          }

          final documents = state.documents;

          return Scaffold(
            appBar: AppBar(title: const Text('Dodaj koszt'), centerTitle: true),
            body: Column(
              children: [
                SizedBox(
                  height: 235,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      AddButton(
                        urlImage:
                            'https://miro.medium.com/v2/resize:fit:720/0*TjYAG638b0mvLPXA',
                        title: 'TANKOWANIE',
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
                        urlImage:
                            'https://cdn.pixabay.com/photo/2014/06/04/16/36/man-362150_960_720.jpg',
                        title: 'NAPRAWY',
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
                        urlImage:
                            'https://cdn.pixabay.com/photo/2017/08/22/22/24/oil-2670720_960_720.jpg',
                        title: 'EKSPLOATACJA',
                        inkWell: InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) =>
                                    const AddExploatationPageContent(),
                              ),
                            );
                          },
                        ),
                      ),
                      AddButton(
                        urlImage:
                            'https://cdn.pixabay.com/photo/2015/02/03/23/41/paper-623167_960_720.jpg',
                        title: 'DOKUMENTY',
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
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              for (final document in documents) ...[
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12)),
                                    color: Colors.amber,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.35),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: const Offset(8, 15),
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        // const CircleAvatar(
                                        //   backgroundImage: NetworkImage(
                                        //     'https://miro.medium.com/v2/resize:fit:720/0*TjYAG638b0mvLPXA',
                                        //   ),
                                        //   radius: 30,
                                        // ),
                                        // const SizedBox(width: 10),
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Litry'),
                                            Text('Cena za litr'),
                                            Text('Kwota tankowania'),
                                            Text('Przebieg'),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Text(document['liters']
                                                        .toString()),
                                                    Text(document['price']
                                                        .toString()),
                                                    Text(document['total']
                                                        .toString()),
                                                    Text(document['mileage']
                                                        .toString()),
                                                  ],
                                                ),
                                                const SizedBox(width: 10),
                                                const Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Text('L'),
                                                    Text('PLN/L'),
                                                    Text('PLN'),
                                                    Text('KM'),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ]),
                                ),
                              ],
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class AddButton extends StatefulWidget {
  const AddButton({
    required this.inkWell,
    required this.title,
    required this.urlImage,
    super.key,
  });

  final InkWell inkWell;
  final String urlImage;
  final String title;

  @override
  State<AddButton> createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
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
                          widget.urlImage,
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
            const SizedBox(
              height: 15,
            ),
            Text(
              widget.title,
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
