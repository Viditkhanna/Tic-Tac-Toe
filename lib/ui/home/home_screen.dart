import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/bloc/app_bloc.dart';
import 'package:tic_tac_toe/bloc/sound_bloc.dart';
import 'package:tic_tac_toe/ui/home/play_ground.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SoundBloc()),
        ChangeNotifierProvider(create: (context) => AppBloc(context)),
      ],
      child: PlayGround(),
    );
  }
}
