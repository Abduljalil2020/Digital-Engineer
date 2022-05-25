import 'package:civilengineering/shared/cubit/cubit.dart';
import 'package:civilengineering/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../shared/components/button_component.dart';

class ConcreteQuantity extends StatelessWidget {
  const ConcreteQuantity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (BuildContext context, AppStates states) {},
        builder: (BuildContext context, AppStates states) {
          AppCubit cubit = AppCubit.get(context);
          // var screen_width= MediaQuery.of(context).size.width;

          return Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: AppBar(
                  title: Text(
                    'حصر الخرسانة',
                    style: GoogleFonts.ibmPlexSansArabic(
                        color: Colors.white, fontSize: 16),
                  ),
                  centerTitle: true,
                  backgroundColor: const Color(0xff7A87FB)),
              body: Stack(
                children: [
                  PageView(
                    pageSnapping: false,
                    children: cubit.screens,
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
                                  Containing_color: Colors.deepOrangeAccent,
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
