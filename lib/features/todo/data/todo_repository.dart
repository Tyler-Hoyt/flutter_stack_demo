import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stack_demo/features/todo/domain/todo_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo_repository.g.dart';

// Class for any interaction with the Firebase DB
class TodoRepository {
  // This is the reference to our collection in the DB
  //var dbRef = FirebaseFirestore.instance.collection("Todo");
  late CollectionReference<Map<String, dynamic>> dbRef;

  // Need to provide a client for our firestore instance this allows
  // for dependency injection
  TodoRepository({FirebaseFirestore? client}) {
    if (client != null) {
      // Set our dbRef to the client provided
      dbRef = client.collection("Todo");
    }
  }


  // Streams in firebase allow for easy access to real-time updates
  Stream<List<Todo>> fetchList() {
    try {
      return dbRef.snapshots().map(
        (snapshot) => snapshot.docs.map(
          (doc) => Todo.fromJson(doc.data()),
        ).toList()
      );
    }
    catch(e) {
      print(e);
      rethrow;
    }
  }

  // Here I added some simple methods for our todo list
  Future<void> toggleTodo(Todo todo) async {
    try{
      await dbRef.where('content', isEqualTo: todo.content).get().then(
        (snapshot) => snapshot.docs.first.reference.update(
          {'isDone': !todo.isDone}
        )
      );
    }
    catch(e) {
      print(e);
      rethrow;
    }
  }

  Future<void> addTodo(Todo todo) async {
    try {
      await dbRef.doc().set(
        todo.toJson(),
        SetOptions(merge: true)
      );
    }
    catch(e) {
      print(e);
      rethrow;
    }
  }

  Future<void> deleteTodo(Todo todo) async {
    try {
      await dbRef
      .where(Filter.and(
        Filter('content', isEqualTo: todo.content), 
        Filter('isDone', isEqualTo: todo.isDone))
      ).snapshots().first.then(
        (snapshot) => snapshot.docs.first.reference.delete()
      );
    }
    catch(e) {
      print(e);
      rethrow;
    }
  }
}

// These are our providers created for us by riverpod_generator
@Riverpod(keepAlive: true)
TodoRepository todoRepository(TodoRepositoryRef ref, FirebaseFirestore? client) {
  return TodoRepository(client: client);
}

@riverpod
Stream<List<Todo>> fetchList(FetchListRef ref, FirebaseFirestore? client) {
  final repository = ref.watch(todoRepositoryProvider(client));
  return repository.fetchList();
  //return ref.watch(todoRepositoryProvider).fetchList();
}
