import 'package:bloc_list/event_list.dart';
import 'package:bloc_list/state_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListBloc extends Bloc<ListEvent,ListState>{
  final List<String> liveTask=[];
  ListBloc(): super(const ListState()){
    on<AddTask>(_addTask);
    on<DeleteTask>(_deleteTask);
  }

  void _addTask(AddTask event, Emitter<ListState> emit){
    liveTask.add(event.task);
    emit(state.copyWith(listTask: List.from(liveTask)));
  }
  void _deleteTask(DeleteTask event, Emitter<ListState> emit){
    liveTask.remove(event.task);
    emit(state.copyWith(listTask: List.from(liveTask)));
  }
}