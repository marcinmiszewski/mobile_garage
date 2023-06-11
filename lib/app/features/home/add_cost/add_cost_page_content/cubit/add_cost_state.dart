part of 'add_cost_cubit.dart';

@immutable
class AddCostPageContentState {
  final List<QueryDocumentSnapshot<Map<String, dynamic>>> documents;
  final bool isLoading;
  final String errorMessage;

  const AddCostPageContentState({
    required this.documents,
    required this.errorMessage,
    required this.isLoading,
  });
}
