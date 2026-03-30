import 'package:bloc_testapp/cubit/counter_stateone.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit
    extends Cubit<CounterState> {
  CounterCubit()
    : super(CounterState(0, 0, 0));

  IncrementA() {
    emit(
      IncrementCounter(
        state.counterA + 1,
        state.counterB,
        state.counterC,
      ),
    );
  }

  IncrementB() {
    emit(
      IncrementCounter(
        state.counterA,
        state.counterB + 1,
        state.counterC,
      ),
    );
  }

  IncrementC() {
    emit(
      IncrementCounter(
        state.counterA,
        state.counterB,
        state.counterC + 1,
      ),
    );
  }

  DecrementA() {
    emit(
      DecrementCounter(
        state.counterA - 1,
        state.counterB,
        state.counterC,
      ),
    );
  }

  DecrementB() {
    emit(
      DecrementCounter(
        state.counterA,
        state.counterB - 1,
        state.counterC,
      ),
    );
  }

  DecrementC() {
    emit(
      CounterState(
        state.counterA,
        state.counterB,
        state.counterC - 1,
      ),
    );
  }
}
