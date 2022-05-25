import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../shared/cubit/cubit.dart';
import '../../../shared/cubit/states.dart';

class BrickQuantity extends StatelessWidget {
  const BrickQuantity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (BuildContext context, AppStates state) {},
        builder: (BuildContext context, AppStates state) {
          AppCubit cubit = AppCubit.get(context);
          return Scaffold(
              body: cubit.brickScreens[cubit.currentIndex],
              bottomNavigationBar: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/brick/brick_back2.png'),
                      fit: BoxFit.fill),
                ),
                child: BottomNavigationBar(
                  backgroundColor: const Color(0xff7A87FB),
                  selectedItemColor: Colors.white,
                  unselectedItemColor:Colors.black ,
                  type: BottomNavigationBarType.fixed,
                  currentIndex: cubit.currentIndex,
                  onTap: cubit.changeIndex,
                  items: [
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        "assets/images/brick/brick.png",
                        width: 30,
                        height: 24,
                      ),
                      label: 'مباني طوبة',
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        "assets/images/brick/brick.png",
                        width: 30,
                        height: 24,
                      ),
                      label: 'مباني نصف طوبة',
                    ),
                  ],selectedLabelStyle: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold)
                ),
              ));
        },
      ),
    );
  }
}
