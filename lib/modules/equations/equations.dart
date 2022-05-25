import 'package:civilengineering/modules/equations/excavation_equation.dart';
import 'package:civilengineering/modules/equations/steel_equation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../shared/cubit/cubit.dart';
import '../../../../../shared/cubit/states.dart';
import 'brick_equation.dart';
import 'concrete_equation.dart';

class Equations extends StatelessWidget {
  const Equations({Key? key}) : super(key: key);

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
              title: Text(
                'المعادلات',
                style: GoogleFonts.ibmPlexSansArabic(
                    color: Colors.white, fontSize: 18),
              ),
              backgroundColor: const Color(0xff7A87FB),
              centerTitle: true,
            ),
            body: ListView(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    Image(
                      image:
                          const AssetImage('assets/images/concrete/concrete.png'),
                      alignment: Alignment.center,
                      height: screenHeight/4,
                      width: screenWidth,
                      fit: BoxFit.fill,


                    ),
                    MaterialButton(

                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ConcreteEquations()),
                        );
                      },
                      child: Container(
                        width: double.infinity,

                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xff7A87FB),
                             style: BorderStyle.solid,
                            width: 2.0,

                          ),
                          color: const Color(0xffff9f1c),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text(

                            'معادلات حساب الخرسانة',
                            style: GoogleFonts.ibmPlexSansArabic(
                                color: Colors.white,
                                fontSize: 20
                                ,fontWeight: FontWeight.bold
                            ),
                          ),

                        ),
                      ),
                      height: screenHeight/8,
                    ),


                  ],
                ),
                Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    Image(
                      image:
                      const AssetImage('assets/images/steel/st_bars.png'),
                      alignment: Alignment.center,
                      height: screenHeight/4,
                      width: screenWidth,
                      fit: BoxFit.fill,

                    ),
                    MaterialButton(

                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  SteelEquations()),
                        );
                      },
                      child: Container(


                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(

                            color: const Color(0xff7A87FB),
                            style: BorderStyle.solid,
                            width: 2.0,
                          ),
                          color: const Color(0xffff9f1c),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Center(
                          child: Text(

                            'معادلات حصر الحديد',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20
                                ,fontWeight: FontWeight.bold  ,fontFamily: 'IBMPlexSansArabic'
                            ),
                          ),

                        ),
                      ),
                    ),


                  ],
                ),
                Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    Image(
                      image:

                      const AssetImage('assets/images/brick/br_icon.png'),
                      alignment: Alignment.center,
                      height: screenHeight/4,
                      width: screenWidth,
                      fit: BoxFit.fill,
                    ),
                    MaterialButton(

                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const BrickEquations()),
                        );
                      },
                      child: Container(


                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(

                            color: const Color(0xff7A87FB),
                            style: BorderStyle.solid,
                            width: 2.0,
                          ),
                          color: const Color(0xffff9f1c),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Center(
                          child: Text(

                            'معادلات حصر الطوب',
                            style:TextStyle(
                                color: Colors.white,
                                fontSize: 20
                                ,fontWeight: FontWeight.bold  ,fontFamily: 'IBMPlexSansArabic'
                            ),
                          ),

                        ),
                      ),
                    ),







                  ],
                ),
                Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    Image(
                      image:
                      const AssetImage('assets/images/excavation/sand.png'),
                      alignment: Alignment.center,
                      height: screenHeight/4,
                      width: screenWidth,
                      fit: BoxFit.fill,


                    ),
                    MaterialButton(

                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ExcavationEquations()),
                        );
                      },
                      child: Container(


                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(

                            color: const Color(0xff7A87FB),
                            style: BorderStyle.solid,
                            width: 2.0,
                          ),
                          color: const Color(0xffff9f1c),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text(

                            'معادلات حصر الحفر',
                            style: GoogleFonts.ibmPlexSansArabic(
                                color: Colors.white,
                                fontSize: 20
                                ,fontWeight: FontWeight.bold
                            ),
                          ),

                        ),
                      ),
                    ),







                  ],
                )



              ],
            ),
          );
        },
      ),
    );
  }
}
