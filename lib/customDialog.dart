import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final title;
  final content;
  final VoidCallback callback;
  final action;

  const CustomDialog(this.title, this.content, this.callback,
      [this.action = "Sıfırla"]);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        FlatButton(
          child: Text(action),
          onPressed: callback,
          color: Colors.white,
        )
      ],
    );
  }
}
