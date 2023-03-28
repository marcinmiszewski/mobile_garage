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
                padding: const EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (final document in documents) ...[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(document['liters'].toString()),
                              Text(document['price'].toString()),
                              Text(document['total'].toString()),
                              Text(document['mileage'].toString()),
                            ],
                          ),
                        ],
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
