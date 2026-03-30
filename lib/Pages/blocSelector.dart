import 'package:bloc_testapp/widget/text.dart';
import 'package:bloc_testapp/cubit/counter_cubit.dart';
import 'package:bloc_testapp/cubit/counter_stateone.dart';
import 'package:bloc_testapp/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExBlocSelector
    extends StatefulWidget {
  const ExBlocSelector({super.key});

  @override
  State<ExBlocSelector> createState() =>
      _ExBlocState();
}

class _ExBlocState
    extends State<ExBlocSelector> {
  int Counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BlocSelector"),
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
                  print(
                    "********************A++*****************************",
                  );
                  context
                      .read<
                        CounterCubit
                      >()
                      .IncrementA();
                },
                icon: Icons.add,
              ),
              BlocSelector<
                CounterCubit,
                CounterState,
                int
              >(
                selector: (state) =>
                    state.counterA,
                builder:
                    (
                      context,
                      counterA,
                    ) {
                      return TextCounter(
                        counter:
                            counterA,
                      );
                    },
              ),
              ButtonCounter(
                onPressed: () {
                  print(
                    "********************A--*****************************",
                  );
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
                  print(
                    "********************B++*****************************",
                  );

                  context
                      .read<
                        CounterCubit
                      >()
                      .IncrementB();
                },
                icon: Icons.add,
              ),
              BlocSelector<
                CounterCubit,
                CounterState,
                int
              >(
                selector: (state) =>
                    state.counterB,
                builder:
                    (
                      context,
                      counterB,
                    ) {
                      return TextCounter(
                        counter:
                            counterB,
                      );
                    },
              ),
              ButtonCounter(
                onPressed: () {
                  print(
                    "********************B--*****************************",
                  );

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
                  print(
                    "********************C++*****************************",
                  );
                  context
                      .read<
                        CounterCubit
                      >()
                      .IncrementC();
                },
                icon: Icons.add,
              ),
              BlocSelector<
                CounterCubit,
                CounterState,
                int
              >(
                selector: (state) =>
                    state.counterC,
                builder:
                    (
                      context,
                      counterC,
                    ) {
                      return TextCounter(
                        counter:
                            counterC,
                      );
                    },
              ),
              ButtonCounter(
                onPressed: () {
                  print(
                    "********************C--*****************************",
                  );
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
