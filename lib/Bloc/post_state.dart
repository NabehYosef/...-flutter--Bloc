import 'package:equatable/equatable.dart';

sealed class PostState
    extends Equatable {
  @override
  List<Object?> get props => [];
}

class PostLoading extends PostState {}

class PostLoaded extends PostState {
  final List<dynamic> posts;
  PostLoaded(this.posts);
  List<Object?> get props => [posts];
}

class PostError extends PostState {
  final String message;
  PostError(this.message);
  @override
  List<Object?> get props => [message];
}
