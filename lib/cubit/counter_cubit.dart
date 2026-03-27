import 'package:bloc_testapp/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit
    extends Cubit<CounterState> {
  CounterCubit()
    : super(CounterState(0));

  Increment() {
    emit(
      CounterState(state.counter + 1),
    );
  }

  Decrement() {
    emit(
      CounterState(state.counter - 1),
    );
  }
}
