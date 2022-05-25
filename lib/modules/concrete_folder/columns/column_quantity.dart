import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../shared/cubit/cubit.dart';
import '../../../shared/cubit/states.dart';

class ColumnQuantity extends StatelessWidget {
  const ColumnQuantity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (BuildContext context, AppStates state) {},
        builder: (BuildContext context, AppStates state) {
          AppCubit cubit = AppCubit.get(context);
          return Scaffold(
            body: cubit.columnScreens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: const Color(0xff7A87FB),
              selectedItemColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              currentIndex: cubit.currentIndex,
              onTap: cubit.changeIndex,
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/images/column_rec.png",
                    width: 30,
                    height: 24,
                  ),
                  label: 'عمود مستطيل',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/images/colum_conc.png",
                    width: 30,
                    height: 24,
                  ),
                  label: 'عمود دائرى',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
