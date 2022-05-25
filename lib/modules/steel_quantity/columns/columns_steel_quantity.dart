
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../shared/components/button_component.dart';
import '../../../shared/cubit/cubit.dart';
import '../../../shared/cubit/states.dart';

class ColumnSteelQuantity extends StatelessWidget {

 final TextEditingController columnLengthStController = TextEditingController();
 final TextEditingController columnBarNumStController  = TextEditingController();
 final TextEditingController columnDiameterStController  = TextEditingController();
 final TextEditingController columnDiameterStirupStController  = TextEditingController();
 final TextEditingController columnStirupLengthStController  = TextEditingController();
 final TextEditingController columnStirupNumStController  = TextEditingController();

  ColumnSteelQuantity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (BuildContext context, AppStates state) {},
        builder: (BuildContext context, AppStates state) {
          AppCubit cubit = AppCubit.get(context);
          var screenHeight  = MediaQuery.of(context).size.height;
          var  screenWidth   = MediaQuery.of(context).size.width;

          return Scaffold(
            body: ListView(
              children: [
                SizedBox(
                  height: screenHeight  / 13.14,
                ),
                Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 5, right: 10, left: 10),
                      child: Row(
                        children: [
                          Expanded(
                              child: Column(
                            children: const [
                              Image(
                                image: AssetImage(
                                    'assets/images/colum_steel.png'),
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
                                    controller:
                                        columnBarNumStController ,
                                    label: 'عدد الاسياح فى\nكامل العمود',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.columnBarNumSt =
                                          num.parse(value);
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller: columnLengthStController,
                                    label: ' طول العمود/متر',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.columnLengthSt =
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
                                        columnDiameterStController ,
                                    label: 'قطرالسيخ ( مثال 12)',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.columnDiameterSt =
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
                                        columnDiameterStirupStController ,
                                    label: 'قطر حديد الكانات\n( مثال 8) ',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.columnDiameterStirupSt =
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
                                        columnStirupNumStController ,
                                    label: 'عدد الكانات فى\nالمتر',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.columnStirupNumSt =
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
                                        columnStirupLengthStController ,
                                    label: 'طول الكانة/متر',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.columnStirupLengthSt =
                                          num.parse(value);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: resultButton(
                        function: () {
                          cubit.calculateColumnSteelWeight();
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
                              output: cubit.columnWeightSteel
                                  .toStringAsFixed(2),
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
                              output: cubit.columnWeightStirupSt
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
                            fontSize:  screenWidth   * 0.035,
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
