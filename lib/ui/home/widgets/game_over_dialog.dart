import 'package:flutter/material.dart';

class GameOverDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Game Over'),
      content: Text('It\'s a tie'),
      actions: [
        FlatButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Play Again'),
        )
      ],
    );
  }
}
