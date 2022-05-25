import 'package:civilengineering/modules/brick_quantity/small_brick_m2_quan.dart';
import 'package:civilengineering/modules/brick_quantity/small_brick_m3_quantity.dart';
import 'package:civilengineering/modules/concrete_folder/columns/circular_column.dart';
import 'package:civilengineering/modules/concrete_folder/columns/rectangler_column.dart';
import 'package:civilengineering/modules/steel_quantity/beams/beam_steel_quantity.dart';
import 'package:civilengineering/modules/steel_quantity/columns/columns_steel_quantity.dart';
import 'package:civilengineering/modules/steel_quantity/footings/footings_steel_quantity.dart';
import 'package:civilengineering/modules/steel_quantity/slabs/flat_slap.dart';
import 'package:civilengineering/modules/steel_quantity/slabs/slabs_steel_Quantity.dart';
import 'package:civilengineering/modules/steel_quantity/slabs/solid_slab.dart';
import 'package:civilengineering/shared/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../modules/concrete_folder/beams/beam_quantity.dart';
import '../../modules/concrete_folder/columns/column_quantity.dart';
import '../../modules/concrete_folder/footings/footing_quantity.dart';
import '../../modules/concrete_folder/slabs/slabs.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  /////////////////////////////////////Concrete Screen Logic//////////////

  List<Widget> screens = [
    BeamQuantity(),
    Footing(),
    Slabs(),
    const ColumnQuantity(),
  ];
  List<Widget> steelScreens = [
    BeamsSteelQuantity(),
    FootingSteelQuantity(),
    const SlabsSteelQuantity(),
    ColumnSteelQuantity(),
  ];
  final PageController controller = PageController(
    initialPage: 1,
  );
  List<String> limitationItems = [
    "الاعمده",
    "الكمرات",
    "القواعد",
    "بلاطات السقف",
  ];
  String? menuTitleStore;

  void changeScreen(value) {
    menuTitleStore = value.toString();
    if (menuTitleStore == 'الاعمده') {
      controller.jumpToPage(4);
    } else if (menuTitleStore == 'بلاطات السقف') {
      controller.jumpToPage(2);
    } else if (menuTitleStore == 'الكمرات') {
      controller.jumpToPage(0);
    } else {
      controller.jumpToPage(1);
    }
    emit(AppChangeDropDownValue());
  }
  /////////////////////EXCAVATION//////////////////////////////

  dynamic excLength=0.0;
  dynamic excWidth=0.0 ;
  dynamic excHeight =0.0;
  dynamic excVolume=0.0;

  dynamic calculateExcavationVolume() {
    excVolume = (excLength * excWidth * excHeight);
    emit(AppCalculateExcavationVolume());
  }


///////////////////footing Screen Logic Concrete////////////////////////////////
  dynamic footWidth;
  dynamic footLength;
  dynamic footHeight;
  dynamic footNumber;
  dynamic footCementRatio;
  dynamic concVol = 0;
  double gravelFootVol = 0;
  double sandFootVol = 0;
  double cementFootVol = 0;
  double waterFootVol = 0;

  dynamic calculateFootingConcreteVolume() {
    concVol = (footNumber * footLength * footWidth * footHeight);
    gravelFootVol = concVol * 0.8;
    sandFootVol = (concVol * 0.4);
    cementFootVol = (concVol * footCementRatio) / 50;
    waterFootVol = (concVol * 175) / 1000;

    emit(AppCalculateFootingConcreteVolume());
  }

////////////////////////Column concrete quantity/////////////////////

  int currentIndex = 0;

  List<Widget> brickScreens = [
    SmallBrickM3BrickQuantity(),
    BigBrickBrickQuantity()
  ];
  List<Widget> slabsScreens = [
    SolidSlabSteelQuantity(),
    FlatSlabSteelQuantity(),
  ];
  List<Widget> columnScreens = [
    RectanglerColumn(),
    CircularColumn(),
  ];

  void changeIndex(int index) {
    currentIndex = index;
    emit(AppChangeColumnBottomNavBarState());
  }

  //Beam concrete quantity

  dynamic beamWidth = 0;
  dynamic beamLength = 0;

  dynamic beamHeight = 0;

  dynamic beamNumber = 0;
  dynamic beamCementRatio = 0;

  dynamic beamConcVol = 0;
  double gravelBeamVol = 0;
  double sandBeamVol = 0;
  double cementBeamVol = 0;
  double waterBeamVol = 0;

  dynamic calculateBeamConcreteVolume() {
    beamConcVol = (beamNumber * beamLength * beamWidth * beamHeight);
    gravelBeamVol = beamConcVol * 0.8;
    sandBeamVol = (beamConcVol * 0.4);
    cementBeamVol = (beamConcVol * beamCementRatio) / 50;
    waterBeamVol = (beamConcVol * 175) / 1000;

    emit(AppCalculateBeamConcreteVolume());
  }

