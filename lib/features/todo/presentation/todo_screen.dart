import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:stack_demo/features/todo/data/todo_repository.dart';
import 'package:stack_demo/features/todo/presentation/todo_controller.dart';
import 'package:stack_demo/features/todo/presentation/todo_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        ref.listen(
          todoControllerProvider,
          (_, state) => state,
        );
        // Grab our list stream to build a list
        final todoListAsync = ref.watch(fetchListProvider(FirebaseFirestore.instance));
        return todoListAsync.when(
          data: (todoList) =>
          Scaffold(
            appBar: AppBar(
              title: const Text('Todo List'),
            ),
            body: CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: todoList.length, 
                    (context, index) => TodoWidget(todo: todoList[index]),
                  ),
                ),
              ],
            ),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: const Text('Add Todo'),
                onPressed: () {
                  TextEditingController controller = TextEditingController();
                  showDialog(
                    context: context, 
                    builder: (context) => AlertDialog(
                      title: const Text('Add Todo'),
                      content: TextField(
                        controller: controller,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Todo Content',
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () {
                            ref.read(todoControllerProvider.notifier).addTodo(
                              controller.text,
                            );
                            if(context.mounted) {
                              GoRouter.of(context).pop();
                            }
                          },
                          child: const Text('Add'),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          loading: () => 
            Scaffold(
              appBar: AppBar(
                title: const Text('Todo List'),
              ),
              body: const Center(
                child: CircularProgressIndicator()
              )
            ),
          error: (e, _) => 
            Scaffold(
              appBar: AppBar(
                title: const Text('Todo List'),
              ),
              body: Center(
                child: Text(e.toString())
              ),
            ),
        );
      }
    );
  }
}
