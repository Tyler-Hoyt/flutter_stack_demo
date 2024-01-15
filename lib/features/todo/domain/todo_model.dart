import 'package:quiver/core.dart';

/*
  This class is the model for our todo item.
*/
class Todo {
  final String content;
  bool isDone;

  Todo({required this.content,this.isDone = false});

  // These method is for easy json conversion for database calls
  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      content: json['content'],
      isDone: json['isDone'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'content': content,
      'isDone': isDone,
    };
  }

  // This method is to determine equality between objects
  @override
  operator == (Object other) {
    return (other is Todo) && other.content == content;
  }

  //TODO provide explanation for hashcode
  @override
  int get hashCode => hash2(content.hashCode, isDone.hashCode);

  // Easy way to print out the object
  @override
  String toString() {
    return 'Todo{content: $content, isDone: $isDone}';
  }
}
