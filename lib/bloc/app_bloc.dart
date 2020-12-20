import 'package:flutter/cupertino.dart';
import 'package:rxdart/rxdart.dart';

enum Possibilities { X, O }

class AppBloc with ChangeNotifier {
  final userChance = Possibilities.X;
  final opponentChance = Possibilities.O;
  final map = {
    Possibilities.X: 'X',
    Possibilities.O: 'O',
  };
  final chances = List.generate(9, (index) => <String, dynamic>{});

  get currentTime => DateTime.now();

  bool isEmptyAt(index) {
    return chances[index].isEmpty;
  }

  void playChance(index, {isOpponent = false}) {
    chances[index] = {
      'index': index,
      'date_time': currentTime,
      'chance': isOpponent ? opponentChance : userChance,
    };
    notifyListeners();
    playOpponentChance();
  }

  String elementAt(index) {
    return map[chances[index]['chance']];
  }

  void playOpponentChance() async {
    await Future.delayed(Duration(milliseconds: 300));

  }
}
