import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'costs_state.dart';

class CostsCubit extends Cubit<CostsState> {
  CostsCubit() : super(CostsState());
}
