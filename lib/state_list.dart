import 'package:equatable/equatable.dart';

class ListState extends Equatable{
  final List<String> listTask;

  const ListState({
    this.listTask = const []
  });

  ListState copyWith({List<String>? listTask}){
    return ListState(listTask: listTask ?? this.listTask);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [listTask];
}