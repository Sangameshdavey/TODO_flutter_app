import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/widgets/Task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/Task_data.dart';

class Tasks_list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Task_data>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemCount: taskData.taskCount, //widget.tasks.length,
            itemBuilder: (BuildContext context, int index) {
              final task = taskData.tasks[index];
              return Task_tile(
                tasktitle: task.name,
                ischecked: task.isDone,
                checkboxCallback: (checkBoxState) {
                  taskData.updateTask(task);
                  // setState(() {
                  //   Provider.of<TaskData>(context)
                  //       .tasks[index]
                  //       .toggleDone(); //= checkBoxState ?? true;
                  // });
                },
                longPressCallback: () {
                  taskData.deletetask(task);
                },
              );
            });
      },
    );
    // ListView(
    //   children: [
    //     // TaskTile(taskTitle: tasks[0].name, isChecked: tasks[0].isDone),
    //     // TaskTile(taskTitle: tasks[1].name, isChecked: tasks[1].isDone),
    //     // TaskTile(taskTitle: tasks[2].name, isChecked: tasks[2].isDone),
    //     // TaskTile(taskTitle: tasks[3].name, isChecked: tasks[3].isDone),
    //     // TaskTile(taskTitle: tasks[0].name,isChecked: tasks[0].isDone),
    //     // TaskTile(taskTitle: tasks[0].name,isChecked: tasks[0].isDone),
    //     // TaskTile(),
    //     // TaskTile(),
    //     // TaskTile(),
    //     // TaskTile(),
    //     // TaskTile(),
    //     // TaskTile(),
    //   ],
    // );
  }
}
//   return ChangeNotifierProvider(
//   create: (context) => Task_data(),
//   child: Consumer<Task_data>(builder: (context, taskData, child) {
//   return ListView.builder(
//   itemBuilder: (context, index) {
//   return Task_tile(
//   ischecked: taskData.tasks[index].isDone,
//   tasktitle: taskData.tasks[index].name,
//   checkboxCallback: (checkboxState) {});
//   },
//   itemCount: taskData.taskCount,
//   );
//   }),
//   );
// }
// return Consumer<Task_data>( builder:
// (context,taskdata, child),
// return )
//
// {
// return ListView.builder(
// itemBuilder: (context, index) {
// return Task_tile(
// ischecked: taskdata.tasks[index].isDone,
// tasktitle: taskdata.tasks[index].name,
// checkboxCallback: (checkboxState) {
// // setState(() {
// //   Provider.of(context).tasks[index].toggleDone();
// // });
// });
// },
// itemCount: taskdata.tasks.length,
// );
//
// },
//
// };
// }
