import 'package:asali/screens/category/cubit/category_cubit.dart';
import 'package:asali/screens/category/each_category.viewgroup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  void initState() {
    BlocProvider.of<CategoryCubit>(context).getAllCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<CategoryCubit, CategoryState>(
        builder: (context, state) {
          if (state is CategorySuccess) {
            return ListView.builder(
              itemCount: state.categories.length,
              itemBuilder: ((context, index) {
                return EachCategory(category: state.categories[index]);
              }),
            );
          }

          return const Center(
            child: Text('Something Went Wrong!'),
          );
        },
      ),
    );
  }
}
