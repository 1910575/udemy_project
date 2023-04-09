import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:udemy_project/layout/myGuide/onboarding_screens/welcome_screen.dart';
import 'package:udemy_project/layout/new_app/cubit/cubit.dart';
import 'package:udemy_project/layout/new_app/news_layout.dart';
import 'package:udemy_project/layout/todo_layout.dart';
import 'package:udemy_project/modules/counter/counter_screen.dart';
import 'package:udemy_project/modules/login/login_screen.dart';
import 'package:udemy_project/network/local/cache_helper.dart';
import 'package:udemy_project/network/remot/dio_helper.dart';
import 'package:udemy_project/shared/bloc_observer.dart';
import 'package:udemy_project/shared/cubit/cubit.dart';
import 'package:udemy_project/shared/cubit/states.dart';
import 'package:udemy_project/styles/themes.dart';
import 'modules/bmi_result/bmi_result_screen.dart';
import 'modules/bmi/bmi_screen.dart';


void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
 await CacheHelper.init();

 bool? isDark = CacheHelper.getBoolean(key: 'isDark');

  runApp( MyApp(isDark));
}

class MyApp extends StatelessWidget {

  final bool? isDark;
  MyApp(this.isDark);

  @override
  Widget build(BuildContext context)
  {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>  NewsCubit()..getBusniss()..getSports()..getScience(),),
        BlocProvider( create: (BuildContext context) => AppCubit()..changeAppMode(
          formShared: isDark ,
        ),),

      ],
      child: BlocConsumer<AppCubit , AppStates>(
        listener: (context, states){},
        builder: (context, states){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme:lightTheme,
            darkTheme:darkTheme ,
           // themeMode: AppCubit.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
            home:WelcomeScreen(),

          );
        },
      ),
    );

  }
}



