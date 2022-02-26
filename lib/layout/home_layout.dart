import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:udemy_flutter/modules/archived_tasks/archived_tasks_screen.dart';
import 'package:udemy_flutter/modules/done_tasks/done_tasks_screen.dart';
import 'package:udemy_flutter/modules/new_tasks/new_tasks_screen.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

//1.create database
//2. create tables
//3.open database
//4.insert in database
//5.get from database
//6. update in database
//7.delete from database

class _HomeLayoutState extends State<HomeLayout>
{
  int currentIndex = 0;

  List<Widget> screens =
  [
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen(),
  ];
  List<String> titles =
  [
    'New Tasks',
    'Done Tasks',
    'Archived Tasks',
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    createDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titles[currentIndex],
        ),

      ),
      body: screens[currentIndex],
      floatingActionButton: FloatingActionButton(
           onPressed: ()  {

             // try
             // {
             //   var name =  await getName();
             //   print(name);
             //
             //   throw('some error !!!!!');
             // } catch(error)
             // {
             //   print('error ${error.toString()}');
             // }

             getName().then((value)
             {
               print(value);
               print('Osama');
               //throw('some error !!!!!');
             }).catchError((error){
               print('error is ${error.toString()}');
             });
           },
          child: Icon(
           Icons.add,
          ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });

        },
        items:
        [
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.menu,
              ),
              label: 'Tasks',
            ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.check_circle_outline,
              ),
              label: 'Done',
            ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.archive_outlined,
              ),
              label: 'Archived',
            ),
        ],
      ),
    );
  }

  Future<String> getName() async {
    return 'Dalia Ahmed';
  }

  void createDatabase() async {
    Database database = await openDatabase(
      'todo.db',
      version: 1,
      onCreate: (database, version)
      {
        //id integer
        //title String
        //data String
        //tine String
        //status String

        print('database created');
        database.execute('CREATE TABLE tasks (id INTEGER PRIMARY KEY, title TEXT, date TEXT, time TEXT, status TEXT)').then((value)
         {
           print('table created');
         }).catchError((error){
           print('Error when creating table ${error.toString()}');
         });
      },
      onOpen: (database)
      {
        print('database opened');
      },
    );
  }

  void insertDatabase()
  {

  }

}
