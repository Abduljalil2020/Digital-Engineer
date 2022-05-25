import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../shared/components/button_component.dart';
import '../../../shared/cubit/cubit.dart';
import '../../../shared/cubit/states.dart';

class BigBrickBrickQuantity extends StatelessWidget {
 final TextEditingController blockLengthM2Controller = TextEditingController();
 final TextEditingController blockHeightM2Controller = TextEditingController();
 final TextEditingController wallLengthM2Controller = TextEditingController();
 final TextEditingController wallHeightM2Controller = TextEditingController();

  BigBrickBrickQuantity({Key? key}) : super(key: key);

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
                'حصر مباني نصف طوبة',
                style: TextStyle(
                    color: Colors.white, fontSize: 18),
              ),
              centerTitle: true,
            ),
            body: ListView(
              children: [
                const SizedBox(
                  height: 10,
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
                                    controller: blockLengthM2Controller,
                                    label: 'طول البلوك/متر',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.blokLength = double.parse(value);
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller: blockHeightM2Controller,
                                    label: 'ارتفاع البلوك/متر',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.blokHeight = double.parse(value);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: defaultFormField(
                            controller: wallHeightM2Controller,
                            label: 'ارتفاع الجدار/متر',
                            type: TextInputType.number,
                            onChange: (value) {
                              cubit.wallHeight = double.parse(value);
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
                            controller: wallLengthM2Controller,
                            label: 'طول الجدار/متر',
                            type: TextInputType.number,
                            onChange: (value) {
                              cubit.wallLength =
                                  double.parse(value);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: resultButton(
                          function: () {
                            cubit.calculateBrickM2Quantity();
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
                              output: cubit.buildingArea.toStringAsFixed(1),
                            ),
                          ),
                          Expanded(
                            child: resultTextContainer_scroll(
                                output: 'مساحةالطوب/م3'),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: resultTextContainer_scroll(
                              output: cubit.brickNumber.toStringAsFixed(1),
                            ),
                          ),
                          Expanded(
                            child: resultTextContainer_scroll(
                                output: 'عدد الطوب المطلوب'),
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
