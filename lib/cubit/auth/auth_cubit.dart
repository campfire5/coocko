import 'package:bloc/bloc.dart';

part 'auth_state.dart';

class RecipeCubit extends Cubit<RecipeState> {
  RecipeCubit() : super(RecipeState());
}
