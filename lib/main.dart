import 'package:flutter/material.dart';

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
    }

    );
  }
}

class TheStackPage extends StatefulWidget {
  TheStackPage({super.key, required this.title});

  final String title;
  final List<String> tasks = ["Your Mom"];

  @override
  State<TheStackPage> createState() => _TheStackPageState();
}

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}
class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class _TheStackPageState extends State<TheStackPage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
        backgroundColor: Colors.orangeAccent,
      ),

      bottomSheet: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {},
              ),
            ),
            Center(
              child: IconButton(
                icon: const Icon(Icons.history),
                onPressed: () {Navigator.pushNamed(context, '/history');},
              )
            ),
          ],
        ),
      )
    );
  }
}

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Completed Tasks',
        style: TextStyle(
          color: Colors.white,
        ),),
        backgroundColor: Colors.brown,
      ),
      body: IconButton(
        onPressed: () {Navigator.pushNamed(context, '/');},
        icon: const Icon(Icons.arrow_back),
      ),
      backgroundColor: Colors.red,
    );
  }
}