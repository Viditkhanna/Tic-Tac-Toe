import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/ui/home/home_screen.dart';

import 'bloc/app_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData.dark(), home: HomeScreen());
  }
}
