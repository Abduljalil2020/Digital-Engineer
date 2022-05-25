import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../shared/cubit/cubit.dart';
import '../../../../../shared/cubit/states.dart';

class SteelEquations extends StatelessWidget {
  const SteelEquations({Key? key}) : super(key: key);

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
                'معادلات حصر الحديد',
                style: TextStyle(
                    color: Colors.white, fontSize: 18,fontFamily: 'IBMPlexSansArabic'),
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
                   child: const Center(
                     child: Text(
                       'وزن المتر الطولى من الحديد',
                       style: TextStyle(
                           color: Colors.indigoAccent, fontSize: 16,fontFamily: 'IBMPlexSansArabic'),
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
                       'القطرتربيع / 162',maxLines: 12,
                       style: TextStyle(
                           color: Colors.black, fontSize: 16,fontFamily: 'IBMPlexSansArabic'),
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
                       'عدد الأسياخ الكلى',
                       style: TextStyle(
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
                       ' (عدد الاسياخ في المتر × الطول (مسافة التوزيع)+1(البادى)'
                       ,maxLines: 12,
                       style: TextStyle(
                           color: Colors.black, fontSize: 16,fontFamily: 'IBMPlexSansArabic'),
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
                       'الطول الكلى للاسياخ',
                       style:TextStyle(
                           color: Colors.indigoAccent, fontSize: 16,fontFamily: 'IBMPlexSansArabic'),
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
                       ' عدد الاسياخ الكلى × طول السيخ'
                       ,maxLines: 12,
                       style: TextStyle(
                           color: Colors.black, fontSize: 16,fontFamily: 'IBMPlexSansArabic'),
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
                       'الوزن الكلى',
                       style: TextStyle(
                           color: Colors.indigoAccent, fontSize: 16,fontFamily: 'IBMPlexSansArabic'),
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
                       ' الطول الكلى للاسياخ × وزن المتر الطولى'
                       ,maxLines: 12,
                       style: TextStyle(
                           color: Colors.black, fontSize: 16,fontFamily: 'IBMPlexSansArabic'
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
