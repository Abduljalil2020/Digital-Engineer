import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../shared/components/button_component.dart';
import '../../../shared/cubit/cubit.dart';
import '../../../shared/cubit/states.dart';
class SmallBrickM3BrickQuantity extends StatelessWidget {
  final TextEditingController blockLengthM3Controller = TextEditingController();
  final TextEditingController blockHeightM3Controller = TextEditingController();
  final TextEditingController blockWidthM3Controller = TextEditingController();

  final TextEditingController wallLengthM3Controller = TextEditingController();
  final TextEditingController wallHeightM3Controller = TextEditingController();
  final TextEditingController wallWidthM3Controller = TextEditingController();

  SmallBrickM3BrickQuantity({Key? key}) : super(key: key);

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
              backgroundColor: const Color(0xff7A87FB),
              title: const Text(
                'حصر مباني طوبة',
                style: TextStyle(
                    color: Colors.white, fontSize: 18),
              ),
              centerTitle: true,
            ),
            body: ListView(
              children: [
                const SizedBox(
                  height: 15,
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
                                    'assets/images/brick/brickf.png'),
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
                                    controller: blockLengthM3Controller,
                                    label: 'طول البلوك/م',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.blokLengthM3 =
                                          double.parse(value);
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller: blockWidthM3Controller,
                                    label: 'عرض البلوك/م',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.blokWidthM3 = double.parse(value);
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller: blockHeightM3Controller,
                                    label: 'ارتفاع البلوك/م',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.blokHeightM3 =
                                          double.parse(value);
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller: wallLengthM3Controller,
                                    label: 'طول الجدار/م',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.wallLengthM3 =
                                          double.parse(value);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: defaultFormField(
                                controller: wallHeightM3Controller,
                                label: 'ارتفاع الجدار/م',
                                type: TextInputType.number,
                                onChange: (value) {
                                  cubit.wallHeightM3 = double.parse(value);
                                },
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              child: defaultFormField(
                                controller: wallWidthM3Controller,
                                label: 'عرض الجدار/م',
                                type: TextInputType.number,
                                onChange: (value) {
                                  cubit.wallWidthM3 = double.parse(value);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: resultButton(
                          function: () {
                            cubit.calculateBrickM3Quantity();
                          },
                          text: 'احسب',
                          background: const Color(0xFFE6A500),
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
                            child: resultTextContainer_scroll(
                              output:
                                  cubit.buildingVolumeM3.toStringAsFixed(2),
                            ),
                          ),
                          Expanded(
                            child: resultTextContainer_scroll(
                                output: 'حجم المبانى/م3'),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: resultTextContainer_scroll(
                              output:
                                  cubit.brickNumberM3.toStringAsFixed(2),
                            ),
                          ),
                          Expanded(
                            child: resultTextContainer_scroll(
                                output: 'عدد الطوب'),
                          )
                        ],
                      ),
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
