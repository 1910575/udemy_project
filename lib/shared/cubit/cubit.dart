

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:udemy_project/modules/archived_tasks/archived_tasks_screen.dart';
import 'package:udemy_project/modules/done_tasks/done_tasks_screen.dart';
import 'package:udemy_project/modules/new_tasks/new_tasks_screen.dart';
import 'package:udemy_project/network/local/cache_helper.dart';
import 'package:udemy_project/shared/cubit/states.dart';

class AppCubit extends Cubit<AppStates>
{
  AppCubit() : super (AppInitialState());







  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> screens = [
    NewTasksScreen(),
    DoneTasksScreen(),
    ArchivedTasksScreen(),
  ];
  List<String> titels = [
    'New Tasks',
    'Done Tasks',
    'Archived Tasks',
  ];
  void changeIndex(int index)
  {
    currentIndex = index ;
    emit(AppChangeBottomNavBarState());
  }
  late Database database;
  List<Map> tasks = [];
  void createDatabase()  {
     openDatabase(
      'todo.db',
      version: 1,
      onCreate: (database, version) {
        print('database created');
        database
            .execute(
            'CREATE TABLE tasks (id INTEGER PRIMARY KEY , title TEXT , date TEXT ,time TEXT ,status TEXT)')
            .then((value) {
          print('table created');
        }).catchError((error) {
          print('Error When Creating Table ${error.toString()} ');
        });
      },
      onOpen: (database) {
        getDataFromDatabase(database).then((value)
        {
          late Database database;
          List<Map> tasks = [];
          
          emit(AppGetDataBaseState());
       });
        print('database opened');
      },
    ).then((value)
     {
      database = value;
      emit(AppCreateDataBaseState());
     });
  }

   insertDatabase({
    required String title ,
    required String time ,
    required String date ,

  }) async {
     database.transaction((txn) async {
       txn
           .rawInsert(
           'INSERT INTO tasks(title, date, time, status) VALUES("$title", "$date", "$time", "new")')
           .then((value) {
         print('$value inserted successfully');
         emit(AppInsertDataBaseState());
         getDataFromDatabase(database).then((value) {
           late Database database;
           List<Map> tasks = [];

           emit(AppGetDataBaseState());
         });
       }).catchError((error) {
         print('Error when inserting new record ${error.toString()}');
       });
     });

  }
  Future <List<Map>> getDataFromDatabase(database)async
  {
    emit(AppGetDataBaseLoadingState());
    return await database.rawQuery('SELECT * FROM tasks');

  }
  bool isBottomSheetShow = false;
  IconData fabIcon = Icons.edit;
  void changeBottomSheetState ({
  required bool isShow ,
  required IconData icon ,
})
  {
    isBottomSheetShow = isShow ;
    fabIcon = icon ;
    
    emit(AppChangeBottomsheetState());
  }

  bool isDark = false ;


  void changeAppMode({ bool ? formShared})
  {

    if (formShared != null)
      {
        isDark = formShared ;
        emit(AppChangeModeState());
      }
     else
     {
       isDark = !isDark ;
       CacheHelper.putBoolean(key: 'key', value: isDark).then((value)
       {
         emit(AppChangeModeState());
       });

     }
     }
  }



