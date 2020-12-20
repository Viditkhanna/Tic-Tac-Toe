import 'package:flutter/material.dart';

class LooseDialog extends StatefulWidget {
  @override
  _LooseDialogState createState() => _LooseDialogState();
}

class _LooseDialogState extends State<LooseDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Sorry'),
      content: Text('You Lost'),
      actions: [
        FlatButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Play Again'),
        )
      ],
    );
  }
}
