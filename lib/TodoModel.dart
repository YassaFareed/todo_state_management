import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_state_management/TaskModel.dart';

//add tasks and notify all listeners
class TodoModel extends ChangeNotifier{
  List<TaskModel> taskList = []; //contains all tasks


  addTaskInList(){
    TaskModel taskModel = TaskModel("title ${taskList.length}", "this is the task no detail ${taskList.length}");
    taskList.add(taskModel);

    notifyListeners();

  }
}