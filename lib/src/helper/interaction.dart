import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageAlert {
  static showAlert(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Alert'),
          content: Text('$message'),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context), child: Text('Okay'))
          ],
        );
      },
    );
  }

  static showErrorAlert(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Row(
            children: [
              Icon(
                Icons.cancel,
                color: Colors.red,
              ),
              SizedBox(
                width: 5,
              ),
              Text('Error'),
            ],
          ),
          content: Text('$message'),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context), child: Text('Okay'))
          ],
        );
      },
    );
  }
}
