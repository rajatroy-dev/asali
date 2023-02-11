import 'package:asali/enum/wealth.enum.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  void getTotalWealth() {
    emit(HomeLoading());

    var wealth = {
      Wealth.assets: 0.0,
      Wealth.liabilities: 0.0,
      Wealth.total: 0.0,
    };

    emit(HomeSuccess(wealth));
  }
}
