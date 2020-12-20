import 'dart:math';
import 'package:flutter/cupertino.dart';

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

  void playChance(index) {
    chances[index] = {
      'index': index,
      'date_time': currentTime,
      'chance': userChance,
    };
    notifyListeners();
    if (!isGameCompleted()) _playOpponentChance();
  }

  String elementAt(index) {
    return map[chances[index]['chance']];
  }

  bool isGameCompleted() {
    for (var chance in chances) {
      if (chance.isEmpty) return false;
    }
    return true;
  }

  void _playOpponentChance() async {
    await Future.delayed(Duration(milliseconds: 300));
    int index = _getValidRandomIndex();

    chances[index] = {
      'index': index,
      'date_time': currentTime,
      'chance': opponentChance,
    };
    notifyListeners();
  }

  int _getValidRandomIndex() {
    final random = Random(0);
    while (true) {
      final randomNum = random.nextInt(9);
      if (isEmptyAt(randomNum)) {
        return randomNum;
      }
    }
  }
}