/////////////////////////////////////////////////Circular column/////////////////////
  dynamic cirqColumnDiameter = 0;
  dynamic cirqColumnHeight = 0;

  dynamic cirqColumnNumber = 0;
  dynamic cirqColumnCementRatio = 0;

  dynamic cirqColumnConcVolume = 0;
  double gravelCirqColumnVolume = 0;
  double sandCircleColumnVol = 0;
  double cementCircleColumnVol = 0;
  double waterCircleColumnVol = 0;

  dynamic calculateCircularColumnConcreteVolume() {
    cirqColumnConcVolume = (cirqColumnNumber *
        cirqColumnHeight *
        (3.14 * cirqColumnDiameter * cirqColumnDiameter));
   gravelCirqColumnVolume = cirqColumnConcVolume * 0.8;
    sandCircleColumnVol = (cirqColumnConcVolume * 0.4);
    cementCircleColumnVol =
        (cirqColumnConcVolume * cirqColumnCementRatio) / 50;
    waterCircleColumnVol = (cirqColumnConcVolume * 175) / 1000;

    emit(AppCalculateCircularColumnConcreteVolume());
  }

///////////////////////////////////////Rectangular Column///////////////////////
  dynamic recColumnWidth = 0;
  dynamic recColumnLength = 0;
  dynamic recColumnHeight = 0;
  dynamic recColumnNumber = 0;
  dynamic recColumnCementRatio = 0;
  dynamic recColumnConcVol = 0;
  double gravelRecColumnVol = 0;
  double sandRecColumnVol = 0;
  double cementRecColumnVol = 0;
  double waterRecColumnVol = 0;

  dynamic calculateRecColumnConcreteVolume() {
    recColumnConcVol = (recColumnNumber *
        recColumnLength *
        recColumnWidth *
        recColumnHeight);
    gravelRecColumnVol = recColumnConcVol * 0.8;
    sandRecColumnVol = (recColumnConcVol * 0.4);
    cementRecColumnVol =
        (recColumnConcVol * recColumnCementRatio) / 50;
    waterRecColumnVol = (recColumnConcVol * 175) / 1000;

    emit(AppCalculateRecColumnConcreteVolume());
  }

  ////////////////////////////////////Slabs concrete quantity //////////////////////////////////////

  dynamic slabWidth = 0;
  dynamic slabLength = 0;

  dynamic slabHeight = 0;

  dynamic slabNumber = 0;
  dynamic slabCementRatio = 0;

  dynamic slabConcVol = 0;
  double sandSlabVol = 0;
  double cementSlabVol = 0;
  double waterSlabVol = 0;
  double gravelSlabVol = 0;

  dynamic calculateSlabsConcreteVolume() {
    slabConcVol = (slabNumber * slabLength * slabWidth * slabHeight);
    gravelSlabVol = slabConcVol * 0.8;
    sandSlabVol = (slabConcVol * 0.4);
    cementSlabVol = (slabConcVol * slabCementRatio) / 50;
    waterSlabVol = (slabConcVol * 175) / 1000;

    emit(AppCalculateSlabsConcreteVolume());
  }

////////////////////////////////////////////////STEEL//////////////////////

/////////////////////////////////////////FootSteel////////////////////////
  dynamic footLengthStLe = 0;

  dynamic footBarNumStLe = 0;

  dynamic footBarDiameterLe = 0;
  dynamic footLengthStWi = 0;
  dynamic footBarNumStWi = 0;

  dynamic footBarDiameterWi = 0;
  dynamic footNumberSt = 1;
  dynamic footSteelWeight = 0;

  dynamic calculateFootSteelWeight() {
    footSteelWeight = ((footLengthStLe *
                footBarNumStLe *
                (footBarDiameterLe * footBarDiameterLe / 162)) +
            (footLengthStWi * footBarNumStWi) *
                (footBarDiameterWi * footBarDiameterWi / 162)) *
        footNumberSt;
    emit(AppCalculateFootSteel());
  }

