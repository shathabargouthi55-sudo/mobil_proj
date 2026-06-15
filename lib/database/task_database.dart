import '../models/task.dart';

class TaskDatabase {
  List<Task> tasks = [];

  List<Task> getTasks() {
    return tasks;
  }

  void addTask(Task task) {
    tasks.add(task);
  }

  void updateTask(int index, Task updatedTask) {
    tasks[index] = updatedTask;
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
  }

  void toggleTaskStatus(int index) {
    tasks[index].isCompleted = !tasks[index].isCompleted;
  }
}