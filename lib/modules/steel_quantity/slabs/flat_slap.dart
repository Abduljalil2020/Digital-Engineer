
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../shared/components/button_component.dart';
import '../../../shared/cubit/cubit.dart';
import '../../../shared/cubit/states.dart';

class FlatSlabSteelQuantity extends StatelessWidget {
  //down controllers
 final TextEditingController flatSlabLengthLeDownController =
      TextEditingController();
 final  TextEditingController flatSlabBarNumLeDownController =
      TextEditingController();
 final TextEditingController flatSlabBarDiameterLeDownController =
      TextEditingController();
 final TextEditingController flatSlabBarLengthLeDownController =
      TextEditingController();

 final TextEditingController flatSlabLengthWiDownController =
      TextEditingController();
 final TextEditingController flatSlabBarNumWiDownController =
      TextEditingController();
 final TextEditingController flatSlabBarDiameterWiDownController =
      TextEditingController();
 final  TextEditingController flatSlabBarLengthWiDownController =
      TextEditingController();

//up controllers
  final TextEditingController flatSlabLengthLeUpController =
      TextEditingController();
  final TextEditingController flatSlabBarNumLeUpController =
      TextEditingController();
  final TextEditingController flatSlabBarDiameterLeUpController =
      TextEditingController();
  final TextEditingController flatSlabBarLengthLeUpController =
      TextEditingController();

  final  TextEditingController flatSlabLengthWiUpController =
      TextEditingController();
  final  TextEditingController flatSlabBarNumWiUpController=
      TextEditingController();
  final  TextEditingController flatSlabBarDiameterWiUpController =
      TextEditingController();
  final  TextEditingController flatSlabBarLengthWiUpController =
      TextEditingController();

//add controllers
  final  TextEditingController flatSlabAdditionalLengthStLeController =
      TextEditingController();

  final TextEditingController flatSlabAdditionalDiameterStLeController =
      TextEditingController();

