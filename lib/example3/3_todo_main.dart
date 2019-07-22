import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '3_detail_screen.dart';
import '3_todo.dart';
import '3_todo_screen.dart';

class TodoMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TodosScreen(
      todos: List.generate(
        20,
            (i) => Todo(
          'Todo $i',
          'A description of what needs to be done for Todo $i',
        ),
      ),
    );
  }
}
