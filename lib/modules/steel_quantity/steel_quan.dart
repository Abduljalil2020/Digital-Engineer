import 'package:civilengineering/shared/cubit/cubit.dart';
import 'package:civilengineering/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/components/button_component.dart';
import '../../shared/cubit/cubit.dart';

class SteelQuantity extends StatelessWidget {
  const SteelQuantity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (BuildContext context, AppStates states) {},
        builder: (BuildContext context, AppStates states) {
          AppCubit cubit = AppCubit.get(context);
          return Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: AppBar(
                  title: const Text(
                    'حصر الحديد',
                    style: TextStyle(
                        color: Colors.white, fontSize: 16,fontFamily: 'IBMPlexSansArabic'),
                  ),
                  centerTitle: true,
                  backgroundColor: const Color(0xff7A87FB)),
              body: Stack(
                children: [
                  PageView(
                    pageSnapping: false,
                    children: cubit.steelScreens,
                    controller: cubit.controller,
                    physics: const NeverScrollableScrollPhysics(),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.topRight,
                              child: ConcreteDropdownButton(
                                  menue_titles_store: cubit.menuTitleStore,
                                  items: cubit.limitationItems,
                                  width: double.infinity,
                                  height: 37,
                                  onChange: (String value) {
                                    cubit.changeScreen(value);
                                  }),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ));
        },
      ),
    );
  }
}
