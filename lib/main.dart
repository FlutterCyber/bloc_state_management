import 'package:bloc_state_management/ui/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_bloc/counter_bloc.dart';
import 'bloc/name_bloc/name_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterBloc()),
        BlocProvider(create: (context) => NameBloc()),
      ],
      child: const MaterialApp(
        title: 'Flutter BLoC Counter',
        home: CounterPage(),
      ),
    );
  }
}
