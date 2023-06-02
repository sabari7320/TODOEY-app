import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';
import '../widgets/tasks_list.dart';
import 'add_task_screen.dart';




class TaskScreen extends StatelessWidget {
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context)=>SingleChildScrollView(
              child:Container(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: AddTaskScreen(),
          ),),);

         },
        backgroundColor: Colors.lightBlueAccent,child: Icon(Icons.add),
      ),


      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60,left: 30,right: 30,bottom: 30),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(child: Icon(Icons.list,size: 30,),backgroundColor: Colors.white,radius: 30,),
                  SizedBox(height:10),
                  Text('ToDoEy',style: TextStyle(fontSize:50 ,fontWeight:FontWeight.w700 ,color: Colors.white),),
                  Text('${Provider.of<TaskData>(context).tasks.length} Tasks',style:TextStyle(color: Colors.white,fontSize: 18),),

                ],
              ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),

              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
              ),
            child: TasksList(),
            ),

          )
        ],
      ),


    );
  }
}




