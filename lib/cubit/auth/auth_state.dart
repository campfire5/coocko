// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_cubit.dart';

class RecipeState {
  final bool started;
  final int currentStep;

  /// time when cooking was started.
  final int? startedAt;
  RecipeState({
    this.started = false,
    this.currentStep = 0,
    this.startedAt,
  });

  RecipeState copyWith({
    bool? started,
    int? currentStep,
    int? startedAt,
  }) {
    return RecipeState(
      started: started ?? this.started,
      currentStep: currentStep ?? this.currentStep,
      startedAt: startedAt ?? this.startedAt,
    );
  }
}
