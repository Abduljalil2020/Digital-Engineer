// @dart=2.9
import 'package:civilengineering/shared/bloc_observer.dart';
import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'modules/home/home.dart';

void main() {
  BlocOverrides.runZoned(
        () {  runApp( const MyApp());
         },
    blocObserver: MyBlocObserver(),
  );
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
}


class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'IBMPlexSansArabic Light',



      ),
      home: const Splash(),
    );
  }
}
