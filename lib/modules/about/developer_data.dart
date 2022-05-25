import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../shared/cubit/cubit.dart';
import '../../../shared/cubit/states.dart';

class DeveloperData extends StatelessWidget {
  const DeveloperData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (BuildContext context, AppStates states) {},
        builder: (BuildContext context, AppStates states) {
          AppCubit cubit = AppCubit.get(context);

          return Scaffold(
            appBar: AppBar(
              title: Text(
                'معلومات عن المطور',
                style: GoogleFonts.ibmPlexSansArabic(
                    color: Colors.white, fontSize: 16),
              ),
              backgroundColor: const Color(0xff7A87FB),
              centerTitle: true,
              leading: (ModalRoute.of(context)?.canPop ?? false) ? const BackButton() : null,


            ),
            body: ListView(

              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 120.0,
                  width: 120.0,
                  decoration: const BoxDecoration(color:Colors.black12 ,//Colors.yellow,
                    image: DecorationImage(

                      image: AssetImage(
                          'assets/images/others/myphoto33.png',
                      ),
                      alignment: Alignment.topCenter,
                      fit: BoxFit.contain,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                  child: Text(
                    'م/محمد عبد الجليل',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),
                  ),
                ),

                Padding(
                 padding: const EdgeInsets.only(
                     left: 50,right: 50,top: 20
                 ),
                 child: Column(
                   children: [
                     const SizedBox(
                      height: 20,
                     ),
                     Row(
                       children: [
                         CircleAvatar(
            radius: 25,
            child: Material(
              shape: const CircleBorder(),
              clipBehavior: Clip.hardEdge,
              color:const Color(0xff7A87FB),
              child: InkWell(
                   onTap: () {
                         cubit.calling();
                   },
              child: const Center (child: Icon
                  (
                    Icons.call, size: 32
              )
              ),
            ), // InkWell
          ),),
                         const SizedBox(
                           width: 20,
                         ),
                         const Text(
                             'Phone Call',style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 18
                         ),
                         )
                       ],
                     ) ,
                     const SizedBox(
                       height: 20,
                     ),
                     Row(
                       children: [
                         CircleAvatar(
                           radius: 25,
                           child: Material(
                             shape: const CircleBorder(),
                             clipBehavior: Clip.hardEdge,
                             color: const Color(0xff7A87FB),
                             child: InkWell(
                               onTap: () {
                                cubit.email();
                               },
                               child: const Center (child: Icon
                                 (
                                   Icons.email, size: 32
                               )
                               ),
                             ), // InkWell
                           ),),
                         const SizedBox(
                           width: 20,
                         ),
                         const Text(
                           'Email',style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 18
                         ),
                         )

                       ],
                     ) ,
                     const SizedBox(
                       height: 20,
                     ),
                     Row(
                       children: [
                         CircleAvatar(
                           radius: 25,
                           child: Material(
                             shape: const CircleBorder(),
                             clipBehavior: Clip.hardEdge,
                             color: Colors.green,
                             child: InkWell(
                               onTap: () {
                                 cubit.whatsapp();
                               },
                               child:  const Center (
                                   child: Icon
                                 (
                                  FontAwesomeIcons.whatsapp,
                                   size: 32
                               )
                               ),
                             ), // InkWell
                           ),),
                         const SizedBox(
                           width: 20,
                         ),
                         const Text(
                           'Whatsapp',style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 18
                         ),
                         )

                       ],
                     ) ,
                     const SizedBox(
                       height: 20,
                     ),
                     Row(
                       children: [
                         CircleAvatar(
                           radius: 25,
                           child: Material(
                             shape: const CircleBorder(),
                             clipBehavior: Clip.hardEdge,
                             color: Colors.blue,
                             child: InkWell(
                               onTap: () {
                                 cubit.linkidin();
                               },
                               child:  const Center (
                                   child: Icon
                                     (
                                       FontAwesomeIcons.linkedin,
                                       size: 32
                                   )
                               ),
                             ), // InkWell
                           ),),
                         const SizedBox(
                           width: 20,
                         ),
                         const Text(
                           'LinkidIn',style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 18
                         ),
                         )

                       ],
                     ) ,



                     // Material











                     //
                   ],
                 ),
               )


              ],
            ),
          );
        },
      ),
    );
  }
}
