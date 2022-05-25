import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../shared/cubit/cubit.dart';
import '../../../../../shared/cubit/states.dart';

class ExcavationEquations extends StatelessWidget {
  const ExcavationEquations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (BuildContext context, AppStates states) {},
        builder: (BuildContext context, AppStates states) {
          var screenHeight = MediaQuery.of(context).size.height;
          var screenWidth = MediaQuery.of(context).size.width;

          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'معادلات حصر الحفر',
                style: TextStyle(
                    color: Colors.white, fontSize: 18  ,fontFamily: 'IBMPlexSansArabic'
                ),
              ),
              backgroundColor: const Color(0xff7A87FB),
              centerTitle: true,
            ),
            body: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    width: screenWidth,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xff7A87FB),
                        style: BorderStyle.solid,
                        width: 2.0,
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Center(
                      child: Text(
                        'كمية الحفر بالمتر المكعب',
                        style: TextStyle(
                            color: Colors.indigoAccent, fontSize: 16  ,fontFamily: 'IBMPlexSansArabic'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  Container(
                    width: screenWidth,
                    height: screenHeight/6,
                    decoration: BoxDecoration(
                      border: Border.all(
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),
                      color:  const Color(0xff9bb1ff),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Center(
                      child: Text(
                        " طول قطاع الحفر× عرض قطاع الحفر\n × \nارتفاع قطاع الحفر  "


                        ,maxLines: 12,
                        style: TextStyle(
                            color: Colors.black, fontSize: 16  ,fontFamily: 'IBMPlexSansArabic'),
                      ),

                    ),

                  ),

                ],
              ),
            ),

          );
        },
      ),
    );
  }
}
