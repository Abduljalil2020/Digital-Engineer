import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../shared/cubit/cubit.dart';
import '../../../../../shared/cubit/states.dart';

class BrickEquations extends StatelessWidget {
  const BrickEquations({Key? key}) : super(key: key);

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
                'معادلات حصر الطوب',
                style: TextStyle(
                    color: Colors.white, fontSize: 25
                ),
              ),
              backgroundColor: const Color(0xff7A87FB),
              centerTitle: true,
            ),
            body: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView(
                children:[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 50,
                      right: 50
                    ),
                    child: Container(


                      decoration: BoxDecoration(

                        border: Border.all(
                          color: const Color(0xff7A87FB),
                          style: BorderStyle.solid,
                          width: 3.0,
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                        child: Text(
                          'مبانى نصف طوبة',
                          style: TextStyle(
                              color: Colors.indigoAccent,
                              fontSize: 18  ,fontFamily: 'IBMPlexSansArabic'

                          ),
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
                        'مساحة المبانى بالمتر المربع',
                        style: TextStyle(
                            color: Colors.indigoAccent,
                            fontSize: 16  ,fontFamily: 'IBMPlexSansArabic'

                        ),
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
                        'طول الجدار × عرض الجدار',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16  ,fontFamily: 'IBMPlexSansArabic'
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
                        'مساحة البلوك',
                        style: TextStyle(
                            color: Colors.indigoAccent,
                            fontSize: 16  ,fontFamily: 'IBMPlexSansArabic'
                        ),
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
                        'طول البلوك × ارتفاع البلوك',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16
                            ,fontFamily: 'IBMPlexSansArabic'
                        ),
                      ),
                    ),
                  ),
                  //
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
                        'عدد الطوب المطلوب',
                        style: TextStyle(
                            color: Colors.indigoAccent,
                            fontSize: 16
                            ,fontFamily: 'IBMPlexSansArabic'
                        ),
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
                        'مساحة المباني ÷ مساحة البلوك',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16
                            ,fontFamily: 'IBMPlexSansArabic'
                        ),
                      ),
                    ),
                  ),
                  //
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 50,
                        right: 50
                    ),
                    child: Container(



                      decoration: BoxDecoration(

                        border: Border.all(
                          color: const Color(0xff7A87FB),
                          style: BorderStyle.solid,
                          width: 3.0,
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                        child: Text(
                          'مبانى  طوبه',
                          style: TextStyle(
                              color: Colors.indigoAccent,
                              fontSize: 18
                              ,fontFamily: 'IBMPlexSansArabic'
                          ),
                        ),
                      ),
                    ),
                  ),
                  //
                  const SizedBox(
                    height: 15,
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
                        'حجم المباني بالمتر المكعب',
                        style: TextStyle(
                            color: Colors.indigoAccent,
                            fontSize: 16
                            ,fontFamily: 'IBMPlexSansArabic'
                        ),
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
                        'طول الجدار × سمك الجدار× ارتفاع الجدار',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16
                            ,fontFamily: 'IBMPlexSansArabic'
                        ),
                      ),
                    ),
                  ),
                  //
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
                        'حجم البلوك',
                        style: TextStyle(
                            color: Colors.indigoAccent,
                            fontSize: 16
                            ,fontFamily: 'IBMPlexSansArabic'
                        ),
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
                        ' طول البلوك × عرض البلوك × ارتفاع البلوك',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16
                            ,fontFamily: 'IBMPlexSansArabic'
                        ),
                      ),
                    ),
                  ),
                  //
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
                        'عدد الطوب المطلوب',
                        style: TextStyle(
                            color: Colors.indigoAccent,
                            fontSize: 16
                            ,fontFamily: 'IBMPlexSansArabic'
                        ),
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
                        'حجم المبانى ÷ حجم البلوك',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16
                            ,fontFamily: 'IBMPlexSansArabic'
                        ),
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
