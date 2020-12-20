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
  final chances = [
    [{}, {}, {}],
    [{}, {}, {}],
    [{}, {}, {}],
  ];

  get currentTime => DateTime.now();

  bool isEmptyAt(x, y) {
    return chances[x][y].isEmpty;
  }

  void playChance(x, y) {
    chances[x][y] = {
      'date_time': currentTime,
      'chance': userChance,
    };
    notifyListeners();
    if (!isGameCompleted()) _playOpponentChance();
  }

  String elementAt(x, y) {
    return map[chances[x][y]['chance']];
  }

  bool isGameCompleted() {
    for (var chance in chances) {
      for (var c in chance) {
        if (c.isEmpty) return false;
      }
    }
    return true;
  }

  void _playOpponentChance() async {
    await Future.delayed(Duration(milliseconds: 300));
    List<int> indexes = _getValidRandomIndex();
    final x = indexes[0];
    final y = indexes[1];
    chances[x][y] = {
      'date_time': currentTime,
      'chance': opponentChance,
    };
    notifyListeners();
  }

  List<int> _getValidRandomIndex() {
    final random = Random(0);
    while (true) {
      final randomX = random.nextInt(3);
      final randomY = random.nextInt(3);
      if (isEmptyAt(randomX, randomY)) {
        return [randomX, randomY];
      }
    }
  }
}