//////////////////////////////////////// Beam Steel /////////////////////////////
  dynamic beamLengthSt = 0;
  dynamic beamBarNumSt = 0;
  dynamic beamDiameterSt = 0;
  dynamic beamDiameterStirupSt = 0;
  dynamic beamStirupLengthSt = 0;
  dynamic beamStirupNumSt = 0;
  dynamic beamWeightSteel = 0;
  dynamic beamWeightStirupSt = 0;

  dynamic calculateBeamSteelWeight() {
    beamWeightSteel = (beamBarNumSt *
        beamLengthSt *
        ((beamDiameterSt * beamDiameterSt) / 162));

    beamWeightStirupSt = ((beamStirupLengthSt *
            (beamStirupNumSt + 4) *
            ((beamDiameterStirupSt * beamDiameterStirupSt) / 162)) *
        beamLengthSt);
    emit(AppCalculateBeamSteel());
  }

///////////////////////////////////COLUMN STEEL////////////////////
  dynamic columnLengthSt = 0;
  dynamic columnBarNumSt = 0;
  dynamic columnDiameterSt = 0;
  dynamic columnDiameterStirupSt = 0;
  dynamic columnStirupLengthSt = 0;
  dynamic columnStirupNumSt = 0;
  dynamic columnWeightSteel = 0;
  dynamic columnWeightStirupSt = 0;

  dynamic calculateColumnSteelWeight() {
    columnWeightSteel = (columnBarNumSt *
        columnLengthSt *
        ((columnDiameterSt * columnDiameterSt) / 162));

    columnWeightStirupSt = ((columnStirupLengthSt *
            (columnStirupNumSt + 4) *
            ((columnDiameterStirupSt * columnDiameterStirupSt) / 162)) *
        columnLengthSt);
    emit(AppCalculatecolumnSteel());
  }

////////////////////////////////////////SOLID Slap Steel ////////////////////////////
  //length direction
  dynamic solidSlabLengthStLe = 0;

  dynamic solidSlabBarNumStLe = 0;

  dynamic solidSlabBarDiameterLe = 0;
  dynamic solidSlabBarLengthLe = 0;

//width direction
  dynamic solidSlabLengthStWi = 0;
  dynamic solidSlabBarNumStWi = 0;

  dynamic solidSlabBarDiameterWi = 0;
  dynamic solidSlabBarLengthWi = 0;
  dynamic solidSlabSteelWeight = 0;

  //additional
  dynamic solidSlabAdditionalLengthStLe = 0;

  dynamic solidSlabAdditionalDiameterStLe = 0;

  dynamic solidSlabAdditionalSteelWeight = 0;

  dynamic calculateSolidSlabSteelWeight() {
    solidSlabSteelWeight = ((((solidSlabLengthStLe *
                    solidSlabBarNumStLe) +
                1) *
            (solidSlabBarLengthLe) *
            (solidSlabBarDiameterLe * solidSlabBarDiameterLe / 162)) +
        (((solidSlabLengthStWi * solidSlabBarNumStWi) + 1) *
            (solidSlabBarLengthWi) *
            (solidSlabBarDiameterWi * solidSlabBarDiameterWi / 162)));

    solidSlabAdditionalSteelWeight = (solidSlabAdditionalLengthStLe *
        ((solidSlabAdditionalDiameterStLe *
                solidSlabAdditionalDiameterStLe) /
            162));

    emit(AppCalculateSolidSlabSteel());
  }

  ///////////////////////////////////////////////FLAT SLAP//////////////////////
//down
  dynamic flatSlabLengthStLeDown = 0;

  dynamic flatSlabBarNumStLeDown = 0;

  dynamic flatSlabBarDiameterLeDown = 0;
  dynamic flatSlabBarLengthStLeDown = 0;

  dynamic flatSlabLengthStWiDown = 0;
  dynamic flatSlabBarNumStWiDown = 0;

  dynamic flatSlabBarDiameterWiDown = 0;
  dynamic flatSlabBarLengthStWiDown = 0;

  dynamic flatSlabSteelWeightDown = 0;

  //up
  dynamic flatSlabLengthStLeUp = 0;

  dynamic flatSlabBarNumStLeUp = 0;

  dynamic flatSlabBarDiameterLeUp = 0;
  dynamic flatSlabBarLengthStLeUp = 0;

  dynamic flatSlabLengthStWiUp = 0;
  dynamic flatSlabBarNumStWiUp = 0;

  dynamic flatSlabBarDiameterWiUp = 0;
  dynamic flatSlabBarLengthStWiUp = 0;

  dynamic flatSlabSteelWeightUp = 0;

