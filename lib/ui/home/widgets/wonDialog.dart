import 'package:flutter/material.dart';

class WonDialog extends StatefulWidget {
  @override
  _WonDialogState createState() => _WonDialogState();
}

class _WonDialogState extends State<WonDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Congrats'),
      content: Text('You Won'),
      actions: [
        FlatButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Play Again'),
        )
      ],
    );
  }
}
