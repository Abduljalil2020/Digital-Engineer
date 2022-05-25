import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../shared/cubit/cubit.dart';
import '../../../shared/cubit/states.dart';

class SlabsSteelQuantity extends StatelessWidget {
  const SlabsSteelQuantity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (BuildContext context, AppStates state) {},
        builder: (BuildContext context, AppStates state) {
          AppCubit cubit = AppCubit.get(context);
          return Scaffold(
            body: cubit.slabsScreens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: const Color(0xff7A87FB),
              selectedItemColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              currentIndex: cubit.currentIndex,

              onTap: cubit.changeIndex,
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/images/slab_conc.png",
                    width: 24,
                    height: 24,
                  ),
                  label: 'البلاطات الكمرية',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/images/slab_conc.png",
                    width: 24,
                    height: 24,
                  ),
                  label: 'البلاطات اللاكمرية',
                ),

              ],selectedLabelStyle: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
            ),
          );
        },
      ),
    );
  }
}
