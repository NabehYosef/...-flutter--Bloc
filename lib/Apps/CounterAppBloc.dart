import 'package:bloc_testapp/Bloc/counter_bloc.dart';
import 'package:bloc_testapp/Bloc/counter_event.dart';
import 'package:bloc_testapp/Bloc/counter_statestate.dart';
import 'package:bloc_testapp/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterAppBloc
    extends StatefulWidget {
  const CounterAppBloc({super.key});

  @override
  State<CounterAppBloc> createState() =>
      _CounterAppBlocState();
}

class _CounterAppBlocState
    extends State<CounterAppBloc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          "CounterApp With Bloc",
        ),
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
                        CounterBloc
                      >()
                      .add(
                        IncrementEvent(),
                      );
                },
                icon: Icons.add,
              ),

              BlocBuilder<
                CounterBloc,
                CounterStateState
              >(
                builder: (context, state) {
                  return Text(
                    '${state.counter}',
                    style:
                        const TextStyle(
                          fontSize: 24,
                        ),
                  );
                },
              ),

              ButtonCounter(
                onPressed: () {
                  context
                      .read<
                        CounterBloc
                      >()
                      .add(
                        DecrementEvent(),
                      );
                },
                icon: Icons.remove,
              ),
            ],
          ),

          const SizedBox(height: 24),

          MaterialButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: const Text(
              "Show Value Counter A",
            ),
            onPressed: () {
              // إذا تريد إظهار قيمة الـ counter:
              final counter = context
                  .read<CounterBloc>()
                  .state
                  .counter;
              debugPrint(
                'Counter = $counter',
              );
            },
          ),
        ],
      ),
    );
  }
}
