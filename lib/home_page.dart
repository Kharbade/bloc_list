import 'package:bloc_list/bloc_list.dart';
import 'package:bloc_list/event_list.dart';
import 'package:bloc_list/state_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
        centerTitle: true,
      ),
      body: BlocBuilder<ListBloc,ListState>(
        builder: (context, state) {
          if(state.listTask.isEmpty){
            return const Center(
              child: Text("No Task To show"),
            );
          }
          else if(state.listTask.isNotEmpty){
            return ListView.builder(
              itemCount: state.listTask.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(state.listTask[index]),
                  trailing: IconButton(onPressed: (){
                    context.read<ListBloc>().add(DeleteTask(task: state.listTask[index]));
                  }, icon: const Icon(Icons.delete)),
                );
              },);
          }
          else{
            return const SizedBox();
          }

        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        for(int i= 0; i<3; i++){
          context.read<ListBloc>().add(AddTask(task: 'Himanshu $i'));
        }

      },
      child: const Icon(Icons.add),),
    );
  }
}
