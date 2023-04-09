


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_project/business/business_screen.dart';
import 'package:udemy_project/layout/new_app/cubit/states.dart';
import 'package:udemy_project/network/remot/dio_helper.dart';
import 'package:udemy_project/science/science_screen.dart';
//import 'package:udemy_project/settings_screen/settings_screen.dart';
import 'package:udemy_project/sports/sports_screen.dart';

class NewsCubit extends Cubit <NewsStates>{
  NewsCubit() : super (NewsInitialState());
  static NewsCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0 ;

  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
        icon:Icon(
          Icons.business,

        ),
      label: 'Business',
    ),
    BottomNavigationBarItem(
      icon:Icon(
        Icons.sports,
      ),
      label: 'Sports',
    ),
    BottomNavigationBarItem(
      icon:Icon(
        Icons.science,
      ),
      label: 'Science',
    ),

  ];
  List<Widget> screens = [
    BusinessScreen(),
    SportsScreen(),
    ScienceScreen(),

  ];
  void changeBottomNavBar(int index)
  {
    currentIndex = index ;
    // if(index == 1)
    //   getSports();
    // if(index == 1)
    //   getScience();
    emit(NewsBottomNavlState());
  }
  List <dynamic> business = [] ;
  void getBusniss ()
  {
    emit(NewsGetBusinessLoadingState());

    DioHelper.getData(
      url: 'v2/top-headlines',
      query: {
        'sources':'techcrunch',
        'apiKey':'a061afa8ac3b4985abba78c668f10fb8',
      },
    ).then((value) {
     // print(value?.data['articles'][1]['title']);
      business = value?.data['articles'];
      print(business[0]['title']);

      emit(NewsGetBusinessSuccessState());

    }).catchError((error){
      print(error.toString());
      emit(NewsGetBusinessErrorState(error.toString()));
    }
    );

  }

  List <dynamic> sports = [] ;
  void getSports ()
  {
    emit(NewsGetSportsLoadingState());

    if(sports.length == 0)
      {
        DioHelper.getData(
          url: 'v2/top-headlines',
          query: {
            'sources':'techcrunch',
            'apiKey':'a061afa8ac3b4985abba78c668f10fb8',
          },
        ).then((value) {
          // print(value?.data['articles'][1]['title']);
          sports = value?.data['articles'];
          print( sports[0]['title']);

          emit(NewsGetSportsSuccessState());

        }).catchError((error){
          print(error.toString());
          emit(NewsGetSportsErrorState(error.toString()));
        }
        );
      } else
        {
          emit(NewsGetSportsSuccessState());
        }

  }

  List <dynamic> science = [] ;
  void getScience ()
  {
    emit(NewsGetScienceLoadingState());

    if(science.length == 0)
      {
        DioHelper.getData(
          url: 'v2/top-headlines',
          query: {
            'sources':'techcrunch',
            'apiKey':'a061afa8ac3b4985abba78c668f10fb8',
          },
        ).then((value) {
          // print(value?.data['articles'][1]['title']);
          science = value?.data['articles'];
          print( science[0]['title']);

          emit(NewsGetScienceSuccessState());

        }).catchError((error){
          print(error.toString());
          emit(NewsGetScienceErrorState(error.toString()));
        }
        );

      } else
        {
          emit(NewsGetScienceSuccessState());
        }
      }

  List <dynamic> search = [] ;
  void getSearch (String value)
  {
    emit(NewsGetSearchLoadingState());


    DioHelper.getData(
      url: 'v2/everything',
      query: {
        'q':'$value',
        'apiKey':'a061afa8ac3b4985abba78c668f10fb8',
      },
    ).then((value) {
      // print(value?.data['articles'][1]['title']);
      search = value?.data['articles'];
      print( search[0]['title']);

      emit(NewsGetSearchSuccessState());

    }).catchError((error){
      print(error.toString());
      emit(NewsGetSearchErrorState(error.toString()));
    }
    );


  }



}


