import 'package:flutter/material.dart';
import 'package:the_stack/common/the_stack_app_bar.dart';
import 'package:the_stack/common/the_stack_drawer.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TheStackAppBar(),
      drawer: TheStackDrawer(),
    );
  }
}
