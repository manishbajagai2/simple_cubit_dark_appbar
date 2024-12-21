import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_cubit/counter/counter_cubit.dart';
import 'package:learning_cubit/counter/counter_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CounterCubit(0),
        child: BlocListener<CounterCubit,int>(
          listener: (context, state) {
            if (state == 10) {
              showDialog(
                  context: context,
                  builder: (context) =>
                      AlertDialog(content: Text("10 reached")));
            }
          },
          child: CounterView(),
        ));
  }
}
