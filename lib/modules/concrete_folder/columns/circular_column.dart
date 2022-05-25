import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../shared/components/button_component.dart';
import '../../../shared/cubit/cubit.dart';
import '../../../shared/cubit/states.dart';

class CircularColumn extends StatelessWidget {
 final TextEditingController circColumnCementRatioController =
      TextEditingController();
 final TextEditingController circColumnDiameterController =
      TextEditingController();
 final  TextEditingController circColumnHeightController = TextEditingController();
 final  TextEditingController circColumnNumberController = TextEditingController();

   CircularColumn({Key? key}) : super(key: key);

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
                                    'assets/images/colum_conc.png'),
                              ),
                            ],
                          )),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                defaultFormField(
                                  controller:
                                      circColumnDiameterController,
                                  label: 'نصف القطر/متر',
                                  type: TextInputType.number,
                                  onChange: (value) {
                                    cubit.cirqColumnDiameter =
                                        num.parse(value);
                                  },
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                defaultFormField(
                                  controller:
                                      circColumnHeightController,
                                  label: 'الإرتفاع/متر',
                                  type: TextInputType.number,
                                  onChange: (value) {
                                    cubit.cirqColumnHeight =
                                        num.parse(value);
                                  },
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                defaultFormField(
                                  controller:
                                      circColumnCementRatioController,
                                  label: 'المحتوى الاسمنتي',
                                  type: TextInputType.number,
                                  onChange: (value) {
                                    cubit.cirqColumnCementRatio =
                                        num.parse(value);
                                  },
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                defaultFormField(
                                  controller:
                                      circColumnNumberController,
                                  label: 'عدد الأعمدة',
                                  type: TextInputType.number,
                                  onChange: (value) {
                                    cubit.cirqColumnNumber =
                                        num.parse(value);
                                  },
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
                          cubit.calculateCircularColumnConcreteVolume();
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
                            child: resultTextContainer_scroll(
                              output: cubit.cirqColumnConcVolume
                                  .toStringAsFixed(1),
                            ),
                          ),
                          Expanded(
                            child: resultTextContainer_scroll(
                                output: 'كمية الخرسانة/م3'),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: resultTextContainer_scroll(
                              output: cubit.cementCircleColumnVol
                                  .toStringAsFixed(1),
                            ),
                          ),
                          Expanded(
                            child: resultTextContainer_scroll(
                                output: 'كمية الأسمنت/شيكارة'),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: resultTextContainer_scroll(
                              output: cubit.gravelCirqColumnVolume
                                  .toStringAsFixed(1),
                            ),
                          ),
                          Expanded(
                            child: resultTextContainer_scroll(
                                output: 'كمية الزلط/م3'),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: resultTextContainer_scroll(
                              output: cubit.sandCircleColumnVol
                                  .toStringAsFixed(1),
                            ),
                          ),
                          Expanded(
                            child: resultTextContainer_scroll(
                                output: 'كمية الرمل/م3'),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: resultTextContainer_scroll(
                              output: cubit.waterCircleColumnVol
                                  .toStringAsFixed(1),
                            ),
                          ),
                          Expanded(
                            child: resultTextContainer_scroll(
                                output: 'كميةالمياه/م3'),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
