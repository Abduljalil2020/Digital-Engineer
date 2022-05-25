import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../shared/components/button_component.dart';
import '../../../shared/cubit/cubit.dart';
import '../../../shared/cubit/states.dart';

class Slabs extends StatelessWidget {
final  TextEditingController slabCementRatioController = TextEditingController();
final TextEditingController slabWidthController = TextEditingController();
final  TextEditingController slabHeightController = TextEditingController();
final  TextEditingController slabLengthController = TextEditingController();
final  TextEditingController slabNumberController = TextEditingController();

  Slabs({Key? key}) : super(key: key);

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
                                    'assets/images/slab_conc.png'),
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
                                    controller: slabLengthController,
                                    label: ' الطول/متر',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.slabLength = num.parse(value);
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller: slabWidthController,
                                    label: ' العرض/متر',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.slabWidth = num.parse(value);
                                    },

                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller: slabHeightController,
                                    label: 'سمك البلاطة/متر',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.slabHeight = num.parse(value);
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
                              controller: slabCementRatioController,
                              label: 'المحتوى الاسمنتي',
                              type: TextInputType.number,
                              onChange: (value) {
                                cubit.slabCementRatio = num.parse(value);
                              },

                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: defaultFormField(
                              controller: slabNumberController,
                              label: 'عدد البلاطات',
                              type: TextInputType.number,
                              onChange: (value) {
                                cubit.slabNumber = num.parse(value);
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
                          cubit.calculateSlabsConcreteVolume();
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
                              output: cubit.slabConcVol.toStringAsFixed(1),
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
                                  cubit.cementSlabVol.toStringAsFixed(1),
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
                                  cubit.gravelSlabVol.toStringAsFixed(1),
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
                              output: cubit.sandSlabVol.toStringAsFixed(1),
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
                              output: cubit.waterSlabVol.toStringAsFixed(1),
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
