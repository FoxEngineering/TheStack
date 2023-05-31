import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_stack/common/the_stack_app_bar.dart';
import 'package:the_stack/common/the_stack_drawer.dart';
import 'package:the_stack/common/the_stack_title_sliver.dart';

class TheStackPage extends StatefulWidget {
  TheStackPage({super.key, required this.title});

  final String title;
  final List<String> lists = ["Your Mom", "Haha", "Homework 6"];
  final List<String> friendsLists = ["House Chores", "Bills"];
  final List<String> completedLists = ["Project 2", "Fix Bike"];

  @override
  State<TheStackPage> createState() => _TheStackPageState();
}

class _TheStackPageState extends State<TheStackPage> {
  final _formKey = GlobalKey<FormState>();
  bool showList = false;

  List<Widget> getYourLists(List<String> lists) {
    return lists.map((todoList) =>
        ListTile(
          shape: const RoundedRectangleBorder(
            side: BorderSide(),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          tileColor: Colors.orangeAccent[100],
          leading: GestureDetector(
            onLongPress: (){
              debugPrint("Long press triggered");
            },
            onLongPressEnd: (longPressEndDetails){
              debugPrint(longPressEndDetails.toString());
            },
            child: const Icon(CupertinoIcons.arrow_up_arrow_down),
          ),
          title: Text(todoList),
          trailing: IconButton(
            icon: const Icon(Icons.send),
            onPressed: (){
              debugPrint('Send button pressed');
            },
          ),
          onTap: (){Navigator.pushNamed(context, '/todoList');},
        )
    ).toList();
  }

  Widget getFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        debugPrint('Add button selected');
        showDialog(
          context: context,
            builder: (context) => AlertDialog(
              title: const Center(child: Text('Add New List')),
              content: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(
                          label: Text('List Name'),
                          hintText: 'Homework to-do'
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the name of the list';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 30,),
                    const Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: DropdownMenu(
                        label: Text('List Type'),
                        initialSelection: 'Todo',
                        dropdownMenuEntries: [
                          DropdownMenuEntry(
                              value: 'Todo', label: 'Todo List'
                          ),
                          DropdownMenuEntry(
                              value: 'Numbered', label: 'Numbered List'
                          ),
                    ]),
                    ),
                  ],
                ),
              ),
              actions: [
                OutlinedButton(
                    style: OutlinedButton.styleFrom(backgroundColor: Colors.blue,),
                    onPressed: (){
                      if (_formKey.currentState!.validate()) {
                        //Display that you are doing it
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Adding new list...'))
                        );

                        //TODO then do it!! Add the new list
                        Navigator.of(context).pop();
                      }
                    },
                    child: const Text('Add', style: TextStyle(color: Colors.white),),
                ),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: Navigator.of(context).pop,
                    child: const Text('Cancel', style: TextStyle(color: Colors.white),)
                ),
              ],
            ),
        );
      },
      child: const Icon(Icons.add),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const TheStackAppBar(),
        drawer: const TheStackDrawer(),
        body: CustomScrollView(
          slivers: [
            getTitleSliver('Your Lists: '),
            SliverList(delegate: SliverChildListDelegate(getYourLists(widget.lists)),),
            getTitleSliver('Your Friend\'s Lists: '),
            SliverList(delegate: SliverChildListDelegate(getYourLists(widget.friendsLists)),),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: showList ? Colors.orangeAccent[100] : null
                    ),
                    onPressed: (){
                      setState(() {
                        showList = !showList;
                      });
                    },
                    child: const Text('Show Completed Lists')
                ),
              ),
            ),
            showList ? getTitleSliver('Completed Lists: ') : SliverToBoxAdapter(child: Container(),),
            showList
                ? SliverList(delegate: SliverChildListDelegate(getYourLists(widget.completedLists)),)
                : SliverToBoxAdapter(child: Container(),),
          ],
        ),
        floatingActionButton: getFloatingActionButton()
    );
  }
}