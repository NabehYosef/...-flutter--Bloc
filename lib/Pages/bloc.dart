import 'package:bloc_testapp/widget/text.dart';
import 'package:bloc_testapp/cubit/counter_cubit.dart';
import 'package:bloc_testapp/cubit/counter_state.dart';
import 'package:bloc_testapp/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExBloc extends StatefulWidget {
  const ExBloc({super.key});

  @override
  State<ExBloc> createState() =>
      _ExBlocState();
}

class _ExBlocState
    extends State<ExBloc> {
  int Counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment:
            MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment:
                MainAxisAlignment
                    .center,
            children: [
              ButtonAdd(),
              BlocBuilder<
                CounterCubit,
                CounterState
              >(
                builder:
                    (context, state) {
                      return TextCounter(
                        counter: state
                            .counter,
                      );
                    },
              ),
              ButtonRemove(),
            ],
          ),
          MaterialButton(
            child: Text(
              "Show Value Counter",
            ),
            onPressed: () {
              print(Counter);
            },
          ),
        ],
      ),
    );
  }
}
