import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'board_pronomes_model.dart';
export 'board_pronomes_model.dart';

class BoardPronomesWidget extends StatefulWidget {
  const BoardPronomesWidget({super.key});

  static String routeName = 'board_pronomes';
  static String routePath = '/boardPronomes';

  @override
  State<BoardPronomesWidget> createState() => _BoardPronomesWidgetState();
}

class _BoardPronomesWidgetState extends State<BoardPronomesWidget>
    with TickerProviderStateMixin {
  late BoardPronomesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BoardPronomesModel());

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 890.0.ms,
            begin: Offset(-100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 890.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        top: true,
        child: Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
              ))
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(ConfigWidget.routeName);
                        },
                        child: Icon(
                          Icons.settings_outlined,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 30.0,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 0.0, 100.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(ConfigWidget.routeName);
                          },
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '81zn08x1' /* Configurações */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.readexPro(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                      ),
                    ),
                    FlutterFlowLanguageSelector(
                      width: 150.0,
                      backgroundColor: Color(0xFFFFB28F),
                      borderColor: Colors.transparent,
                      dropdownIconColor: Colors.white,
                      borderRadius: 8.0,
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 13.0,
                      ),
                      hideFlags: true,
                      flagSize: 24.0,
                      flagTextGap: 8.0,
                      currentLanguage: FFLocalizations.of(context).languageCode,
                      languages: FFLocalizations.languages(),
                      onChanged: (lang) => setAppLanguage(context, lang),
                    ),
                  ],
                ),
              Container(
                decoration: BoxDecoration(),
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                      ),
                      child: Builder(
                        builder: (context) {
                          final mensagemlista =
                              FFAppState().displaymensage.toList();

                          return Wrap(
                            spacing: 0.0,
                            runSpacing: 0.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: List.generate(mensagemlista.length,
                                (mensagemlistaIndex) {
                              final mensagemlistaItem =
                                  mensagemlista[mensagemlistaIndex];
                              return Text(
                                mensagemlistaItem,
                                maxLines: 2,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.readexPro(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 40.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              );
                            }),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              if (responsiveVisibility(
                context: context,
                phone: false,
              ))
                Expanded(
                  child: Container(
                    height: 777.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 20.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.15,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.09,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFDA89),
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .displaymensage
                                                  .length ==
                                              0) {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 0,
                                              ),
                                            );
                                          } else {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 1000,
                                              ),
                                            );
                                          }

                                          FFAppState()
                                              .addToDisplaymensage(' Ela');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = 'Ela';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico}Ela ';
                                          safeSetState(() {});
                                        },
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.15,
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 1.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/ela.png',
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.07,
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.07,
                                                    fit: BoxFit.cover,
                                                    alignment:
                                                        Alignment(1.0, 0.0),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, -1.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'aba15ihz' /* ELA */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts
                                                            .readexPro(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        fontSize:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.02,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 20.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.15,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.09,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFDA89),
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .displaymensage
                                                  .length ==
                                              0) {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 0,
                                              ),
                                            );
                                          } else {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 1000,
                                              ),
                                            );
                                          }

                                          FFAppState()
                                              .addToDisplaymensage(' Elas  ');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = 'Elas';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico}Elas ';
                                          safeSetState(() {});
                                        },
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/elas.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  fit: BoxFit.cover,
                                                  alignment:
                                                      Alignment(1.0, 0.0),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'us9xspls' /* ELAS */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.readexPro(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.02,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 20.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.15,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.09,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFDA89),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .displaymensage
                                                  .length ==
                                              0) {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 0,
                                              ),
                                            );
                                          } else {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 1000,
                                              ),
                                            );
                                          }

                                          FFAppState()
                                              .addToDisplaymensage(' Eles');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = 'Eles';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico}Eles ';
                                          safeSetState(() {});
                                        },
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/eles.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '90h14ppg' /* ELES */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.readexPro(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.02,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 20.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.15,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.09,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFDA89),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .displaymensage
                                                  .length ==
                                              0) {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 0,
                                              ),
                                            );
                                          } else {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 1000,
                                              ),
                                            );
                                          }

                                          FFAppState()
                                              .addToDisplaymensage(' Ele');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = 'Ele';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico}Ele ';
                                          safeSetState(() {});
                                        },
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/ele.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ksdzenyf' /* ELE */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.readexPro(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.02,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 20.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.15,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.09,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFDA89),
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .displaymensage
                                                  .length ==
                                              0) {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 0,
                                              ),
                                            );
                                          } else {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 1000,
                                              ),
                                            );
                                          }

                                          FFAppState()
                                              .addToDisplaymensage(' Tu');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = 'Tu';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico}Tu ';
                                          safeSetState(() {});
                                        },
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/tu.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  fit: BoxFit.cover,
                                                  alignment:
                                                      Alignment(1.0, 0.0),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'm2u04k0c' /* TU */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.readexPro(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.02,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ).animateOnPageLoad(
                                  animationsMap['columnOnPageLoadAnimation']!),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 20.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.15,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.09,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFDA89),
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .displaymensage
                                                  .length ==
                                              0) {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 0,
                                              ),
                                            );
                                          } else {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 1000,
                                              ),
                                            );
                                          }

                                          FFAppState()
                                              .addToDisplaymensage(' Nós');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = 'Nós';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico}Nós ';
                                          safeSetState(() {});
                                        },
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/ns.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  fit: BoxFit.cover,
                                                  alignment:
                                                      Alignment(1.0, 0.0),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'q3bohtbp' /* NÓS */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.readexPro(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.02,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 20.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.15,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.09,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFDA89),
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .displaymensage
                                                  .length ==
                                              0) {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 0,
                                              ),
                                            );
                                          } else {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 1000,
                                              ),
                                            );
                                          }

                                          FFAppState()
                                              .addToDisplaymensage(' Vós');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = 'Vós';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico}Vós ';
                                          safeSetState(() {});
                                        },
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/vs.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  fit: BoxFit.cover,
                                                  alignment:
                                                      Alignment(1.0, 0.0),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '9rq4zefg' /* VÓS */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.readexPro(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.02,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 20.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.15,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.09,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFDA89),
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .displaymensage
                                                  .length ==
                                              0) {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 0,
                                              ),
                                            );
                                          } else {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 1000,
                                              ),
                                            );
                                          }

                                          FFAppState()
                                              .addToDisplaymensage(' Meu');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = 'Meu';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} Meu';
                                          safeSetState(() {});
                                        },
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/meu.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  fit: BoxFit.cover,
                                                  alignment:
                                                      Alignment(1.0, 0.0),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '58j0ujmj' /* MEU */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.readexPro(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.02,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 20.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.15,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.09,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFDA89),
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .displaymensage
                                                  .length ==
                                              0) {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 0,
                                              ),
                                            );
                                          } else {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 1000,
                                              ),
                                            );
                                          }

                                          FFAppState()
                                              .addToDisplaymensage(' Meus');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = 'Meus';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico}Meus ';
                                          safeSetState(() {});
                                        },
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/meus.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  fit: BoxFit.cover,
                                                  alignment:
                                                      Alignment(0.0, 1.0),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'hcjk1cq5' /* MEUS */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.readexPro(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.02,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 20.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.15,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.09,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFDA89),
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .displaymensage
                                                  .length ==
                                              0) {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 0,
                                              ),
                                            );
                                          } else {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 1000,
                                              ),
                                            );
                                          }

                                          FFAppState()
                                              .addToDisplaymensage(' Seu');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = 'Seu';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico}Seu ';
                                          safeSetState(() {});
                                        },
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/seu.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  fit: BoxFit.cover,
                                                  alignment:
                                                      Alignment(1.0, 0.0),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'atp2ilp8' /* SEU */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.readexPro(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.02,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 20.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.15,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.09,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFDA89),
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .displaymensage
                                                  .length ==
                                              0) {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 0,
                                              ),
                                            );
                                          } else {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 1000,
                                              ),
                                            );
                                          }

                                          FFAppState()
                                              .addToDisplaymensage(' Seus');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = 'Seus';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico}Seus ';
                                          safeSetState(() {});
                                        },
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '199833dj' /* SEUS */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.readexPro(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.02,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/seus.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  fit: BoxFit.cover,
                                                  alignment:
                                                      Alignment(1.0, 0.0),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 20.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.15,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.09,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFDA89),
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .displaymensage
                                                  .length ==
                                              0) {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 0,
                                              ),
                                            );
                                          } else {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 1000,
                                              ),
                                            );
                                          }

                                          FFAppState()
                                              .addToDisplaymensage(' Teu');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = ' Teu';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico}Teu ';
                                          safeSetState(() {});
                                        },
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/teu.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  fit: BoxFit.cover,
                                                  alignment:
                                                      Alignment(1.0, 0.0),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '5pm6xmcp' /* TEU */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.readexPro(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.02,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 20.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.15,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.09,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFDA89),
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .displaymensage
                                                  .length ==
                                              0) {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 0,
                                              ),
                                            );
                                          } else {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 1000,
                                              ),
                                            );
                                          }

                                          FFAppState()
                                              .addToDisplaymensage(' Teus');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = ' Teus';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico}Teus ';
                                          safeSetState(() {});
                                        },
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/teus.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  fit: BoxFit.cover,
                                                  alignment:
                                                      Alignment(1.0, 0.0),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'i9q85lc1' /* TEUS */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.readexPro(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.02,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 20.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.15,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.09,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFDA89),
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .displaymensage
                                                  .length ==
                                              0) {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 0,
                                              ),
                                            );
                                          } else {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 1000,
                                              ),
                                            );
                                          }

                                          FFAppState()
                                              .addToDisplaymensage(' Nosso');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = 'Nosso';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} Nosso';
                                          safeSetState(() {});
                                        },
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/nosso.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  fit: BoxFit.cover,
                                                  alignment:
                                                      Alignment(1.0, 0.0),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'qe11oqj8' /* NOSSO */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.readexPro(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.02,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 20.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.15,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.09,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFDA89),
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .displaymensage
                                                  .length ==
                                              0) {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 0,
                                              ),
                                            );
                                          } else {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 1000,
                                              ),
                                            );
                                          }

                                          FFAppState()
                                              .addToDisplaymensage(' Nossos');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = 'Nossos';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico}Nossos ';
                                          safeSetState(() {});
                                        },
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/nossos.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  fit: BoxFit.cover,
                                                  alignment:
                                                      Alignment(1.0, 0.0),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'k6t729xe' /* NOSSOS */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.readexPro(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.02,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 20.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.15,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.09,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFDA89),
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .displaymensage
                                                  .length ==
                                              0) {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 0,
                                              ),
                                            );
                                          } else {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 1000,
                                              ),
                                            );
                                          }

                                          FFAppState()
                                              .addToDisplaymensage(' Vosso');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = ' Vosso';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico}Vosso ';
                                          safeSetState(() {});
                                        },
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/vosso.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  fit: BoxFit.cover,
                                                  alignment:
                                                      Alignment(1.0, 0.0),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '5xqj6xaq' /* VOSSO */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.readexPro(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.02,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 20.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.15,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.09,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFDA89),
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                      ),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (FFAppState()
                                                  .displaymensage
                                                  .length ==
                                              0) {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 0,
                                              ),
                                            );
                                          } else {
                                            await Future.delayed(
                                              Duration(
                                                milliseconds: 1000,
                                              ),
                                            );
                                          }

                                          FFAppState()
                                              .addToDisplaymensage(' Vossos');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = 'Vossos';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico}Vossos ';
                                          safeSetState(() {});
                                        },
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/vossos.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  fit: BoxFit.cover,
                                                  alignment:
                                                      Alignment(1.0, 0.0),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '2acva2nq' /* VOSSOS */,
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font:
                                                          GoogleFonts.readexPro(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.02,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.15,
                                        height:
                                            MediaQuery.sizeOf(context).width *
                                                0.09,
                                        decoration: BoxDecoration(),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            FFAppState().displaymensage = [];
                                            safeSetState(() {});
                                            _model.dataSemTimeemo =
                                                await actions
                                                    .removeTimeFromDateTime(
                                              getCurrentTimestamp,
                                            );

                                            await HistoricoRecord.createDoc(
                                                    currentUserReference!)
                                                .set(createHistoricoRecordData(
                                              data: _model.dataSemTimeemo,
                                              mensagem: FFAppState().Historico,
                                              email: currentUserEmail,
                                            ));
                                            FFAppState().Historico = '';
                                            safeSetState(() {});

                                            safeSetState(() {});
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'pgp9vi9j' /* LIMPAR */,
                                          ),
                                          icon: Icon(
                                            Icons.clear,
                                            size: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.02,
                                          ),
                                          options: FFButtonOptions(
                                            height: 18.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Color(0xFFFFB28F),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleSmall
                                                .override(
                                                  font: GoogleFonts.readexPro(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontStyle,
                                                  ),
                                                  color: Colors.white,
                                                  fontSize:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.02,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                            elevation: 3.0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.15,
                                        height:
                                            MediaQuery.sizeOf(context).width *
                                                0.09,
                                        decoration: BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 1.0, 0.0, 0.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              FFAppState()
                                                  .removeFromDisplaymensage(
                                                      FFAppState()
                                                          .displaymensage
                                                          .lastOrNull!);
                                              safeSetState(() {});
                                            },
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              't5w0kaxg' /* VOLTAR */,
                                            ),
                                            icon: Icon(
                                              Icons.repeat,
                                              size: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.02,
                                            ),
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Color(0xFFFFB28F),
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    font: GoogleFonts.readexPro(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontStyle,
                                                    ),
                                                    color: Colors.white,
                                                    fontSize: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.02,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontStyle,
                                                  ),
                                              elevation: 3.0,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  if (FFAppState().contador == 0)
                                    Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState().contador =
                                                FFAppState().contador + 1;
                                            safeSetState(() {});
                                            await actions.textToSpeechAction(
                                              FFAppState()
                                                  .displaymensage
                                                  .toList(),
                                            );
                                            FFAppState().contador =
                                                FFAppState().contador + -1;
                                            safeSetState(() {});
                                          },
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.15,
                                            height: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.09,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFFB28F),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.02, 0.11),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(30.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'qhdkstra' /* PLAY */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Colors
                                                                    .white,
                                                                fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.02,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0.0,
                                                                0.0,
                                                                valueOrDefault<
                                                                    double>(
                                                                  MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.06,
                                                                  0.0,
                                                                ),
                                                                0.0),
                                                    child: Icon(
                                                      Icons.play_arrow,
                                                      color: Colors.white,
                                                      size: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.02,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  if (FFAppState().contador == 1)
                                    Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await actions.stopTextToSpeech();
                                            FFAppState().contador =
                                                FFAppState().contador + -1;
                                            safeSetState(() {});
                                          },
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.15,
                                            height: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.09,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFFB28F),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -0.02, 0.11),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(30.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '1kdc572l' /* PARAR */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Colors
                                                                    .white,
                                                                fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.02,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0.0,
                                                                0.0,
                                                                valueOrDefault<
                                                                    double>(
                                                                  MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.07,
                                                                  0.0,
                                                                ),
                                                                0.0),
                                                    child: Icon(
                                                      Icons.stop,
                                                      color: Colors.white,
                                                      size: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.02,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.15,
                                        height:
                                            MediaQuery.sizeOf(context).width *
                                                0.09,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            context.safePop();
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            '3f0x6p3u' /* ANTERIOR */,
                                          ),
                                          icon: Icon(
                                            Icons.chevron_left,
                                            size: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.02,
                                          ),
                                          options: FFButtonOptions(
                                            height: 18.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Color(0xFFFFB28F),
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleSmall
                                                .override(
                                                  font: GoogleFonts.readexPro(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontStyle,
                                                  ),
                                                  color: Colors.white,
                                                  fontSize:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.02,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                            elevation: 3.0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                              TemasCaaWidget.routeName);
                                        },
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.15,
                                          height:
                                              MediaQuery.sizeOf(context).width *
                                                  0.09,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF5A85A9),
                                            borderRadius:
                                                BorderRadius.circular(24.0),
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(60.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'y988xes4' /* PRANCHAS CAA */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font: GoogleFonts
                                                                    .readexPro(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Colors
                                                                    .white,
                                                                fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.015,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Icon(
                                                      Icons.display_settings,
                                                      color: Colors.white,
                                                      size: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.02,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Container(
                  width: 384.0,
                  height: 629.0,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: Container(
                                  width: 70.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      FFAppState().displaymensage = [];
                                      safeSetState(() {});
                                      _model.dataSemTimepronmob =
                                          await actions.removeTimeFromDateTime(
                                        getCurrentTimestamp,
                                      );

                                      await HistoricoRecord.createDoc(
                                              currentUserReference!)
                                          .set(createHistoricoRecordData(
                                        data: _model.dataSemTimepronmob,
                                        mensagem: FFAppState().Historico,
                                        email: currentUserEmail,
                                      ));
                                      FFAppState().Historico = '';
                                      safeSetState(() {});

                                      safeSetState(() {});
                                    },
                                    text: '',
                                    icon: Icon(
                                      Icons.clear,
                                      size: 20.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: 18.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Color(0xFFFFB28F),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            font: GoogleFonts.readexPro(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                            ),
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: Container(
                                  width: 70.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 1.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        FFAppState().removeFromDisplaymensage(
                                            FFAppState()
                                                .displaymensage
                                                .lastOrNull!);
                                        safeSetState(() {});
                                      },
                                      text: '',
                                      icon: Icon(
                                        Icons.repeat,
                                        size: 20.0,
                                      ),
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0xFFFFB28F),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              font: GoogleFonts.readexPro(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                              color: Colors.white,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                            ),
                                        elevation: 3.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            if (FFAppState().contador == 0)
                              Align(
                                alignment: AlignmentDirectional(1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      FFAppState().contador =
                                          FFAppState().contador + 1;
                                      safeSetState(() {});
                                      await actions.textToSpeechAction(
                                        FFAppState().displaymensage.toList(),
                                      );
                                      FFAppState().contador =
                                          FFAppState().contador + -1;
                                      safeSetState(() {});
                                    },
                                    child: Container(
                                      width: 70.0,
                                      height: 80.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFB28F),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Icon(
                                              Icons.play_arrow,
                                              color: Colors.white,
                                              size: 24.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            if (FFAppState().contador == 1)
                              Align(
                                alignment: AlignmentDirectional(1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await actions.stopTextToSpeech();
                                      FFAppState().contador =
                                          FFAppState().contador + -1;
                                      safeSetState(() {});
                                    },
                                    child: Container(
                                      width: 70.0,
                                      height: 80.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFB28F),
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Icon(
                                              Icons.stop,
                                              color: Colors.white,
                                              size: 24.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ).animateOnPageLoad(
                            animationsMap['rowOnPageLoadAnimation']!),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Container(
                          height: 503.0,
                          decoration: BoxDecoration(),
                          child: GridView(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              crossAxisSpacing: 10.0,
                              mainAxisSpacing: 10.0,
                              childAspectRatio: 1.0,
                            ),
                            scrollDirection: Axis.horizontal,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 20.0, 0.0),
                                child: Container(
                                  width: 140.0,
                                  height: 110.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFDA89),
                                  ),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (FFAppState().displaymensage.length ==
                                          0) {
                                        await Future.delayed(
                                          Duration(
                                            milliseconds: 0,
                                          ),
                                        );
                                      } else {
                                        await Future.delayed(
                                          Duration(
                                            milliseconds: 1000,
                                          ),
                                        );
                                      }

                                      FFAppState().addToDisplaymensage(' Ele');
                                      safeSetState(() {});
                                      FFAppState().buffer = '';
                                      safeSetState(() {});
                                      FFAppState().buffer = 'Ele';
                                      safeSetState(() {});
                                      await actions.speakText(
                                        FFAppState().buffer,
                                      );
                                      FFAppState().Historico =
                                          '${FFAppState().Historico}Ele ';
                                      safeSetState(() {});
                                    },
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 1.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/ele.png',
                                              width: 80.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '11t1ew12' /* ELE */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.readexPro(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  fontSize: 25.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 20.0, 0.0),
                                child: Container(
                                  width: 140.0,
                                  height: 110.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFDA89),
                                  ),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (FFAppState().displaymensage.length ==
                                          0) {
                                        await Future.delayed(
                                          Duration(
                                            milliseconds: 0,
                                          ),
                                        );
                                      } else {
                                        await Future.delayed(
                                          Duration(
                                            milliseconds: 1000,
                                          ),
                                        );
                                      }

                                      FFAppState().addToDisplaymensage(' Eles');
                                      safeSetState(() {});
                                      FFAppState().buffer = '';
                                      safeSetState(() {});
                                      FFAppState().buffer = 'Eles';
                                      safeSetState(() {});
                                      await actions.speakText(
                                        FFAppState().buffer,
                                      );
                                      FFAppState().Historico =
                                          '${FFAppState().Historico}Eles ';
                                      safeSetState(() {});
                                    },
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-0.01, 1.14),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/eles.png',
                                              width: 80.0,
                                              fit: BoxFit.cover,
                                              alignment: Alignment(0.0, 1.0),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'ed3namtq' /* ELES */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.readexPro(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  fontSize: 25.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 20.0, 0.0),
                                child: Container(
                                  width: 140.0,
                                  height: 110.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFDA89),
                                  ),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      FFAppState().addToDisplaymensage(' Ela');
                                      safeSetState(() {});
                                    },
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 1.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (FFAppState()
                                                      .displaymensage
                                                      .length ==
                                                  0) {
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 0,
                                                  ),
                                                );
                                              } else {
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 1000,
                                                  ),
                                                );
                                              }

                                              FFAppState()
                                                  .addToDisplaymensage(' Ela');
                                              safeSetState(() {});
                                              FFAppState().buffer = '';
                                              safeSetState(() {});
                                              FFAppState().buffer = 'Ela';
                                              safeSetState(() {});
                                              await actions.speakText(
                                                FFAppState().buffer,
                                              );
                                              FFAppState().Historico =
                                                  '${FFAppState().Historico}Ela ';
                                              safeSetState(() {});
                                            },
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                'assets/images/ela.png',
                                                width: 80.0,
                                                fit: BoxFit.cover,
                                                alignment: Alignment(1.0, 0.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'pleg1ckx' /* ELA */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.readexPro(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  fontSize: 25.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 20.0, 0.0),
                                child: Container(
                                  width: 140.0,
                                  height: 110.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFDA89),
                                  ),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (FFAppState().displaymensage.length ==
                                          0) {
                                        await Future.delayed(
                                          Duration(
                                            milliseconds: 0,
                                          ),
                                        );
                                      } else {
                                        await Future.delayed(
                                          Duration(
                                            milliseconds: 1000,
                                          ),
                                        );
                                      }

                                      FFAppState()
                                          .addToDisplaymensage(' Elas  ');
                                      safeSetState(() {});
                                      FFAppState().buffer = '';
                                      safeSetState(() {});
                                      FFAppState().buffer = 'Elas';
                                      safeSetState(() {});
                                      await actions.speakText(
                                        FFAppState().buffer,
                                      );
                                      FFAppState().Historico =
                                          '${FFAppState().Historico}Elas ';
                                      safeSetState(() {});
                                    },
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 1.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/elas.png',
                                              width: 80.0,
                                              fit: BoxFit.cover,
                                              alignment: Alignment(1.0, 0.0),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '0bji0rm8' /* ELAS */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.readexPro(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  fontSize: 25.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 20.0, 0.0),
                                child: Container(
                                  width: 140.0,
                                  height: 110.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFDA89),
                                  ),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (FFAppState().displaymensage.length ==
                                          0) {
                                        await Future.delayed(
                                          Duration(
                                            milliseconds: 0,
                                          ),
                                        );
                                      } else {
                                        await Future.delayed(
                                          Duration(
                                            milliseconds: 1000,
                                          ),
                                        );
                                      }

                                      FFAppState().addToDisplaymensage(' Tu');
                                      safeSetState(() {});
                                      FFAppState().buffer = '';
                                      safeSetState(() {});
                                      FFAppState().buffer = 'Tu';
                                      safeSetState(() {});
                                      await actions.speakText(
                                        FFAppState().buffer,
                                      );
                                      FFAppState().Historico =
                                          '${FFAppState().Historico}Tu ';
                                      safeSetState(() {});
                                    },
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 1.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/tu.png',
                                              width: 80.0,
                                              fit: BoxFit.cover,
                                              alignment: Alignment(1.0, 0.0),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'vrwv7jme' /* TU */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.readexPro(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  fontSize: 25.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 20.0, 0.0),
                                child: Container(
                                  width: 140.0,
                                  height: 110.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFDA89),
                                  ),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (FFAppState().displaymensage.length ==
                                          0) {
                                        await Future.delayed(
                                          Duration(
                                            milliseconds: 0,
                                          ),
                                        );
                                      } else {
                                        await Future.delayed(
                                          Duration(
                                            milliseconds: 1000,
                                          ),
                                        );
                                      }

                                      FFAppState().addToDisplaymensage(' Nós');
                                      safeSetState(() {});
                                      FFAppState().buffer = '';
                                      safeSetState(() {});
                                      FFAppState().buffer = 'Nós';
                                      safeSetState(() {});
                                      await actions.speakText(
                                        FFAppState().buffer,
                                      );
                                      FFAppState().Historico =
                                          '${FFAppState().Historico}Nós ';
                                      safeSetState(() {});
                                    },
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 1.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/ns.png',
                                              width: 80.0,
                                              fit: BoxFit.cover,
                                              alignment: Alignment(1.0, 0.0),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '9i4waca0' /* NÓS */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.readexPro(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  fontSize: 25.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 20.0, 0.0),
                                child: Container(
                                  width: 140.0,
                                  height: 110.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFDA89),
                                  ),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (FFAppState().displaymensage.length ==
                                          0) {
                                        await Future.delayed(
                                          Duration(
                                            milliseconds: 0,
                                          ),
                                        );
                                      } else {
                                        await Future.delayed(
                                          Duration(
                                            milliseconds: 1000,
                                          ),
                                        );
                                      }

                                      FFAppState().addToDisplaymensage(' Vós');
                                      safeSetState(() {});
                                      FFAppState().buffer = '';
                                      safeSetState(() {});
                                      FFAppState().buffer = 'Vós';
                                      safeSetState(() {});
                                      await actions.speakText(
                                        FFAppState().buffer,
                                      );
                                      FFAppState().Historico =
                                          '${FFAppState().Historico}Vós ';
                                      safeSetState(() {});
                                    },
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 1.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/vs.png',
                                              width: 80.0,
                                              fit: BoxFit.cover,
                                              alignment: Alignment(1.0, 0.0),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'o35qp70o' /* VÓS */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.readexPro(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    fontSize: 25.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 20.0, 0.0),
                                child: Container(
                                  width: 140.0,
                                  height: 110.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFDA89),
                                  ),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (FFAppState().displaymensage.length ==
                                          0) {
                                        await Future.delayed(
                                          Duration(
                                            milliseconds: 0,
                                          ),
                                        );
                                      } else {
                                        await Future.delayed(
                                          Duration(
                                            milliseconds: 1000,
                                          ),
                                        );
                                      }

                                      FFAppState().addToDisplaymensage(' Meu');
                                      safeSetState(() {});
                                      FFAppState().buffer = '';
                                      safeSetState(() {});
                                      FFAppState().buffer = 'Meu';
                                      safeSetState(() {});
                                      await actions.speakText(
                                        FFAppState().buffer,
                                      );
                                      FFAppState().Historico =
                                          '${FFAppState().Historico} Meu';
                                      safeSetState(() {});
                                    },
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 1.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/meu.png',
                                              width: 80.0,
                                              fit: BoxFit.cover,
                                              alignment: Alignment(1.0, 0.0),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '85bta7uz' /* MEU */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.readexPro(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  fontSize: 25.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 20.0, 0.0),
                                child: Container(
                                  width: 140.0,
                                  height: 110.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFDA89),
                                  ),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (FFAppState().displaymensage.length ==
                                          0) {
                                        await Future.delayed(
                                          Duration(
                                            milliseconds: 0,
                                          ),
                                        );
                                      } else {
                                        await Future.delayed(
                                          Duration(
                                            milliseconds: 1000,
                                          ),
                                        );
                                      }

                                      FFAppState().addToDisplaymensage(' Meus');
                                      safeSetState(() {});
                                      FFAppState().buffer = '';
                                      safeSetState(() {});
                                      FFAppState().buffer = 'Meus';
                                      safeSetState(() {});
                                      await actions.speakText(
                                        FFAppState().buffer,
                                      );
                                      FFAppState().Historico =
                                          '${FFAppState().Historico}Meus ';
                                      safeSetState(() {});
                                    },
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 1.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/meu.png',
                                              width: 80.0,
                                              fit: BoxFit.cover,
                                              alignment: Alignment(1.0, 0.0),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '22rxauc7' /* MEUS */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.readexPro(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  fontSize: 25.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 20.0, 0.0),
                                child: Container(
                                  width: 140.0,
                                  height: 110.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFDA89),
                                  ),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (FFAppState().displaymensage.length ==
                                          0) {
                                        await Future.delayed(
                                          Duration(
                                            milliseconds: 0,
                                          ),
                                        );
                                      } else {
                                        await Future.delayed(
                                          Duration(
                                            milliseconds: 1000,
                                          ),
                                        );
                                      }

                                      FFAppState().addToDisplaymensage(' Seu');
                                      safeSetState(() {});
                                      FFAppState().buffer = '';
                                      safeSetState(() {});
                                      FFAppState().buffer = 'Seu';
                                      safeSetState(() {});
                                      await actions.speakText(
                                        FFAppState().buffer,
                                      );
                                      FFAppState().Historico =
                                          '${FFAppState().Historico}Seu ';
                                      safeSetState(() {});
                                    },
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 1.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/seu.png',
                                              width: 80.0,
                                              fit: BoxFit.cover,
                                              alignment: Alignment(1.0, 0.0),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '4j79fkmn' /* SEU */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.readexPro(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  fontSize: 25.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 20.0, 0.0),
                                child: Container(
                                  width: 140.0,
                                  height: 110.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFDA89),
                                  ),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (FFAppState().displaymensage.length ==
                                          0) {
                                        await Future.delayed(
                                          Duration(
                                            milliseconds: 0,
                                          ),
                                        );
                                      } else {
                                        await Future.delayed(
                                          Duration(
                                            milliseconds: 1000,
                                          ),
                                        );
                                      }

                                      FFAppState().addToDisplaymensage(' Seus');
                                      safeSetState(() {});
                                      FFAppState().buffer = '';
                                      safeSetState(() {});
                                      FFAppState().buffer = 'Seus';
                                      safeSetState(() {});
                                      await actions.speakText(
                                        FFAppState().buffer,
                                      );
                                      FFAppState().Historico =
                                          '${FFAppState().Historico}Seus ';
                                      safeSetState(() {});
                                    },
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '3ffw7l2h' /* SEUS */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.readexPro(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  fontSize: 25.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 1.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/seus.png',
                                              width: 80.0,
                                              fit: BoxFit.cover,
                                              alignment: Alignment(1.0, 0.0),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 20.0, 0.0),
                                child: Container(
                                  width: 140.0,
                                  height: 110.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFDA89),
                                  ),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (FFAppState().displaymensage.length ==
                                          0) {
                                        await Future.delayed(
                                          Duration(
                                            milliseconds: 0,
                                          ),
                                        );
                                      } else {
                                        await Future.delayed(
                                          Duration(
                                            milliseconds: 1000,
                                          ),
                                        );
                                      }

                                      FFAppState().addToDisplaymensage(' Teu');
                                      safeSetState(() {});
                                      FFAppState().buffer = '';
                                      safeSetState(() {});
                                      FFAppState().buffer = ' Teu';
                                      safeSetState(() {});
                                      await actions.speakText(
                                        FFAppState().buffer,
                                      );
                                      FFAppState().Historico =
                                          '${FFAppState().Historico}Teu ';
                                      safeSetState(() {});
                                    },
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 1.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/teu.png',
                                              width: 80.0,
                                              fit: BoxFit.cover,
                                              alignment: Alignment(1.0, 0.0),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '1zq3qn2f' /* TEU */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.readexPro(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  fontSize: 25.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 20.0, 0.0),
                                child: Container(
                                  width: 140.0,
                                  height: 110.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFDA89),
                                  ),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (FFAppState().displaymensage.length ==
                                          0) {
                                        await Future.delayed(
                                          Duration(
                                            milliseconds: 0,
                                          ),
                                        );
                                      } else {
                                        await Future.delayed(
                                          Duration(
                                            milliseconds: 1000,
                                          ),
                                        );
                                      }

                                      FFAppState().addToDisplaymensage(' Teus');
                                      safeSetState(() {});
                                      FFAppState().buffer = '';
                                      safeSetState(() {});
                                      FFAppState().buffer = ' Teus';
                                      safeSetState(() {});
                                      await actions.speakText(
                                        FFAppState().buffer,
                                      );
                                      FFAppState().Historico =
                                          '${FFAppState().Historico}Teus ';
                                      safeSetState(() {});
                                    },
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 1.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/teus.png',
                                              width: 80.0,
                                              fit: BoxFit.cover,
                                              alignment: Alignment(1.0, 0.0),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'ullecqk9' /* TEUS */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.readexPro(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  fontSize: 25.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 20.0, 0.0),
                                child: Container(
                                  width: 140.0,
                                  height: 110.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFDA89),
                                  ),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (FFAppState().displaymensage.length ==
                                          0) {
                                        await Future.delayed(
                                          Duration(
                                            milliseconds: 0,
                                          ),
                                        );
                                      } else {
                                        await Future.delayed(
                                          Duration(
                                            milliseconds: 1000,
                                          ),
                                        );
                                      }

                                      FFAppState()
                                          .addToDisplaymensage(' Nosso');
                                      safeSetState(() {});
                                      FFAppState().buffer = '';
                                      safeSetState(() {});
                                      FFAppState().buffer = 'Nosso';
                                      safeSetState(() {});
                                      await actions.speakText(
                                        FFAppState().buffer,
                                      );
                                      FFAppState().Historico =
                                          '${FFAppState().Historico} Nosso';
                                      safeSetState(() {});
                                    },
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 1.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/nosso.png',
                                              width: 80.0,
                                              fit: BoxFit.cover,
                                              alignment: Alignment(1.0, 0.0),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'mx7plf17' /* NOSSO */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.readexPro(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 20.0, 0.0),
                                child: Container(
                                  width: 140.0,
                                  height: 110.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFDA89),
                                  ),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (FFAppState().displaymensage.length ==
                                          0) {
                                        await Future.delayed(
                                          Duration(
                                            milliseconds: 0,
                                          ),
                                        );
                                      } else {
                                        await Future.delayed(
                                          Duration(
                                            milliseconds: 1000,
                                          ),
                                        );
                                      }

                                      FFAppState()
                                          .addToDisplaymensage(' Nossos');
                                      safeSetState(() {});
                                      FFAppState().buffer = '';
                                      safeSetState(() {});
                                      FFAppState().buffer = 'Nossos';
                                      safeSetState(() {});
                                      await actions.speakText(
                                        FFAppState().buffer,
                                      );
                                      FFAppState().Historico =
                                          '${FFAppState().Historico}Nossos ';
                                      safeSetState(() {});
                                    },
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 1.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/nossos.png',
                                              width: 80.0,
                                              fit: BoxFit.cover,
                                              alignment: Alignment(1.0, 0.0),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'kr5hhcn5' /* NOSSOS */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.readexPro(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 20.0, 0.0),
                                child: Container(
                                  width: 140.0,
                                  height: 110.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFDA89),
                                  ),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (FFAppState().displaymensage.length ==
                                          0) {
                                        await Future.delayed(
                                          Duration(
                                            milliseconds: 0,
                                          ),
                                        );
                                      } else {
                                        await Future.delayed(
                                          Duration(
                                            milliseconds: 1000,
                                          ),
                                        );
                                      }

                                      FFAppState()
                                          .addToDisplaymensage(' Vosso');
                                      safeSetState(() {});
                                      FFAppState().buffer = '';
                                      safeSetState(() {});
                                      FFAppState().buffer = ' Vosso';
                                      safeSetState(() {});
                                      await actions.speakText(
                                        FFAppState().buffer,
                                      );
                                      FFAppState().Historico =
                                          '${FFAppState().Historico}Vosso ';
                                      safeSetState(() {});
                                    },
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 1.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/vosso.png',
                                              width: 75.0,
                                              fit: BoxFit.cover,
                                              alignment: Alignment(1.0, 0.0),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'adzuxix8' /* VOSSO */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.readexPro(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 20.0, 0.0),
                                child: Container(
                                  width: 140.0,
                                  height: 110.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFDA89),
                                  ),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (FFAppState().displaymensage.length ==
                                          0) {
                                        await Future.delayed(
                                          Duration(
                                            milliseconds: 0,
                                          ),
                                        );
                                      } else {
                                        await Future.delayed(
                                          Duration(
                                            milliseconds: 1000,
                                          ),
                                        );
                                      }

                                      FFAppState()
                                          .addToDisplaymensage(' Vossos');
                                      safeSetState(() {});
                                      FFAppState().buffer = '';
                                      safeSetState(() {});
                                      FFAppState().buffer = 'Vossos';
                                      safeSetState(() {});
                                      await actions.speakText(
                                        FFAppState().buffer,
                                      );
                                      FFAppState().Historico =
                                          '${FFAppState().Historico}Vossos ';
                                      safeSetState(() {});
                                    },
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 1.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/vossos.png',
                                              width: 75.0,
                                              fit: BoxFit.cover,
                                              alignment: Alignment(1.0, 0.0),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'idsn6tkm' /* VOSSOS */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.readexPro(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
    );
  }
}
