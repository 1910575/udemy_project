import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_project/layout/new_app/cubit/cubit.dart';
import 'package:udemy_project/layout/new_app/cubit/states.dart';
import 'package:udemy_project/network/remot/dio_helper.dart';
import 'package:udemy_project/search/search_screen.dart';
import 'package:udemy_project/shared/components/components.dart';
import 'package:udemy_project/shared/cubit/cubit.dart';
class NewsLayout extends StatelessWidget {
  const NewsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit , NewsStates>(
        listener: (context , state){},
        builder: (context , state){
          var cubit = NewsCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Text(
                'News App',
              ),
              actions: [
                IconButton(
                  icon: Icon(
                      Icons.search,
                  ),
                  onPressed:()
                  {
                    navigateTo(context, SearchScreen(),);
                  },
                ),
                IconButton(
                  icon: Icon(
                      Icons.brightness_4_outlined,
                  ),
                  onPressed:()
                  {
                    AppCubit.get(context).changeAppMode();
                  },
                ),
              ],
            ),

            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currentIndex,
              onTap: (index)
              {
                cubit.changeBottomNavBar(index);

              },
              items:cubit.bottomItems ,
            ),


          );
        },


    );
  }
}
