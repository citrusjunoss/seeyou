import 'package:flutter/material.dart';
import 'package:flutter_material_pickers/helpers/show_responsive_dialog.dart';
import 'package:seeyou/components/add_todo_dialog.dart';
import 'package:seeyou/components/todo_item.dart';
import 'package:seeyou/controller/todo.dart';
import 'package:get/get.dart';

class TodoListPage extends GetView<TodoController> {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () => controller.todos.isEmpty
                  ? Center(
                      child: Text(
                        'No tasks available. \n Click the button below to add one.'
                            .tr,
                        textAlign: TextAlign.center,
                      ),
                    )
                  : ListView.builder(
                      itemCount: controller.todos.length,
                      itemBuilder: (context, index) {
                        final todo = controller.todos[index];
                        return TodoItem(todo: todo);
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
