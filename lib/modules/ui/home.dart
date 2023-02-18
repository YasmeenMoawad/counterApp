import 'package:flutter/material.dart';
import 'package:untitled/modules/blocs/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/modules/blocs/counter_cubit.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit,CounterState>(
      listener: (context,state){
        if (state is CounterError) {
          final snackbar = SnackBar(
            content: Text(state.errorMessage),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
        }
      },
      builder: (context,state){
        CounterCubit val = context.read()<CounterCubit>();
        int counter = val.counter;
        return Scaffold(
          bottomNavigationBar: ElevatedButton(
            onPressed: val.decCounter,
            child: const Icon(Icons.remove),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: val.incCounter,
            child: const Icon(Icons.add),
          ),
          appBar: AppBar(
            title: const Text("Counter App", style: TextStyle(fontSize: 20),),),
          body: Center(
            child: Text('$counter', style: const TextStyle(fontSize: 30),),),
        );
      },
    );
  }
}