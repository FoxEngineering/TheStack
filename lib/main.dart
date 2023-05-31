import 'package:flutter/material.dart';
import 'package:the_stack/features/settings/ui/settings_page.dart';
import 'package:the_stack/features/the_stack/ui/todo_list_page.dart';
import 'features/history/ui/history_page.dart';
import 'features/the_stack/ui/the_stack_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Stack',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TheStackPage(title: 'The Stack'),
      routes: {
        '/history': (context) => const HistoryPage(),
        '/todoList': (context) => const TodoListPage(),
        '/settings': (context) => const SettingsPage(),
      },
    );
  }
}