import 'dart:convert';

import 'package:bloc_testapp/Bloc/post_event.dart';
import 'package:bloc_testapp/cubit/post_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class PostBloc
    extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostLoading()) {
    on<FechPostEvent>((
      event,
      emit,
    ) async {
      emit(PostLoading());
      try {
        final response = await http.get(
          Uri.parse(
            "https://jsonplaceholder.typicode.com/posts",
          ),
        );
        if (response.statusCode ==
            200) {
          final List posts = json
              .decode(response.body);
          emit(PostLoaded(posts));
        }
      } catch (e) {
        emit(
          PostError(
            "ERROR Try Agin $e",
          ),
        );
      }
    });
  }
}
