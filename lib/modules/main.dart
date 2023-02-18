import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/modules/blocs/counter_state.dart';
import 'package:untitled/modules/repo/counter_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/modules/blocs/counter_cubit.dart';
import 'package:untitled/modules/ui/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}
