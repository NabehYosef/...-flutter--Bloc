import 'package:bloc_testapp/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonRemove extends StatelessWidget {
  const ButtonRemove({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.read<CounterCubit>().Decrement();
      },
      icon: const Icon(Icons.remove, size: 40),
    );
  }
}

class ButtonAdd extends StatelessWidget {
  const ButtonAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.read<CounterCubit>().Increment();
      },
      icon: const Icon(Icons.add, size: 40),
    );
  }
}
