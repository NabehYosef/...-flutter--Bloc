import 'package:bloc_testapp/Apps/NoteApp.dart';
import 'package:bloc_testapp/cubit/counter_cubit.dart';
import 'package:bloc_testapp/cubit/post_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner:
            false,

        home: NoteApp(),
      ),
    );
  }
}
