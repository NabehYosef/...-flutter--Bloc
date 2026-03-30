import 'package:equatable/equatable.dart';

class PostState extends Equatable {
  @override
  // TODO: implement props
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
