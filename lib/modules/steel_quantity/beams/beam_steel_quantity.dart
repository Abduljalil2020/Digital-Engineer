import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../shared/components/button_component.dart';
import '../../../shared/cubit/cubit.dart';
import '../../../shared/cubit/states.dart';

class BeamsSteelQuantity extends StatelessWidget {
final  TextEditingController beamLengthStController = TextEditingController();
 final TextEditingController beamBarNumStController = TextEditingController();
 final TextEditingController beamDiameterStController = TextEditingController();
final  TextEditingController beamDiameterStirupStController =
      TextEditingController();
final  TextEditingController beamStirupLengthStController =
      TextEditingController();
final  TextEditingController beamStirupNumStController = TextEditingController();

  BeamsSteelQuantity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (BuildContext context, AppStates states) {},
        builder: (BuildContext context, AppStates states) {
          AppCubit cubit = AppCubit.get(context);
          var screenHeight = MediaQuery.of(context).size.height;
          var screenWidth = MediaQuery.of(context).size.width;

          return Scaffold(
            body: ListView(
              children: [
                SizedBox(
                  height: screenHeight / 13.14,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5, right: 10, left: 10),
                      child: Row(
                        children: [
                          Expanded(
                              child: Column(
                            children: const [
                              Image(
                                image:
                                    AssetImage('assets/images/beam8.png'),
                              ),
                            ],
                          )),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  child: defaultFormField(
                                    controller: beamLengthStController,
                                    label: 'طول الكمرة/متر',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.beamLengthSt =
                                          num.parse(value);
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller: beamBarNumStController,
                                    label: ' عدد الاسياخ فى\n كامل الكمرة',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.beamBarNumSt =
                                          num.parse(value);
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller: beamDiameterStController,
                                    label: 'قطرالسيخ ( مثال 12)',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.beamDiameterSt =
                                          num.parse(value);
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller:
                                        beamDiameterStirupStController,
                                    label: 'قطر حديد الكانات\n( مثال 8) ',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.beamDiameterStirupSt =
                                          num.parse(value);
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: defaultFormField(
                              controller: beamStirupNumStController,
                              label: 'عدد الكانات فى\nالمتر',
                              type: TextInputType.number,
                              onChange: (value) {
                                cubit.beamStirupNumSt = num.parse(value);
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: defaultFormField(
                              controller: beamStirupLengthStController,
                              label: 'طول الكانة/متر',
                              type: TextInputType.number,
                              onChange: (value) {
                                cubit.beamStirupLengthSt =
                                    num.parse(value);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: resultButton(
                        function: () {
                          cubit.calculateBeamSteelWeight();
                        },
                        text: 'احسب',
                        background: const Color(0xFFE6A500),
                        radius: 30,
                      ),
                    ),
                  ],
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
                                  cubit.beamWeightSteel.toStringAsFixed(2),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: resultTextContainer_scroll(
                                output: 'وزن حديد التسليح/كجم'),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: resultTextContainer_scroll(
                              output: cubit.beamWeightStirupSt
                                  .toStringAsFixed(2),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: resultTextContainer_scroll(
                                output: 'وزن حديد الكانات/كجم'),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          'تم مراعاة التكثيف فى اول واخر متر من العمود '
                          'وذلك بزيادة عدد الكانات بمقدار كانتين للمتر',
                          style: TextStyle(
                            fontSize: screenWidth * 0.035,
                            color: Colors.indigoAccent,
                            fontWeight: FontWeight.bold,fontFamily: 'IBMPlexSansArabic'
                          ),
                          maxLines: 10,
                          overflow: TextOverflow.ellipsis,
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
