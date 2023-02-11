import 'package:asali/enum/wealth.enum.dart';
import 'package:asali/screens/home/cubit/home_cubit.dart';
import 'package:asali/screens/home/resource_container/resource_container.viewgroup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    BlocProvider.of<HomeCubit>(context).getTotalWealth();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state is HomeSuccess) {
            return Column(
              children: [
                Text('Total Wealth: ${state.resource[Wealth.total]!}'),
                ResourceContainer(
                  type: Wealth.assets,
                  value: state.resource[Wealth.assets]!,
                ),
                ResourceContainer(
                  type: Wealth.liabilities,
                  value: state.resource[Wealth.liabilities]!,
                ),
              ],
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
