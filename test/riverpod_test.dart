import 'package:flutter_test/flutter_test.dart';
import 'package:stack_demo/features/todo/domain/todo_model.dart';
import 'package:stack_demo/features/todo/data/todo_repository.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Dependency injection test with Riverpod to show proper testing

ProviderContainer createContainer({
  ProviderContainer? parent,
  List<Override> overrides = const [],
  List<ProviderObserver>? observers,
}) { // Create a ProviderContainer, and optionally override some providers
  final container = ProviderContainer(
    parent: parent,
    overrides: overrides,
    observers: observers,
  );

  // When the test ends, dispose the container.
  addTearDown(container.dispose);
return container;
}

void main() {
  // Create a fake firestore instance
  final instance = FakeFirebaseFirestore();
  instance.collection("Todo").add({
    'content': 'Test',
    'isDone': false,
  });

  // Create a list of to hold todo data
  final List<Todo> todoListKey = [Todo(
    content: 'Test',
    isDone: false,
  )];

  test('Give provider fake data', () async {
    // Create our container
    final container = createContainer();

    // We will use the fake firestore instance to test our provider
    final todoList = container.listen(fetchListProvider(instance), (_, __) {}); 

    todoList.read().whenData((value) => expect(
      value,
      equals(todoListKey)
    ));

  });
}
