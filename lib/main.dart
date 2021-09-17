import 'dart:isolate';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gift/Range.dart';
import 'package:gift/shapes.dart';

import 'Listitems.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

void callback() {
  print("heye");
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home:
            /* MultiBlocProvider(providers: [
        BlocProvider<FoodBloc>(
            create: (_) => FoodBloc(FoodApi(), InitialLoadingState())),
        BlocProvider<CartBloc>(
            create: (_) => CartBloc(InitailCartstate(count: 0))),
      ], child: Dats()) */
            Shapes());
  }
}
