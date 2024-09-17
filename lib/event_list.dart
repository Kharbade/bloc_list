import 'package:equatable/equatable.dart';

abstract class ListEvent extends Equatable{
  const ListEvent();
}

class AddTask extends ListEvent{
  final String task;
  const AddTask({required this.task});

  @override
  // TODO: implement props
  List<Object?> get props => [task];

}

class DeleteTask extends ListEvent{
  final Object task;
  const DeleteTask({required this.task});

  @override
  // TODO: implement props
  List<Object?> get props => [task];

}