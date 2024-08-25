import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/cubit/counter_cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(InitialCounterState());

  static CounterCubit get(context) => BlocProvider.of(context);

  int counter = 0;

  void addone() {
    counter++;
    emit(IncreaseCounterState());
  }
}
