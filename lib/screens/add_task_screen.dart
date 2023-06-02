import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task.dart';
import '../models/task_data.dart';


class AddTaskScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
     String newTaskTitle="";
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft:Radius.circular(20) ,topRight:Radius.circular(20) )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add a Task',style: TextStyle(fontSize: 30,color: Colors.lightBlueAccent,),textAlign: TextAlign.center,),
            TextField(autofocus: true,textAlign: TextAlign.center,onChanged: (newText){
               newTaskTitle=newText;
            },),
            TextButton(
              child: Text('Add',style: TextStyle(color:Colors.white),),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent),
              ),
              onPressed: () {

               Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);
               Navigator.pop(context);
                },
            ),





          ],
        ),
      ),
    );
  }
}
