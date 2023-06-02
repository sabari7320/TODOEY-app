import 'package:flutter/material.dart';
import 'package:todo/models/task_data.dart';
import 'package:todo/widgets/task_tile.dart';
import 'package:provider/provider.dart';



class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child) {
        return ListView.builder(
            itemCount:taskData.taskCount,
            itemBuilder: (ctx, i) {
              final task =taskData.tasks[i];
              return TaskTile(
                isChecked: task.isDone,
                taskTitle: task.name,
                checkboxCallback: (checkboxState) {
                 taskData.updateTask(task);
                },
                longPressCallback: (){
                    taskData.deleteTask(task);
                },
              );
            }
        );
      },

    );
  }
}