import 'dart:convert';

import 'package:bloc_testapp/cubit/post_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class PostCubit
    extends Cubit<PostState> {
  PostCubit() : super(PostLoading());
  Future fechPosts() async {
    emit(PostLoading());
    try {
      final response = await http.get(
        Uri.parse(
          "https://jsonplaceholder.typicode.com/posts",
        ),
      );
      if (response.statusCode == 200) {
        final List posts = json.decode(
          response.body,
        );
        emit(PostLoaded(posts));
      }
    } catch (e) {
      emit(
        PostError("ERROR Try Agin $e"),
      );
    }
  }
}
