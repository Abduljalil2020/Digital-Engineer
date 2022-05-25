import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../shared/cubit/cubit.dart';
import '../../../../../shared/cubit/states.dart';

class ConcreteEquations extends StatelessWidget {
  const ConcreteEquations({Key? key}) : super(key: key);

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
                'معادلات حصر الخرسانه',
                style: TextStyle(
                    color: Colors.white
                    , fontSize: 18  ,fontFamily: 'IBMPlexSansArabic'
                ),
              ),
              backgroundColor: const Color(0xff7A87FB),
              centerTitle: true,
            ),
            body: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView(
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
                    child: Center(
                      child: Text(
                        'كمية الخرسانة بالمتر المكعب',
                        style: GoogleFonts.ibmPlexSansArabic(
                            color: Colors.indigoAccent, fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: screenWidth,
                    height: screenHeight/8,
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
                        'الطول × العرض ×الإرتفاع \nالمحتوى الاسمنتي × عدد العناصر×',maxLines: 12,
                        style: TextStyle(
                            color: Colors.black, fontSize: 16  ,fontFamily: 'IBMPlexSansArabic'
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),


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
                        'كمية الاسمنت المطلوبة بالشيكارة',
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
                    height: screenHeight/8,
                    decoration: BoxDecoration(
                      border: Border.all(
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),
                      color:  const Color(0xff9bb1ff),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      children: const [
                        Center(

                          child: Text(
                            "  كمية الخرسانة بالمتر المكعب\n ×\n المحتوى الاسمنتي ÷ 50  "
                            ,maxLines: 12,
                            style: TextStyle(
                                color: Colors.black, fontSize: 16
                            ),
                          ),

                        ),
                      ],
                    ),

                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  //الزلط
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
                    child: Center(
                      child: Text(
                        'كمية الزلط بالمتر المكعب',
                        style: GoogleFonts.ibmPlexSansArabic(
                            color: Colors.indigoAccent, fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  Container(
                    width: screenWidth,
                    height: screenHeight/12,
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
                        " كمية الخرسانة بالمتر المكعب × 0.8 "


                        ,maxLines: 12,
                        style: TextStyle(
                            color: Colors.black, fontSize: 16  ,fontFamily: 'IBMPlexSansArabic'),
                      ),

                    ),

                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  //الرمل
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
                    child: Center(
                      child: Text(
                        'كمية الرمل بالمتر المكعب',
                        style: GoogleFonts.ibmPlexSansArabic(
                            color: Colors.indigoAccent, fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  Container(
                    width: screenWidth,
                    height: screenHeight/12,
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
                        " كمية الخرسانة بالمتر المكعب × 0.4 "


                        ,maxLines: 12,
                        style: TextStyle(
                            color: Colors.black, fontSize: 16  ,fontFamily: 'IBMPlexSansArabic'),
                      ),

                    ),

                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  //الماء
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
                        'كمية الماء بالمتر المكعب',
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
                    height: screenHeight/12,
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
                        " كمية الخرسانة بالمتر المكعب × 175 "


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
