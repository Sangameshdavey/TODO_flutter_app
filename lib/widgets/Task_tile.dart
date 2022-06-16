import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';

class Task_tile extends StatelessWidget {
  bool ischecked = false;
  final String tasktitle;
  final void Function(bool?) checkboxCallback;
  final GestureLongPressCallback? longPressCallback;
  Task_tile(
      {Key? key,
      required this.ischecked,
      required this.tasktitle,
      required this.checkboxCallback,
      required this.longPressCallback})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longPressCallback,
        title: Text(
          tasktitle,
          style: TextStyle(
              decoration: ischecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: ischecked,
          onChanged: checkboxCallback,
        ));
  }
}

// (bool? checkboxState) {
// setState(() {
// ischecked = checkboxState ?? true;
// });
// }

// class Task_CheckBox extends StatelessWidget {
//   late final bool checkboxState;
//   late final void Function(bool?) toggleCheckBoxstate;
//
//   Task_CheckBox(
//       {required this.checkboxState, required this.toggleCheckBoxstate});
//
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
