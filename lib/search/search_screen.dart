import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_project/layout/new_app/cubit/cubit.dart';
import 'package:udemy_project/layout/new_app/cubit/states.dart';
import 'package:udemy_project/shared/components/components.dart';

class SearchScreen extends StatelessWidget {
  var searchController =TextEditingController();

  SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit , NewsStates>(
      listener: (context , state){},
      builder: (context , state){
        var list =NewsCubit.get(context).search;
        return Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: defaultFormField(
                  controller: searchController,
                  label: 'search',
                  prefix: Icons.search,
                  type: TextInputType.text,
                  onChange: (value) {},
                  onTap: (){},
                  onSubmit: (value){},
                  validate: (value)
                  {
                    if(value!.isEmpty)
                    {
                      return 'search must not be empty' ;
                    }
                    return null;

                  },
                ),
              ),
              Expanded(
                  child: articleBuilder(list, context)),
            ],
          ),
        );
      },
    );
  }
}