  FlatSlabSteelQuantity({Key? key}) : super(key: key);

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
                  height: (screenHeight / 13.14) + 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: screenWidth / 1.5,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xff7A87FB),
                          style: BorderStyle.solid,
                          width: 2.0,
                        ),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                        child: Text(
                          'الطبقه السفليه',
                          style: TextStyle(
                              color: Colors.indigoAccent, fontSize: 16,fontFamily: 'IBMPlexSansArabic'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
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
                                      'الاتجاه العرضى',
                                      style:  TextStyle(
                                          color: Colors.indigoAccent,
                                          fontSize: 15,fontFamily: 'IBMPlexSansArabic'),
                                    ),
                                    height: 30,
                                    alignment: Alignment.center),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller:
                                        flatSlabLengthWiDownController,
                                    label: 'العرض/متر',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.flatSlabLengthStWiDown =
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
                                        flatSlabBarNumWiDownController,
                                    label: 'عدد الاسياح فى\nالمتر',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.flatSlabBarNumStWiDown =
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
                                        flatSlabBarLengthWiDownController,
                                    label: 'طول السيخ/متر',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.flatSlabBarLengthStWiDown =
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
                                        flatSlabBarDiameterWiDownController,
                                    label: 'قطرالسيخ ( مثال 12)',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.flatSlabBarDiameterWiDown =
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
                                  height: 10,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller:
                                        flatSlabLengthLeDownController,
                                    label: 'الطول/متر',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.flatSlabLengthStLeDown =
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
                                        flatSlabBarNumLeDownController,
                                    label: 'عدد الاسياخ فى\nالمتر',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.flatSlabBarNumStLeDown =
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
                                        flatSlabBarLengthLeDownController,
                                    label: 'طول السيخ/متر',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.flatSlabBarLengthStLeDown =
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
                                        flatSlabBarDiameterLeDownController,
                                    label: 'قطرالسيخ ( مثال 12)',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.flatSlabBarDiameterLeDown =
                                          num.parse(value);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: screenWidth / 1.5,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xff7A87FB),
                                style: BorderStyle.solid,
                                width: 2.0,
                              ),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const Center(
                              child: Text(
                                'الطبقه العلويه',
                                style: TextStyle(
                                    color: Colors.indigoAccent, fontSize: 16,fontFamily: 'IBMPlexSansArabic'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
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
                                      'الاتجاه العرضى',
                                      style: TextStyle(
                                          color: Colors.indigoAccent,
                                          fontSize: 15,fontFamily: 'IBMPlexSansArabic'),
                                    ),
                                    height: 30,
                                    alignment: Alignment.center),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller:
                                        flatSlabLengthWiUpController,
                                    label: 'العرض/متر',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.flatSlabLengthStWiUp =
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
                                        flatSlabBarNumWiUpController,
                                    label: 'عدد الاسياح فى\nالمتر',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.flatSlabBarNumStWiUp =
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
                                        flatSlabBarLengthWiUpController,
                                    label: 'طول السيخ/متر',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.flatSlabBarLengthStWiUp =
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
                                        flatSlabBarDiameterWiUpController,
                                    label: 'قطرالسيخ ( مثال 12)',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.flatSlabBarDiameterWiUp =
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
                                      'الاتجاه الطولى',
                                      style: TextStyle(
                                          color: Colors.indigoAccent,
                                          fontSize: 15,fontFamily: 'IBMPlexSansArabic'),
                                    ),
                                    height: 30,
                                    alignment: Alignment.center),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: defaultFormField(
                                    controller:
                                        flatSlabLengthLeUpController,
                                    label: 'الطول/متر',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.flatSlabLengthStLeUp =
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
                                        flatSlabBarNumLeUpController,
                                    label: 'عدد الاسياخ فى\nالمتر',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.flatSlabBarNumStLeUp =
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
                                        flatSlabBarLengthLeUpController,
                                    label: 'طول السيخ/متر',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.flatSlabBarLengthStLeUp =
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
                                        flatSlabBarDiameterLeUpController,
                                    label: 'قطرالسيخ ( مثال 12)',
                                    type: TextInputType.number,
                                    onChange: (value) {
                                      cubit.flatSlabBarDiameterLeUp =
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
                      Container(
                        width: screenWidth / 1.5,
                        margin: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xff7A87FB),
                            style: BorderStyle.solid,
                            width: 2.0,
                          ),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Center(
                          child: Text(
                            'الحديد الإضافى',
                            style: TextStyle(
                                color: Colors.indigoAccent, fontSize: 16,fontFamily: 'IBMPlexSansArabic'),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
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
                            controller:
                                flatSlabAdditionalDiameterStLeController,
                            label: 'قطرالسيخ ( مثال 12)',
                            type: TextInputType.number,
                            onChange: (value) {
                              cubit.flatSlabAdditionalDiameterStLe =
                                  num.parse(value);
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
                            controller:
                                flatSlabAdditionalLengthStLeController,
                            label: 'الطول الكلى\nللحديد الإضافى/متر',
                            type: TextInputType.number,
                            onChange: (value) {
                              cubit.flatSlabAdditionalLengthStLe =
                                  num.parse(value);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: resultButton(
                    function: () {
                      cubit.calculateFlatSlabSteelWeight();
                    },
                    text: 'احسب',
                    background: const Color(0xFFE6A500),
                    radius: 30,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: resultTextContainer_scroll(
                            output: cubit.flatSlabSteelWeightDown
                                .toStringAsFixed(2),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: resultTextContainer_scroll(
                              output: 'وزن حديد الطبقة السفلية/كجم'),
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
                            output: cubit.flatSlabSteelWeightUp
                                .toStringAsFixed(2),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: resultTextContainer_scroll(
                              output: 'وزن حديد الطبقة العلوية/كجم'),
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
                            output: cubit.flatSlabAdditionalSteelWeight
                                .toStringAsFixed(2),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: resultTextContainer_scroll(
                              output: 'وزن الحديد الإضافي/كجم'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
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
