import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
sealed class CounterStateState
    extends Equatable {
  int counter = 0;
  CounterStateState(this.counter);

  @override
  List<Object?> get props => [counter];
}

// ignore: must_be_immutable
class CounterIntialState
    extends CounterStateState {
  CounterIntialState(super.counter);
}

// ignore: must_be_immutable
class IncrementState
    extends CounterStateState {
  IncrementState(super.counter);
}

// ignore: must_be_immutable
class DecrementState
    extends CounterStateState {
  DecrementState(super.counter);
}
