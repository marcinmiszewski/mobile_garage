part of 'costs_cubit.dart';

@immutable
class CostsState {
  final List<QueryDocumentSnapshot<Map<String, dynamic>>> documents;
  final bool isLoading;
  final String errorMessage;

  const CostsState({
    required this.documents,
    required this.isLoading,
    required this.errorMessage,
  });
}
