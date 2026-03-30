import 'package:bloc_testapp/Bloc/counter_event.dart';
import 'package:bloc_testapp/Bloc/counter_statestate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc
    extends
        Bloc<
          CounterEvent,
          CounterStateState
        > {
  CounterBloc()
    : super(CounterIntialState(0)) {
    on<IncrementEvent>((event, emit) {
      emit(
        IncrementState(
          state.counter + 1,
        ),
      );
    });
    on<DecrementEvent>((event, emit) {
      emit(
        DecrementState(
          state.counter - 1,
        ),
      );
    });
  }
}
