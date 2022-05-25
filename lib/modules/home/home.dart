import 'package:civilengineering/modules/concrete_folder/cocrete_quantity.dart';
import 'package:civilengineering/modules/excavation_quantity/Excavating_quan.dart';
import 'package:civilengineering/modules/steel_quantity/steel_quan.dart';
import 'package:flutter/material.dart';
import '../equations/equations.dart';
import '../../shared/components/button_component.dart';
import '../about/about_us.dart';
import '../brick_quantity/brick_quantity.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) => Scaffold(
            backgroundColor: const Color(0xff7A87FB),
            body: Column(
              children: [
                Expanded(
                    flex: 1,
                    child: SafeArea(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [],
                      ),
                    )),
                const Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.all(0.0),
                      child: SizedBox(
                        height: double.infinity,
                        width: double.infinity,
                        child:
                            Image(image: AssetImage("assets/images/eng.png")),
                      ),
                    )),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: 50,
                                child: defaultButton(
                                  text: 'حصر الحديد',
                                  function: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SteelQuantity()),
                                    );
                                  },
                                  radius: 20,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 50,
                                child: defaultButton(
                                    text: 'حصر الخرسانة',
                                    function: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ConcreteQuantity()),
                                      );
                                    },
                                    radius: 20),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: 50,
                                child: defaultButton(
                                    text: 'حصر الحفر',
                                    function: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ExcavationQuantity()),
                                      );
                                    },
                                    radius: 20),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 50,
                                child: defaultButton(
                                    text: 'حصر الطوب',
                                    function: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const BrickQuantity()),
                                      );
                                    },
                                    radius: 20),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: 50,
                                child: defaultButton(
                                    text: 'عن البرنامج',
                                    function: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const About()),
                                      );
                                    },
                                    radius: 20),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 50,
                                child: defaultButton(
                                    text: 'المعادلات',
                                    function: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Equations()),
                                      );
                                    },
                                    radius: 20),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }
}
