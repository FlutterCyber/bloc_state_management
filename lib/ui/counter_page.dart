import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_bloc/counter_bloc.dart';
import '../bloc/counter_bloc/counter_event.dart';
import '../bloc/counter_bloc/counter_state.dart';
import '../bloc/name_bloc/name_bloc.dart';
import '../bloc/name_bloc/name_state.dart';
import 'name_input_page.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter BLoC Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  'Counter: ${state.counter}',
                  style: const TextStyle(fontSize: 24.0),
                );
              },
            ),
            const SizedBox(height: 20),
            BlocBuilder<NameBloc, NameState>(
              builder: (context, state) {
                return Text(
                  'Name: ${state.name}',
                  style: const TextStyle(fontSize: 24.0),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(IncrementCounter());
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(DecrementCounter());
            },
            child: const Icon(Icons.remove),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NameInputPage()),
              );
            },
            child: const Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}
