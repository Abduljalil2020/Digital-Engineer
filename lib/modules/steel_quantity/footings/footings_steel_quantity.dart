import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../shared/components/button_component.dart';
import '../../../shared/cubit/cubit.dart';
import '../../../shared/cubit/states.dart';

class FootingSteelQuantity extends StatelessWidget {
 final TextEditingController footLengthStLeController = TextEditingController();
 final TextEditingController footBarNumStLeController = TextEditingController();
 final TextEditingController footBarDiameterLeController = TextEditingController();
 final TextEditingController footLengthStWiController = TextEditingController();
 final TextEditingController footBarNumStWiController = TextEditingController();
 final TextEditingController footBarDiameterStWiController =
      TextEditingController();

 final TextEditingController footNumberStController = TextEditingController();

  FootingSteelQuantity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (BuildContext context, AppStates states) {},
        builder: (BuildContext context, AppStates states) {
          AppCubit cubit = AppCubit.get(context);
          var screenHeight = MediaQuery.of(context).size.height;
          return Scaffold(
            body: ListView(
              children: [
                SizedBox(
                  height: screenHeight / 13.14,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: const [
                                Image(
                                  image: AssetImage(
                                      'assets/images/footing_steel.png'),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color(0xff7A87FB),
                                        style: BorderStyle.solid,
                                        width: 1.0,
                                      ),
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Text(
                                      'الإتجاه الطولي',
                                      style: GoogleFonts.ibmPlexSansArabic(
                                          color: const Color(0xff7A87FB),
                                          fontSize: 15
                                      ),
                                    ),
                                    height: 30,
                                    alignment: Alignment.center),
                                const SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller: footLengthStLeController,
                                    label: 'طول السيخ/متر',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.footLengthStLe = num.parse(value);
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller: footBarNumStLeController,
                                    label: 'عدد الاسياخ فى\nالاتجاه الطولي',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.footBarNumStLe =
                                          num.parse(value);
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller: footBarDiameterLeController,
                                    label: 'قطرالسيخ ( مثال 12)',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.footBarDiameterLe =
                                          num.parse(value);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Container(
                                    child: defaultFormField(
                                      controller: footNumberStController,
                                      label: 'عدد القواعد',
                                      type: TextInputType.number,
                                      onChange: (value) {
                                        cubit.footNumberSt = num.parse(value);
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: const Color(0xff7A87FB),
                                        style: BorderStyle.solid,
                                        width: 1.0,
                                      ),
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Text(
                                      'الإتجاه العرضي',
                                      style: GoogleFonts.ibmPlexSansArabic(
                                          color: Colors.indigoAccent,
                                          fontSize: 15),
                                    ),
                                    height: 30,
                                    alignment: Alignment.center),
                                const SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller: footLengthStWiController,
                                    label: 'طول السيخ/متر',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.footLengthStWi =
                                          num.parse(value);
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller: footBarNumStWiController,
                                    label: 'عدد الاسياخ فى\nالاتجاه العرضي',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.footBarNumStWi =
                                          num.parse(value);
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller: footBarDiameterStWiController,
                                    label: 'قطرالسيخ ( مثال 12)',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.footBarDiameterWi =
                                          num.parse(value);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: resultButton(
                          function: () {
                            cubit.calculateFootSteelWeight();
                          },
                          text: 'احسب',
                          background: const Color(0xffffb703),
                          radius: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: resultTextContainer_scroll(
                              output:
                                  cubit.footSteelWeight.toStringAsFixed(2),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: resultTextContainer_scroll(
                                output: 'وزن حديد التسليح/كجم'),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
