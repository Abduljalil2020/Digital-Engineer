import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../shared/components/button_component.dart';
import '../../../shared/cubit/cubit.dart';
import '../../../shared/cubit/states.dart';

class RectanglerColumn extends StatelessWidget {
  final TextEditingController recColumnCementRatioController =
      TextEditingController();
  final TextEditingController recColumnWidthController =
      TextEditingController();
  final TextEditingController recColumnHeightController =
      TextEditingController();
  final TextEditingController recColumnLengthController =
      TextEditingController();
  final TextEditingController recColumnNumberController =
      TextEditingController();

  RectanglerColumn({Key? key}) : super(key: key);

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
                            children: [
                              SizedBox(
                                height: screenHeight / 4,
                                child: const Image(
                                  image: AssetImage(
                                      'assets/images/column_rec.png'),
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Container(
                                child: defaultFormField(
                                  controller:
                                      recColumnCementRatioController,
                                  label: 'المحتوى الأسمنتي',
                                  type: TextInputType.number,
                                  onChange: (value) {
                                    cubit.recColumnCementRatio =
                                        num.parse(value);
                                  },
                                ),
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
                                    controller: recColumnLengthController,
                                    label: 'الطول/متر',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.recColumnLength =
                                          num.parse(value);
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller: recColumnWidthController,
                                    label: ' العرض/متر ',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.recColumnWidth =
                                          num.parse(value);
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller: recColumnHeightController,
                                    label: 'الإرتفاع/متر',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.recColumnHeight =
                                          num.parse(value);
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller: recColumnNumberController,
                                    label: 'عدد الأعمده',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.recColumnNumber =
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
                          cubit.calculateRecColumnConcreteVolume();
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
                              output:
                                  cubit.recColumnConcVol.toStringAsFixed(1),
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
                              output:
                                  cubit.cementRecColumnVol.toStringAsFixed(1),
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
                              output:
                                  cubit.gravelRecColumnVol.toStringAsFixed(1),
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
                              output:
                                  cubit.sandRecColumnVol.toStringAsFixed(1),
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
                              output:
                                  cubit.waterRecColumnVol.toStringAsFixed(1),
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
