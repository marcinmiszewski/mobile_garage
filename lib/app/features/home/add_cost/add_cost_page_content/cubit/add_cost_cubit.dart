import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
part 'add_cost_state.dart';

class AddCostPageContentCubit extends Cubit<AddCostPageContentState> {
  AddCostPageContentCubit()
      : super(const AddCostPageContentState(
          documents: [],
          errorMessage: '',
          isLoading: false,
        ));

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    emit(
      const AddCostPageContentState(
        documents: [],
        errorMessage: '',
        isLoading: true,
      ),
    );

    _streamSubscription = FirebaseFirestore.instance
        .collection('refueling')
        .snapshots()
        .listen((data) {
      emit(
        AddCostPageContentState(
          documents: data.docs,
          errorMessage: '',
          isLoading: false,
        ),
      );
    })
      ..onError((error) {
        emit(
          AddCostPageContentState(
            documents: const [],
            errorMessage: error.toString(),
            isLoading: false,
          ),
        );
      });
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
