import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.grey,
  bool isUpperCase = true,
  double radius = 3.0,
  required Function? function,
  required String text,
}) =>
    Container(
      width: width,
      height: 50.0,
      child: MaterialButton(
        onPressed: () {
          function!();
        },
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: GoogleFonts.ibmPlexSansArabic(
            fontSize: 16,
            color:
                //Color(0xff1279D9)
                Colors.black87,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: //Color(0xFFbac5eb),
            const Color(0xFFceccd6),
        //background,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 4,
            blurRadius: 10,
            offset: const Offset(0, 3),
          )
        ],
        //Gradient
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(252, 249, 249, 0.9686274509803922),
            Color.fromRGBO(206, 205, 204, 1.0),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
    );

/////////////////////////////////////////////////////////////////////////

// ignore: non_constant_identifier_names
Widget ConcreteDropdownButton({
  // ignore: non_constant_identifier_names
  Color? DropdownColor,
  // ignore: non_constant_identifier_names
  Color? Containing_color,
  String? hint,
  double? width,
  double? height,
  // ignore: non_constant_identifier_names
  String? menue_titles_store,
  required List<String> items,
  Function? onChange,
  Function? onTap,
}) =>
    Container(
      decoration: const ShapeDecoration(
        color: Color(0xFFffb703), //(0xff7A87FB),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.0, style: BorderStyle.solid),
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
        ),
      ),
      width: width,
      height: height,
      child: DropdownButton<String>(
        underline: Container(),
        icon: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.arrow_downward,
            // textDirection: TextDirection.ltr,
            color: Colors.black,
          ),
        ),
        dropdownColor:
            DropdownColor ?? const Color(0xff7A87FB),
        focusColor:
            Containing_color ?? const Color(0xff7A87FB),
        isExpanded: true,
        itemHeight: 50,
        borderRadius: BorderRadius.circular(10),
        hint: Center(
          child: Text(
            hint ?? 'اختر نوع العنصر الخرساني',
            style: const TextStyle(fontSize: 16, color: Colors.black,fontFamily: 'IBMPlexSansArabic'),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        items: items.map((String title) {
          return DropdownMenuItem<String>(
            child: Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Text(title,
                  style: const TextStyle(
                    fontSize: 16,
                    height: 1,
                    color: Colors.white,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis),
            ),
            value: title,
          );
        }).toList(),
        onChanged: (s) {
          onChange!(s);
        },
        value: menue_titles_store,
      ),
    );

/////////////////////////////////////////////////////////////////////////

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function? onSubmit,
  Function? onChange,
  Function? onTap,
  bool isPassword = false,
  required String label,
  IconData? prefix,
  IconData? suffix,
  Function? suffixPressed,
  bool isClickable = true,
}) =>
    TextFormField(
      textAlign: TextAlign.center,
      style: const TextStyle(
          fontSize: 16 ,
          height: 1 ,
          color: Colors.black,fontFamily: 'IBMPlexSansArabic'
      ),
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      controller: controller,
      enabled: isClickable,
      onChanged: (s) {
        onChange!(s);
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(4),
        hintStyle: const TextStyle(
          color: Colors.indigoAccent,
        ),
        hintMaxLines: 5,
        labelText: (label),
        labelStyle: GoogleFonts.ibmPlexSansArabic(fontSize: 12),
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: () {
                  suffixPressed!();
                },
                icon: Icon(
                  suffix,
                ),
              )
            : null,
        border: const OutlineInputBorder(),
      ),
    );

///////////////////////////////////////////////////////////////////////

Widget resultButton({
  double width = double.infinity,
  Color? background,
  bool isUpperCase = true,
  double radius = 3.0,
  required Function? function,
  required String text,
}) =>
    Container(
      width: width,
      height: 50.0,
      child: MaterialButton(
        onPressed: () {
          function!();
        },
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: GoogleFonts.arsenal(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
    );
/////////////  ///////////////  ////////////////////  ///////////  //////////////

Widget resultTextContainer({
  required String output,
  double? height,
}) =>
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          child: Text(
            output,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xff7A87FB)),
          ),
          height: height ?? double.infinity,
          alignment: Alignment.center),
    );
////////////////////////////////////////////////////////////////////
// ignore: non_constant_identifier_names
Widget resultTextContainer_scroll({
  required String output,
  double? height,
}) =>
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          child: Text(
            output,
            style: GoogleFonts.ibmPlexSansArabic(fontSize: 12),
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xff7A87FB),
              style: BorderStyle.solid,
              width: 1.0,
            ),
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10.0),
          ),
          height: height ?? 40,
          alignment: Alignment.center),
    );

/////////////////////////////////////////////////////////Cement Content Down Button//////
