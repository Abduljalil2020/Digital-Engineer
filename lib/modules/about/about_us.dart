import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../shared/cubit/cubit.dart';
import '../../../../shared/cubit/states.dart';
import 'developer_data.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

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
                'عن البرنامج',
                style: GoogleFonts.ibmPlexSansArabic(
                    color: Colors.white, fontSize: 16),
              ),
              backgroundColor: const Color(0xff7A87FB),
              centerTitle: true,
              leading: (ModalRoute.of(context)?.canPop ?? false) ? const BackButton() : null,


            ),
            endDrawer:  Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  DrawerHeader(
                    decoration: const BoxDecoration(
                      color:Color(0xff7A87FB),

                    ),
                    child: Column(
                      children: const [
                        Image(
                          image: AssetImage(
                              'assets/images/others/splashh.png'
                          ,
                          ),
                         height: 100,
                          width: 100,
                          //fit: BoxFit.contain,
                        ),
                        Center(child:
                        Text('المهندس الإلكتروني',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,color: Colors.white
                        ),),


                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.account_circle,
                      color: Color(0xff7A87FB),
                    ),
                    title: const Text('معلومات عن المطور',
                      style: TextStyle(
                      fontWeight: FontWeight.bold
                    )
                      ,textDirection: TextDirection.rtl,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const DeveloperData()),
                      );
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.share,
                      color: Color(0xff7A87FB),
                    ),

                    title: const Text('مشاركة التطبيق'
                    ,textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        )

                    ),

                    onTap: () {
                      cubit.shareContent();
                    },
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.send,
                      color: Color(0xff7A87FB),
                    ),
                    title: const Text('إرسال مقترح'
                      ,textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        )

                    ),
                    onTap: () {
                      cubit.email();
                    },
                  ),

                ],
              ),
            ),
            body: Column(

              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 120.0,
                  width: 120.0,
                  decoration: const BoxDecoration(color:Color(0xff7A87FB),
                    image: DecorationImage(

                      image: AssetImage(
                        'assets/images/others/splashh.png',

                      ),
                      alignment: Alignment.topCenter,

                      fit: BoxFit.contain,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),

                const Center(
                    child: Text(
                        'المهندس الإلكتروني',
                      style: TextStyle(
                      fontWeight: FontWeight.bold,
                          fontSize: 18,
                        color: Color(0xff7A87FB)
                    ),

                    )
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      'هو برنامج مختص'
                          ' بحصر مواد البناء مثل الحديد والأسمنت والرمل والزلط والطوب وحصر'
                          ' الحفر طبقا للأسس الهندسية الصحيحة واصول الصناعة كما تم مراجعته من'
                          ' قبل متخصصين في المجال. \n تم تطويره من قبل المهندس/ محمد عبد الجليل '
                          ,textAlign:TextAlign.justify,
                        textDirection: TextDirection.rtl,

                      style: TextStyle(
                       fontSize: 16,
                        fontWeight: FontWeight.bold,height: 2
                        //letterSpacing: 1.0
                    ),

                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

                const Center(
                  child: Text(
                    'رقم الإصدار 1'
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),



              ],
            ),
          );
        },
      ),
    );
  }
}
