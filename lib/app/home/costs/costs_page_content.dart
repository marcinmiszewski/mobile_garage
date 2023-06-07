import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_garage/app/home/costs/cubit/costs_cubit.dart';

class CostsPageContent extends StatelessWidget {
  const CostsPageContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CostsCubit()..start(),
      child: BlocBuilder<CostsCubit, CostsState>(
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

          return ListView(
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
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                          color: Colors.blueGrey,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // const CircleAvatar(
                              //   backgroundImage: NetworkImage(
                              //     'https://miro.medium.com/v2/resize:fit:720/0*TjYAG638b0mvLPXA',
                              //   ),
                              //   radius: 30,
                              // ),
                              // const SizedBox(width: 10),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                          Text(document['liters'].toString()),
                                          Text(document['price'].toString()),
                                          Text(document['total'].toString()),
                                          Text(document['mileage'].toString()),
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
          );
        },
      ),
    );
  }
}
