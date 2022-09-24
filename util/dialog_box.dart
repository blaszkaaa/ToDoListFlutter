import 'package:flutter/material.dart';
import 'package:to_do_apk/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.deepPurple[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //wpisywanie danych przez użytkowanika
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Dodaj nowe zadanie",
              ),
            ),

            //przyciski do zapisywania i anulowania
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //zapisywanie
                MyButton(text: "Save", onPressed: onSave),

                const SizedBox(
                  width: 10,
                ),
                //anulowanie
                MyButton(text: "Cancel", onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