//additional
  dynamic flatSlabAdditionalLengthStLe = 0;

  dynamic flatSlabAdditionalDiameterStLe = 0;

  dynamic flatSlabAdditionalSteelWeight= 0;

  dynamic calculateFlatSlabSteelWeight() {
    ///down calc steel weight //حساب وزن حديد الطبقه السفليه
    flatSlabSteelWeightDown = ((flatSlabBarLengthStLeDown *
            ((flatSlabBarNumStLeDown * flatSlabLengthStLeDown) + 1) *
            (flatSlabBarDiameterLeDown *
                flatSlabBarDiameterLeDown /
                162)) +
        (flatSlabBarLengthStWiDown *
            ((flatSlabBarNumStWiDown * flatSlabLengthStWiDown) + 1) *
            (flatSlabBarDiameterWiDown *
                flatSlabBarDiameterWiDown /
                162)));

    ///up calc steel weight //حساب وزن حديد الطبقه العلويه
    flatSlabSteelWeightUp = ((flatSlabBarLengthStLeUp *
            ((flatSlabBarNumStLeUp * flatSlabLengthStLeUp) + 1) *
            (flatSlabBarDiameterLeUp *
                flatSlabBarDiameterLeUp /
                162)) +
        (flatSlabBarLengthStWiUp *
            ((flatSlabBarNumStWiUp * flatSlabLengthStWiUp) + 1) *
            (flatSlabBarDiameterWiUp *
                flatSlabBarDiameterWiUp /
                162)));

    ///add حساب وزن الحديد الاضافى
    flatSlabAdditionalSteelWeight= (flatSlabAdditionalLengthStLe *
        ((flatSlabAdditionalDiameterStLe *
                flatSlabAdditionalDiameterStLe) /
            162));

    emit(AppCalculateFlatSlabSteel());
  }

//////////////////////BRICK//////////////////////////
  ///BRICK2
  var blokLength = 0.0;
  var blokHeight = 0.0;
  var wallLength= 0.0;
  var wallHeight = 0.0;
  var blokArea = 0.0;
  var buildingArea = 0.0;
  var brickNumber = 0.0;
  var cementQuantity = 0;
  double? calculateBrickM2Quantity() {
    blokArea = (blokLength * blokHeight);
    buildingArea = (wallLength* wallHeight);
    brickNumber = (buildingArea / blokArea);
    emit(AppCalculateBrickM2());
    return null;
  }

  ///BRICK M3

  var blokLengthM3 = 0.0;
  var blokHeightM3 = 0.0;
  var blokWidthM3 = 0.0;
   var wallLengthM3 = 0.0;
  var wallHeightM3 = 0.0;
  var wallWidthM3 = 0.0;
  var blokVolumeM3 = 0.0;
  var  buildingVolumeM3 = 0.0;
  var  brickNumberM3 = 0.0;
  double? calculateBrickM3Quantity() {
    blokVolumeM3 = (blokLengthM3 * blokHeightM3 * blokWidthM3);
     buildingVolumeM3 = (wallLengthM3 * wallHeightM3 * wallWidthM3);
     brickNumberM3 = ( buildingVolumeM3 / blokVolumeM3);
    emit(AppCalculateBrickM3());
    return null;
  }
////////////////////About Screen/////////////////////////////
  final String content =

      'دعوة لتجربة تطبيق المهندس الالكتروني على جوجل بلاى';
  void shareContent() {
    Share.share(content);

  }

  calling()async{
    const url = 'tel:+201095937158';
    if( await canLaunch(url)){
      await launch(url);
    }else{
      throw 'Could not launch $url';
    }
  }

  whatsapp()async{
    const url = "whatsapp://send?phone=+201095937158";
    if( await canLaunch(url)){
      await launch(url);
    }else{
      throw 'Could not launch $url';
    }
  }
  linkidin()async{
    {
      await launch("https://www.linkedin.com/in/mohammed-abduljalil-312251202/?lipi=urn%3Ali%3Apage%3Ad_flagship3_feed%3BL6%2BbTny2QNOHPq1Z2%2FyAew%3D%3D");
    }

}
  email()async{
    {
      {
        await launch ("mailto:mhmd.abdelnaby@hotmail.com");
     }
    }

  }
















}






