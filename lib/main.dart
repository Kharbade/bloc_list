import 'package:bloc_list/bloc_list.dart';
import 'package:bloc_list/home_page.dart';
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
      create: (context) => ListBloc(),
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

