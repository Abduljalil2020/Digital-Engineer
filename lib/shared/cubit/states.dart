abstract class AppStates {}

class AppInitialState extends AppStates {}

/////////////////////////////////
class AppChangeDropDownValue extends AppStates {}

///////////////////////////////////Columns states//////////////
class AppChangeColumnBottomNavBarState extends AppStates {}

//////////////////////////////////SteelQuantity//////////////
class AppChangeDropDownValueForSteel extends AppStates {}

////////////////////////////////////////////////////////////////
class AppCalculateExcavationVolume extends AppStates {}

///////////////////////////////footing//////////////
class AppCalculateFootingConcreteVolume extends AppStates {}

//////////////////////////////beams///////////////////////
class AppCalculateBeamConcreteVolume extends AppStates {}

/////////////////////////////columns//////////////////////
class AppCalculateCircularColumnConcreteVolume extends AppStates {}

class AppCalculateRecColumnConcreteVolume extends AppStates {}

////////////////////////////slabs/////////////////////////
class AppCalculateSlabsConcreteVolume extends AppStates {}

/////////////////////////////
class AppChangeStateValidate extends AppStates {}

///////////////////////////////
class AppCalculateFootSteel extends AppStates {}

////////////////////////////////
class AppCalculateBeamSteel extends AppStates {}

//////////////////////////////
class AppCalculatecolumnSteel extends AppStates {}

/////////////////////////////
class AppCalculateSolidSlabSteel extends AppStates {}

///////////////////////////////
class AppCalculateFlatSlabSteel extends AppStates {}

///////////////////////////////
class AppCalculateBrickM2 extends AppStates {}

///////////////////////////////
class AppCalculateBrickM3 extends AppStates {}
