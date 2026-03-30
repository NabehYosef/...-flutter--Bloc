import 'package:bloc_testapp/widget/text.dart';
import 'package:bloc_testapp/cubit/counter_cubit.dart';
import 'package:bloc_testapp/cubit/counter_stateone.dart';
import 'package:bloc_testapp/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExBlocBuilder
    extends StatefulWidget {
  const ExBlocBuilder({super.key});

  @override
  State<ExBlocBuilder> createState() =>
      _ExBlocState();
}

class _ExBlocState
    extends State<ExBlocBuilder> {
  int Counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc"),
      ),

      body: Column(
        mainAxisAlignment:
            MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment:
                MainAxisAlignment
                    .center,
            children: [
              ButtonCounter(
                onPressed: () {
                  context
                      .read<
                        CounterCubit
                      >()
                      .IncrementA();
                },
                icon: Icons.add,
              ),
              BlocBuilder<
                CounterCubit,
                CounterState
              >(
                builder:
                    (context, state) {
                      return TextCounter(
                        counter: state
                            .counterA,
                      );
                    },
              ),
              ButtonCounter(
                onPressed: () {
                  context
                      .read<
                        CounterCubit
                      >()
                      .DecrementA();
                },
                icon: Icons.remove,
              ),
            ],
          ),
          MaterialButton(
            child: Text(
              "Show Value Counter A",
            ),
            onPressed: () {
              print(Counter);
            },
          ),
          Row(
            mainAxisAlignment:
                MainAxisAlignment
                    .center,
            children: [
              ButtonCounter(
                onPressed: () {
                  context
                      .read<
                        CounterCubit
                      >()
                      .IncrementB();
                },
                icon: Icons.add,
              ),
              BlocBuilder<
                CounterCubit,
                CounterState
              >(
                builder:
                    (context, state) {
                      return TextCounter(
                        counter: state
                            .counterB,
                      );
                    },
              ),
              ButtonCounter(
                onPressed: () {
                  context
                      .read<
                        CounterCubit
                      >()
                      .DecrementB();
                },
                icon: Icons.remove,
              ),
            ],
          ),
          MaterialButton(
            child: Text(
              "Show Value Counter B",
            ),
            onPressed: () {},
          ),
          Row(
            mainAxisAlignment:
                MainAxisAlignment
                    .center,
            children: [
              ButtonCounter(
                onPressed: () {
                  context
                      .read<
                        CounterCubit
                      >()
                      .IncrementC();
                },
                icon: Icons.add,
              ),
              BlocBuilder<
                CounterCubit,
                CounterState
              >(
                builder:
                    (context, state) {
                      return TextCounter(
                        counter: state
                            .counterC,
                      );
                    },
              ),
              ButtonCounter(
                onPressed: () {
                  context
                      .read<
                        CounterCubit
                      >()
                      .DecrementC();
                },
                icon: Icons.remove,
              ),
            ],
          ),
          MaterialButton(
            child: Text(
              "Show Value Counter C",
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
