import 'package:bloc_testapp/cubit/post_cubit.dart';
import 'package:bloc_testapp/cubit/post_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteApp extends StatefulWidget {
  const NoteApp({super.key});

  @override
  State<NoteApp> createState() =>
      _NoteAppState();
}

class _NoteAppState
    extends State<NoteApp> {
  //initial state its important to On This Page
  @override
  void initState() {
    super.initState();
    context
        .read<PostCubit>()
        .fechPosts();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("NoteApp"),
      ),
      body: BlocBuilder<PostCubit, PostState>(
        builder: (context, state) {
          if (state is PostLoading) {
            return const Center(
              child:
                  CircularProgressIndicator(),
            );
          } else if (state
              is PostLoaded) {
            return ListView.builder(
              itemCount:
                  state.posts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  subtitle: Text(
                    state
                        .posts[index]['title'],
                  ),
                  title: Text(
                    "${state.posts[index]['id']},",
                  ),
                );
              },
            );
          } else if (state
              is PostError) {
            return InkWell(
              onTap: () {
                context
                    .read<PostCubit>()
                    .fechPosts();
              },
              child: Center(
                child: Text(
                  state.message,
                ),
              ),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
