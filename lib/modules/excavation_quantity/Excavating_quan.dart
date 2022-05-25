import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../shared/components/button_component.dart';
import '../../../shared/cubit/cubit.dart';
import '../../../shared/cubit/states.dart';
final TextEditingController excLengthController = TextEditingController();
final TextEditingController excWidthController = TextEditingController();
final TextEditingController excHeightController = TextEditingController();

class ExcavationQuantity extends StatelessWidget {
  const ExcavationQuantity({Key? key}) : super(key: key);


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
              title: const Text(
                'حصر كمية الحفر',
                style: TextStyle(
                    color: Colors.white, fontSize: 16,fontFamily: 'IBMPlexSansArabic'
                ),
              ),
              centerTitle: true,
              backgroundColor: const Color(0xff7A87FB),
            ),
            body: ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 5, right: 10, left: 10),
                      child: Row(
                        children: [
                          const Expanded(
                              flex: 1,
                              child: Image(
                                image: AssetImage(
                                    'assets/images/excavation/earth.png'),
                                fit: BoxFit.contain,
                              )
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(15.0),
                                  padding: const EdgeInsets.all(6.0),
                                  child: const Text(
                                    'ابعاد قطاع الحفر',
                                    style: TextStyle(
                                        color: Colors.indigoAccent,
                                        fontSize: 15,fontFamily: 'IBMPlexSansArabic'),
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color(0xff7A87FB),
                                      style: BorderStyle.solid,
                                      width: 2.0,
                                    ),
                                    color: Colors.transparent,
                                    borderRadius:
                                        BorderRadius.circular(10.0),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller: excLengthController,
                                    label: 'الطول/م',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.excLength =
                                          num.parse(value);
                                    },



                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller: excWidthController,
                                    label: 'العرض/م',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.excWidth = num.parse(value);
                                    },

                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller: excHeightController,
                                    label: 'الارتفاع/م',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.excHeight =
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
                      padding: const EdgeInsets.all(10.0),
                      child: resultButton(
                        function: () {
                          cubit.calculateExcavationVolume();
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
                              output: cubit.excVolume.toStringAsFixed(2),
                            ),
                          ),
                          Expanded(
                            child: resultTextContainer_scroll(
                                output: 'حجم الحفر/م3'),
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
