import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../shared/components/button_component.dart';
import '../../../shared/cubit/cubit.dart';
import '../../../shared/cubit/states.dart';

class Footing extends StatelessWidget {
  final TextEditingController footCementRatioController =
      TextEditingController();
  final TextEditingController footWidthController = TextEditingController();
  final TextEditingController footHeightController = TextEditingController();
  final TextEditingController footLengthController = TextEditingController();
  final TextEditingController footNumberController = TextEditingController();

  Footing({Key? key}) : super(key: key);

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
                                        'assets/images/footconc.png'),
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
                                                controller: footLengthController,
                                                label: 'الطول/متر',
                                                prefix: Icons.height,
                                                type: TextInputType.number,
                                                onChange: (value) {
                                                  cubit.footLength = num.parse(value);
                                                },
                                              ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: defaultFormField(
                          controller: footWidthController,
                          label: 'العرض/متر',
                          prefix: Icons.height,
                          type: TextInputType.number,
                          onChange: (value) {
                            cubit.footWidth = num.parse(value);
                          },
                        ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: defaultFormField(
                          controller: footHeightController,
                          label: 'الإرتفاع/متر',
                          prefix: Icons.height,
                          type: TextInputType.number,
                          onChange: (value) {
                            cubit.footHeight = num.parse(value);
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
                    controller: footCementRatioController,
                    label: 'المحتوى الاسمنتي',
                    type: TextInputType.number,
                    onChange: (value) {
                      cubit.footCementRatio =
                          num.parse(value);
                    },
                  ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: defaultFormField(
                      controller: footNumberController,
                      label: 'عدد القواعد',
                      prefix: Icons.height,
                      type: TextInputType.number,
                      onChange: (value) {
                        cubit.footNumber =
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
                          cubit.calculateFootingConcreteVolume();
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
                                  output: cubit.concVol.toStringAsFixed(1),
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
                                        cubit.cementFootVol.toStringAsFixed(1),
                                      ),
                                    ),
                                    Expanded(
                                      child: resultTextContainer_scroll(
                                          output: 'كمية الاسمنت/شيكارة'),
                                    )
                        ],
                      ),
                      Row(
                        children: [
                                    Expanded(
                                      child: resultTextContainer_scroll(
                                        output:
                                        cubit.gravelFootVol.toStringAsFixed(1),
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
                                        cubit.sandFootVol.toStringAsFixed(1),
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
                                        cubit.waterFootVol.toStringAsFixed(1),
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


                // const SizedBox(
                //   height: 40,
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(top: 8, left: 10, right: 10),
                //   child: Row(
                //     children: [
                //       const Expanded(
                //         flex: 4,
                //         child: SizedBox(
                //           width: double.infinity,
                //           height: double.infinity,
                //           child: Image(
                //             image: AssetImage(
                //                 'assets/images/footconc.png'),
                //             fit: BoxFit.contain,
                //           ),
                //         ),
                //       ),
                //       Expanded(
                //         flex: 1,
                //         child: defaultFormField(
                //           controller: footCementRatioController,
                //           label: 'المحتوى الاسمنتي',
                //           type: TextInputType.number,
                //           onChange: (value) {
                //             cubit.footCementRatio =
                //                 num.parse(value);
                //           },
                //         ),
                //       ),
                //       const SizedBox(
                //         height: 10,
                //       ),
                //       Padding(
                //         padding: const EdgeInsets.only(bottom: 5),
                //         child: Expanded(
                //           child: defaultFormField(
                //             controller: footNumberController,
                //             label: 'عدد القواعد',
                //             prefix: Icons.height,
                //             type: TextInputType.number,
                //             onChange: (value) {
                //               cubit.footNumber =
                //                   num.parse(value);
                //             },
                //           ),
                //         ),
                //       ),
                //       const SizedBox(
                //         width: 10,
                //       ),
                //       Column(
                //         children: [
                //           const SizedBox(
                //             height: 10,
                //           ),
                //           Expanded(
                //             child: defaultFormField(
                //               controller: footLengthController,
                //               label: 'الطول/متر',
                //               prefix: Icons.height,
                //               type: TextInputType.number,
                //               onChange: (value) {
                //                 cubit.footLength = num.parse(value);
                //               },
                //             ),
                //           ),
                //           const SizedBox(
                //             height: 10,
                //           ),
                //           Expanded(
                //             child: Container(
                //               child: defaultFormField(
                //                 controller: footWidthController,
                //                 label: 'العرض/متر',
                //                 prefix: Icons.height,
                //                 type: TextInputType.number,
                //                 onChange: (value) {
                //                   cubit.footWidth = num.parse(value);
                //                 },
                //               ),
                //             ),
                //           ),
                //           const SizedBox(
                //             height: 10,
                //           ),
                //           Expanded(
                //             child: Container(
                //               child: defaultFormField(
                //                 controller: footHeightController,
                //                 label: 'الإرتفاع/متر',
                //                 prefix: Icons.height,
                //                 type: TextInputType.number,
                //                 onChange: (value) {
                //                   cubit.footHeight = num.parse(value);
                //                 },
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 8, right: 8),
                //   child: resultButton(
                //     width: double.infinity,
                //     function: () {
                //       cubit.calculateFootingConcreteVolume();
                //     },
                //     text: 'احسب',
                //     background: const Color(0xFFE6A500),
                //     radius: 30,
                //   ),
                // ),
                // Padding(
                //   padding:
                //   const EdgeInsets.only(left: 10, right: 10, top: 8),
                //   child: Column(
                //     children: [
                //       Row(
                //         children: [
                //           Expanded(
                //             child: resultTextContainer_scroll(
                //               output: cubit.concVol.toStringAsFixed(1),
                //             ),
                //           ),
                //           Expanded(
                //             child: resultTextContainer_scroll(
                //                 output: 'كمية الخرسانة/م3'),
                //           )
                //         ],
                //       ),
                //       Row(
                //         children: [
                //         ],
                //       ),
                //       Row(
                //         children: [
                //         ],
                //       ),
                //       Row(
                //         children: [
                //         ],
                //       ),
                //       Row(
                //         children: [
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          );
        },
      ),
    );
  }
}
