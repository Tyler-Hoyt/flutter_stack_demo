import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stack_demo/features/todo/data/todo_model.dart';
import 'package:stack_demo/features/todo/presentation/todo_controller.dart';

class TodoWidget extends ConsumerWidget {
  const TodoWidget({super.key, required this.todo});

  final Todo todo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      title: Text(todo.content),
      leading: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {
          ref.read(todoControllerProvider.notifier).deleteTodo(
            todo
          );
        },
      ),
      trailing: Checkbox(
        value: todo.isDone, 
        onChanged: (bool? value) {
          ref.read(todoControllerProvider.notifier).toggleTodo(todo);
        }
      ),
    );
  }
}
