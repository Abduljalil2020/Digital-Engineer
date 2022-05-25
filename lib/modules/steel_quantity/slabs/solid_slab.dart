import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../shared/components/button_component.dart';
import '../../../shared/cubit/cubit.dart';
import '../../../shared/cubit/states.dart';

class SolidSlabSteelQuantity extends StatelessWidget {
 final TextEditingController solidSlabLengthLeController =
      TextEditingController();
 final TextEditingController solidSlabBarNumLeController =
      TextEditingController();
 final  TextEditingController solidSlabBarDiameterLeController =
      TextEditingController();
 final  TextEditingController solidSlabBarLengthLeController =
      TextEditingController();

 final TextEditingController solidSlabLengthWiController =
      TextEditingController();
 final  TextEditingController solidSlabBarNumWiController =
      TextEditingController();
 final TextEditingController solidSlabBarDiameterWiController =
      TextEditingController();
 final  TextEditingController solidSlabBarLengthWiController =
      TextEditingController();

 final  TextEditingController solidSlabAdditionalLengthLeController =
      TextEditingController();

 final  TextEditingController solidSlabAdditionalDiameterLeController =
      TextEditingController();

  SolidSlabSteelQuantity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

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
                                    child: const Text(
                                      'الاتجاه العرضي',
                                      style: TextStyle(
                                          color: Colors.indigoAccent,
                                          fontSize: 15,fontFamily: 'IBMPlexSansArabic'),
                                    ),
                                    height: 30,
                                    alignment: Alignment.center),
                                const SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller:
                                        solidSlabLengthWiController,
                                    label: 'العرض/متر',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.solidSlabLengthStWi =
                                          num.parse(value);
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller:
                                        solidSlabBarNumWiController,
                                    label: 'عدد الاسياخ فى\nالمتر',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.solidSlabBarNumStWi =
                                          num.parse(value);
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller:
                                        solidSlabBarLengthWiController,
                                    label: 'طول السيخ/متر',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.solidSlabBarLengthWi =
                                          num.parse(value);
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller:
                                        solidSlabBarDiameterWiController,
                                    label: 'قطرالسيخ ( مثال 12)',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.solidSlabBarDiameterWi =
                                          num.parse(value);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
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
                                    child: const Text(
                                      'الاتجاه الطولي',
                                      style: TextStyle(
                                          color: Colors.indigoAccent,
                                          fontSize: 15,fontFamily: 'IBMPlexSansArabic'),
                                    ),
                                    height: 30,
                                    alignment: Alignment.center),
                                const SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller:
                                        solidSlabLengthLeController,
                                    label: 'الطول/متر',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.solidSlabLengthStLe =
                                          num.parse(value);
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller:
                                        solidSlabBarNumLeController,
                                    label: 'عدد الاسياخ فى\nالمتر',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.solidSlabBarNumStLe =
                                          num.parse(value);
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller:
                                        solidSlabBarLengthLeController,
                                    label: 'طول السيخ/متر',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.solidSlabBarLengthLe =
                                          num.parse(value);
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller:
                                        solidSlabBarDiameterLeController,
                                    label: 'قطرالسيخ ( مثال 12)',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.solidSlabBarDiameterLe =
                                          num.parse(value);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // SizedBox(),
                      Container(
                        width: screenWidth / 1.5,
                        margin: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xff7A87FB),
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Center(
                          child: Text(
                            'الحديد الإضافي',
                            style: TextStyle(
                                color: Colors.indigoAccent, fontSize: 15,fontFamily: 'IBMPlexSansArabic'),
                          ),
                        ),
                      ),
                      // SizedBox(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: defaultFormField(
                            controller:
                                solidSlabAdditionalDiameterLeController,
                            label: 'قطرالسيخ ( مثال 12)',
                            type: TextInputType.number,
                            onChange: (value) {
                              cubit.solidSlabAdditionalDiameterStLe =
                                  num.parse(value);
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: defaultFormField(
                          controller:
                              solidSlabAdditionalLengthLeController,
                          label: 'الطول الكلى\nللحديد الإضافي/متر',
                          type: TextInputType.number,
                          onChange: (value) {
                            cubit.solidSlabAdditionalLengthStLe =
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
                      cubit.calculateSolidSlabSteelWeight();
                    },
                    text: 'احسب',
                    background: const Color(0xFFE6A500),
                    radius: 30,
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
                              output: cubit.solidSlabSteelWeight
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
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: resultTextContainer_scroll(
                              output: cubit.solidSlabAdditionalSteelWeight
                                  .toStringAsFixed(2),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: resultTextContainer_scroll(
                                output: 'وزن الحديد الاضافي/كجم'),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
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
