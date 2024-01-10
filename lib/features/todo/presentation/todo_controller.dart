import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stack_demo/features/todo/data/todo_model.dart';
import 'package:stack_demo/features/todo/domain/todo_repository.dart';

part 'todo_controller.g.dart';

/*
  This class is our controller for doing any operations on our data.
  This controller allows our UI to be decoupled from our repository.
  You will notice that we are calling read.repoMethods to allow our
  repository, the thing that has reference to the database. To do the
  work that we want. The controller is just the man in the middle.
  Think of this like a contract in model view presenter.
*/
@riverpod
class TodoController extends _$TodoController {
  // This is ok to leave blank because it's a FutureOr
  // TODO: Add your initial state here
  @override
  FutureOr<void> build() {}

  Future<void> toggleTodo(Todo todo) async {
    final todoRepo = ref.read(todoRepositoryProvider);

    // This allows us to change our UI from the controller
    state = const AsyncLoading();

    // Perform our data mutation
    state = await AsyncValue.guard(() async { 
      // Once operation is complete, we can update our UI
      await todoRepo.toggleTodo(todo);
      todo.isDone = !todo.isDone;
    });
  }

  Future<void> addTodo(String content) async {
    final todoRepo = ref.read(todoRepositoryProvider);

    state = const AsyncLoading();

    state = await AsyncValue.guard(() async { 
      await todoRepo.addTodo(Todo(content: content));
    });

  }

  Future<void> deleteTodo(Todo todo) async {
    final todoRepo = ref.read(todoRepositoryProvider);

    state = const AsyncLoading();

    state = await AsyncValue.guard(() async { 
      await todoRepo.deleteTodo(todo);
    });
  }
}
