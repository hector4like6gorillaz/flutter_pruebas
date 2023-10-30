import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pruebas/block/counter_bloc/counter_bloc.dart';
import 'package:flutter_pruebas/block/details_screen/details_block.dart';
import 'package:flutter_pruebas/router/go_route.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (_) => DetailsBlock()),
    BlocProvider(create: (_) => CounterBloc())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final router = MyAppRouter(context);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router.createdRouter(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
