import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'costs_state.dart';

class CostsCubit extends Cubit<CostsState> {
  CostsCubit()
      : super(const CostsState(
          documents: [],
          errorMessage: '',
          isLoading: false,
        ));
}
