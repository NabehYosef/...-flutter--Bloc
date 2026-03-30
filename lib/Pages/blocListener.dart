import 'package:bloc_testapp/cubit/counter_cubit.dart';
import 'package:bloc_testapp/cubit/counter_stateone.dart';
import 'package:bloc_testapp/widget/button.dart';
import 'package:bloc_testapp/widget/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExBlocListener
    extends StatelessWidget {
  const ExBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BlocConsumer"),
      ),

      body: Column(
        mainAxisAlignment:
            MainAxisAlignment.center,
        children: [
          BlocListener<
            CounterCubit,
            CounterState
          >(
            child: Row(
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
                  builder: (context, state) {
                    print(
                      "***AAAAAAAAAAAAAAAAAAAAAAAAAA***",
                    );
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
            listener: (context, state) {
              if (state.counterA > 5) {
                showAlert(
                  context: context,
                  title: "تنبيه",
                  message:
                      "لقد تجاوزت ال5",
                );
              }
            },
          ),
          Text(
            "Bloc Listener",
            style: TextStyle(
              fontSize: 30,
              fontWeight:
                  FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> showAlert({
  required BuildContext context,
  required String title,
  required String message,
}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible:
        true, // اضغط خارج النافذة للإغلاق
    builder: (context) {
      return AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () =>
                Navigator.of(
                  context,
                ).pop(),
            child: const Text('OK'),
          ),
        ],
      );
    },
  );
}
