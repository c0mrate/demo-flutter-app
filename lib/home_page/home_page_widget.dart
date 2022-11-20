import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.elasticOut,
          delay: 0.ms,
          duration: 1120.ms,
          begin: Offset(-46, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.elasticOut,
          delay: 0.ms,
          duration: 720.ms,
          begin: Offset(0, -27),
          end: Offset(0, 0),
        ),
      ],
    ),
    'choiceChipsOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 1040.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'rowOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.elasticOut,
          delay: 0.ms,
          duration: 1080.ms,
          begin: Offset(41, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
    'toggleIconOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        RotateEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'iconOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        RotateEffect(
          curve: Curves.easeOut,
          delay: 1.ms,
          duration: 860.ms,
          begin: 1,
          end: 0,
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.elasticOut,
          delay: 0.ms,
          duration: 1230.ms,
          begin: Offset(-44.99999999999999, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.elasticOut,
          delay: 0.ms,
          duration: 1240.ms,
          begin: Offset(0, 42),
          end: Offset(0, 0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.elasticOut,
          delay: 0.ms,
          duration: 1190.ms,
          begin: Offset(0, -34),
          end: Offset(0, 0),
        ),
      ],
    ),
    'iconOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.elasticOut,
          delay: 0.ms,
          duration: 1190.ms,
          begin: Offset(0, -34),
          end: Offset(0, 0),
        ),
      ],
    ),
  };
  String? choiceChipsValue;
  TextEditingController? searchController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    searchController = TextEditingController();
  }

  @override
  void dispose() {
    searchController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Drawer(
          elevation: 25,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15, 20, 15, 15),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        'https://thumbs.dreamstime.com/b/barbershop-salon-barber-hairdresser-man-mature-good-looking-model-copy-space-hair-styling-reference-beauty-grizzle-deal-208541615.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          'Andrea Davis',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Open Sans',
                                    fontSize: 16,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, _) => [
          SliverAppBar(
            pinned: false,
            floating: true,
            snap: true,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            automaticallyImplyLeading: false,
            leading: InkWell(
              onTap: () async {
                scaffoldKey.currentState!.openDrawer();
              },
              child: Icon(
                FFIcons.kmenu2,
                color: FlutterFlowTheme.of(context).lineColor,
                size: 30,
              ),
            ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation']!),
            actions: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (Theme.of(context).brightness == Brightness.light)
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                        child: InkWell(
                          onTap: () async {
                            setDarkModeSetting(context, ThemeMode.dark);
                          },
                          child: FaIcon(
                            FontAwesomeIcons.moon,
                            color: FlutterFlowTheme.of(context).lineColor,
                            size: 22,
                          ),
                        ),
                      ),
                    if (Theme.of(context).brightness == Brightness.dark)
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                        child: InkWell(
                          onTap: () async {
                            setDarkModeSetting(context, ThemeMode.light);
                          },
                          child: FaIcon(
                            FontAwesomeIcons.solidMoon,
                            color: FlutterFlowTheme.of(context).lineColor,
                            size: 22,
                          ),
                        ),
                      ),
                    InkWell(
                      onTap: () async {
                        context.pushNamed('PROFILE');
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://thumbs.dreamstime.com/b/barbershop-salon-barber-hairdresser-man-mature-good-looking-model-copy-space-hair-styling-reference-beauty-grizzle-deal-208541615.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation4']!),
              ),
            ],
            centerTitle: false,
            elevation: 0,
          )
        ],
        body: Builder(
          builder: (context) {
            return SafeArea(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 15),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Brands',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Open Sans',
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ).animateOnPageLoad(animationsMap[
                                        'textOnPageLoadAnimation1']!),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 10, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        if (FFAppState().searchonof) {
                                          setState(() =>
                                              FFAppState().searchonof = false);
                                        } else {
                                          setState(() =>
                                              FFAppState().searchonof = true);
                                        }
                                      },
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.search,
                                            color: Color(0xFFC2C2C2),
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 15, 10, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      controller: searchController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText: 'Search',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyText2,
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .searchColor,
                                        prefixIcon: Icon(
                                          Icons.search_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
                                    ),
                                  ),
                                ],
                              ).animateOnPageLoad(
                                  animationsMap['rowOnPageLoadAnimation1']!),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 5, 0, 5),
                                      child: FlutterFlowChoiceChips(
                                        initiallySelected: ['Nike'],
                                        options: [
                                          ChipData('Nike'),
                                          ChipData('Adidas'),
                                          ChipData('Converense'),
                                          ChipData('Vans')
                                        ],
                                        onChanged: (val) => setState(() =>
                                            choiceChipsValue = val?.first),
                                        selectedChipStyle: ChipStyle(
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryColor,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Open Sans',
                                                    color: Colors.white,
                                                  ),
                                          iconColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryColor,
                                          iconSize: 20,
                                          elevation: 5,
                                        ),
                                        unselectedChipStyle: ChipStyle(
                                          backgroundColor: Colors.white,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText2
                                                  .override(
                                                    fontFamily: 'Open Sans',
                                                    color: Color(0xFF323B45),
                                                  ),
                                          iconColor: Colors.black,
                                          iconSize: 18,
                                          elevation: 0,
                                        ),
                                        chipSpacing: 10,
                                        multiselect: false,
                                        initialized: choiceChipsValue != null,
                                        alignment: WrapAlignment.start,
                                      ).animateOnPageLoad(animationsMap[
                                          'choiceChipsOnPageLoadAnimation']!),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: FutureBuilder<List<ProductRecord>>(
                          future: queryProductRecordOnce(
                            queryBuilder: (productRecord) =>
                                productRecord.where('brand_name',
                                    isEqualTo: choiceChipsValue),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 35,
                                  height: 35,
                                  child: SpinKitSquareCircle(
                                    color:
                                        FlutterFlowTheme.of(context).lineColor,
                                    size: 35,
                                  ),
                                ),
                              );
                            }
                            List<ProductRecord> productProductRecordList =
                                snapshot.data!;
                            return SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    productProductRecordList.length,
                                    (productIndex) {
                                  final productProductRecord =
                                      productProductRecordList[productIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8, 0, 0, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        context.pushNamed(
                                          'ITEM_INFO',
                                          queryParams: {
                                            'productref': serializeParam(
                                              productProductRecord.reference,
                                              ParamType.DocumentReference,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0),
                                            bottomRight: Radius.circular(30),
                                            topLeft: Radius.circular(30),
                                            topRight: Radius.circular(0),
                                          ),
                                        ),
                                        child: Container(
                                          width: 200,
                                          height: 300,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color(0xFFF59292),
                                                FlutterFlowTheme.of(context)
                                                    .secondaryColor
                                              ],
                                              stops: [0, 1],
                                              begin: AlignmentDirectional(
                                                  0.34, -1),
                                              end: AlignmentDirectional(
                                                  -0.34, 1),
                                            ),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0),
                                              bottomRight: Radius.circular(30),
                                              topLeft: Radius.circular(30),
                                              topRight: Radius.circular(0),
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5, 0, 5, 5),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                InkWell(
                                                  onTap: () async {
                                                    setState(() => FFAppState()
                                                        .addToFavorite(
                                                            productProductRecord
                                                                .reference));
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      ToggleIcon(
                                                        onPressed: () async {
                                                          setState(
                                                            () => FFAppState()
                                                                    .favorite
                                                                    .contains(
                                                                        productProductRecord
                                                                            .reference)
                                                                ? FFAppState()
                                                                    .favorite
                                                                    .remove(productProductRecord
                                                                        .reference)
                                                                : FFAppState()
                                                                    .favorite
                                                                    .add(productProductRecord
                                                                        .reference),
                                                          );
                                                        },
                                                        value: FFAppState()
                                                            .favorite
                                                            .contains(
                                                                productProductRecord
                                                                    .reference),
                                                        onIcon: Icon(
                                                          Icons.favorite,
                                                          color: Colors.white,
                                                          size: 27,
                                                        ),
                                                        offIcon: Icon(
                                                          Icons.favorite_border,
                                                          color: Colors.white,
                                                          size: 27,
                                                        ),
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'toggleIconOnActionTriggerAnimation']!,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 14, 0, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Image.network(
                                                          productProductRecord
                                                              .image!,
                                                          width: 100,
                                                          height: 135,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 5, 0, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(5,
                                                                      0, 5, 0),
                                                          child: Text(
                                                            productProductRecord
                                                                .name!
                                                                .maybeHandleOverflow(
                                                                    maxChars:
                                                                        20),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 14,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 5, 0, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        '\$ ${productProductRecord.price?.toString()}',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  'Open Sans',
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 16,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 15, 0, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if (!FFAppState()
                                                          .cart
                                                          .contains(
                                                              productProductRecord
                                                                  .reference))
                                                        InkWell(
                                                          onTap: () async {
                                                            if (productProductRecord
                                                                    .reference ==
                                                                productProductRecord
                                                                    .reference) {
                                                              if (animationsMap[
                                                                      'iconOnActionTriggerAnimation'] !=
                                                                  null) {
                                                                await animationsMap[
                                                                        'iconOnActionTriggerAnimation']!
                                                                    .controller
                                                                    .forward(
                                                                        from:
                                                                            0.0);
                                                              }
                                                              setState(() => FFAppState()
                                                                  .addToCart(
                                                                      productProductRecord
                                                                          .reference));
                                                              setState(() => FFAppState()
                                                                  .cartsum = FFAppState()
                                                                      .cartsum +
                                                                  productProductRecord
                                                                      .price!);
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    'Added to cart',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Open Sans',
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                  ),
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          4050),
                                                                  backgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryColor,
                                                                  action:
                                                                      SnackBarAction(
                                                                    label:
                                                                        'Go to Cart',
                                                                    textColor:
                                                                        Color(
                                                                            0xFFE8E8E8),
                                                                    onPressed:
                                                                        () async {
                                                                      context
                                                                          .pushNamed(
                                                                        'CARD',
                                                                        extra: <
                                                                            String,
                                                                            dynamic>{
                                                                          kTransitionInfoKey:
                                                                              TransitionInfo(
                                                                            hasTransition:
                                                                                true,
                                                                            transitionType:
                                                                                PageTransitionType.bottomToTop,
                                                                          ),
                                                                        },
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                          },
                                                          child: Icon(
                                                            Icons.add_circle,
                                                            color: Colors.white,
                                                            size: 35,
                                                          ),
                                                        ).animateOnActionTrigger(
                                                          animationsMap[
                                                              'iconOnActionTriggerAnimation']!,
                                                        ),
                                                      if (FFAppState()
                                                          .cart
                                                          .contains(
                                                              productProductRecord
                                                                  .reference))
                                                        InkWell(
                                                          onTap: () async {
                                                            setState(() => FFAppState()
                                                                .removeFromCart(
                                                                    productProductRecord
                                                                        .reference));
                                                            setState(() => FFAppState()
                                                                .cartsum = FFAppState()
                                                                    .cartsum +
                                                                functions.returncartprice(
                                                                    productProductRecord
                                                                        .price!));
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(
                                                              SnackBar(
                                                                content: Text(
                                                                  'Delited in cart',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Open Sans',
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        4050),
                                                                backgroundColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryColor,
                                                              ),
                                                            );
                                                          },
                                                          child: Icon(
                                                            FFIcons
                                                                .kbasketCircled,
                                                            color: Colors.white,
                                                            size: 30,
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            ).animateOnPageLoad(
                                animationsMap['rowOnPageLoadAnimation2']!);
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 10, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Text(
                                'Most Popular',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Open Sans',
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation2']!),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 15, 20, 0),
                        child: FutureBuilder<List<ProductRecord>>(
                          future: queryProductRecordOnce(
                            queryBuilder: (productRecord) =>
                                productRecord.where('brand_name',
                                    isEqualTo: choiceChipsValue),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 35,
                                  height: 35,
                                  child: SpinKitSquareCircle(
                                    color:
                                        FlutterFlowTheme.of(context).lineColor,
                                    size: 35,
                                  ),
                                ),
                              );
                            }
                            List<ProductRecord> columnProductRecordList =
                                snapshot.data!;
                            return SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    columnProductRecordList.length,
                                    (columnIndex) {
                                  final columnProductRecord =
                                      columnProductRecordList[columnIndex];
                                  return InkWell(
                                    onTap: () async {
                                      context.pushNamed(
                                        'ITEM_INFO',
                                        queryParams: {
                                          'productref': serializeParam(
                                            columnProductRecord.reference,
                                            ParamType.DocumentReference,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 10, 0, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0),
                                                  bottomRight:
                                                      Radius.circular(30),
                                                  topLeft: Radius.circular(30),
                                                  topRight: Radius.circular(0),
                                                ),
                                              ),
                                              child: Container(
                                                width: 100,
                                                height: 100,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF6E61FA),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0),
                                                    bottomRight:
                                                        Radius.circular(30),
                                                    topLeft:
                                                        Radius.circular(30),
                                                    topRight:
                                                        Radius.circular(0),
                                                  ),
                                                  border: Border.all(
                                                    color: Colors.transparent,
                                                    width: 0,
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 0, 10, 0),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 2,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100),
                                                        ),
                                                        child: Container(
                                                          width: 80,
                                                          height: 80,
                                                          decoration:
                                                              BoxDecoration(
                                                            gradient:
                                                                LinearGradient(
                                                              colors: [
                                                                Color(
                                                                    0xFF7D71F8),
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryColor
                                                              ],
                                                              stops: [0, 1],
                                                              begin:
                                                                  AlignmentDirectional(
                                                                      0, -1),
                                                              end:
                                                                  AlignmentDirectional(
                                                                      0, 1),
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10,
                                                                        10,
                                                                        10,
                                                                        10),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                              child:
                                                                  Image.network(
                                                                columnProductRecord
                                                                    .image!,
                                                                width: 100,
                                                                height: 70,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 0,
                                                                    10, 0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Expanded(
                                                                  child: Text(
                                                                    columnProductRecord
                                                                        .name!,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Open Sans',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                          fontSize:
                                                                              14,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            5,
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      '\$ ${columnProductRecord.price?.toString()}',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Open Sans',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBtnText,
                                                                            fontSize:
                                                                                16,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 10, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .keyboard_arrow_right,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBtnText,
                                                            size: 19,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'rowOnPageLoadAnimation3']!);
                                }),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
