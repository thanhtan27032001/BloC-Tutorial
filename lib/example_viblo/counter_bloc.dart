import 'package:bloc_tutorial/example_viblo/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int count = 0;
  CounterBloc(super.initialState) {
    on<CounterIncrease>((event, emit) async {
      emit(CountLoading());
      await Future.delayed(const Duration(seconds: 1));
      count++;
      emit(CountSuccess());
    },);
  }
}