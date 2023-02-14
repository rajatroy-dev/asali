import 'package:asali/models/category.model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(CategoryInitial());

  var categories = <Category>[
    Category(
      id: 1,
      name: "Investments",
      description: "description",
      value: 0.0,
    ),
    Category(
      id: 2,
      name: "Saved In Account",
      description: "description",
      value: 0.0,
    ),
    Category(
      id: 3,
      name: "Lend",
      description: "description",
      value: 0.0,
    ),
  ];

  void getAllCategories() {
    emit(CategoryLoading());

    emit(CategorySuccess(categories));
  }
}
