import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/bloc/sound_bloc.dart';
import 'package:tic_tac_toe/ui/home/widgets/game_over_dialog.dart';
import 'package:tic_tac_toe/ui/home/widgets/loose_dialog.dart';
import 'package:tic_tac_toe/ui/home/widgets/wonDialog.dart';
import 'package:toast/toast.dart';

enum Possibilities { X, O }

class AppBloc with ChangeNotifier {
  final context;

  final userChance = Possibilities.X;
  final opponentChance = Possibilities.O;
  final map = {
    Possibilities.X: 'X',
    Possibilities.O: 'O',
  };
  var chances;

  AppBloc(this.context) {
    init();
  }

  init() {
    chances = [
      [{}, {}, {}],
      [{}, {}, {}],
      [{}, {}, {}],
    ];
  }

  get currentTime => DateTime.now();

  bool isEmptyAt(x, y) {
    return chances[x][y].isEmpty;
  }

  void playChance(x, y) {
    final soundBloc = Provider.of<SoundBloc>(context, listen: false);
    chances[x][y] = {
      'date_time': currentTime,
      'chance': userChance,
    };
    soundBloc.playUserSound();
    notifyListeners();
    if (isWon(x, y, userChance)) {
      _showDialog(userChance);
      return;
    }
    if (!_isGameCompleted()) _playOpponentChance();
  }

  String elementAt(x, y) {
    return map[chances[x][y]['chance']];
  }

  bool _isGameCompleted() {
    for (var chance in chances) {
      for (var c in chance) {
        if (c.isEmpty) return false;
      }
    }
    _showDialog(null);
    return true;
  }

  void _playOpponentChance() async {
    final soundBloc = Provider.of<SoundBloc>(context, listen: false);
    await Future.delayed(Duration(milliseconds: 300));
    List<int> indexes = _getValidRandomIndex();
    final x = indexes[0];
    final y = indexes[1];
    chances[x][y] = {
      'date_time': currentTime,
      'chance': opponentChance,
    };
    soundBloc.playOpponentSound();
    notifyListeners();

    if (isWon(x, y, opponentChance)) {
      _showDialog(opponentChance);
      return;
    }
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

  bool isWon(x, y, Possibilities possibility) {
    if (_isHorizontalWon(x, possibility)) return true;
    if (_isVerticalWon(y, possibility)) return true;
    if (_isDiagonalWon(possibility)) return true;
    return false;
  }

  bool _isHorizontalWon(x, Possibilities possibility) {
    final list = [
      [x, 0],
      [x, 1],
      [x, 2]
    ];
    for (var element in list) {
      int x = element[0];
      int y = element[1];
      if (chances[x][y]['chance'] != possibility) {
        return false;
      }
    }
    return true;
  }

  bool _isVerticalWon(y, Possibilities possibility) {
    final list = [
      [0, y],
      [1, y],
      [2, y],
    ];
    for (var element in list) {
      int x = element[0];
      int y = element[1];
      if (chances[x][y]['chance'] != possibility) {
        return false;
      }
    }
    return true;
  }

  bool _isDiagonalWon(Possibilities possibility) {
    final list = [
      [0, 0],
      [1, 1],
      [2, 2],
    ];
    for (var element in list) {
      int x = element[0];
      int y = element[1];
      if (chances[x][y]['chance'] != possibility) {
        return false;
      }
    }
    return true;
  }

  _showDialog(Possibilities possibility) async {
    await showDialog(
        context: context,
        builder: (_) {
          if (possibility == null)
            return GameOverDialog();
          else if (possibility == userChance) {
            return WonDialog();
          }
          return LooseDialog();
        });
    init();
    notifyListeners();
  }
}
