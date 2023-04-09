import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_project/shared/components/components.dart';
import 'package:udemy_project/shared/components/constants.dart';
import 'package:udemy_project/shared/cubit/cubit.dart';
import 'package:udemy_project/shared/cubit/states.dart';

class NewTasksScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context ,state){},
      builder: (context ,state)
      {
        var tasks = AppCubit.get(context).tasks;

        return Text("It is empty");
      },

    );
  }

}
