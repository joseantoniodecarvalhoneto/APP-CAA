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
import 'board_emotion_model.dart';
export 'board_emotion_model.dart';

class BoardEmotionWidget extends StatefulWidget {
  const BoardEmotionWidget({super.key});

  static String routeName = 'board_emotion';
  static String routePath = '/boardEmotion';

  @override
  State<BoardEmotionWidget> createState() => _BoardEmotionWidgetState();
}

class _BoardEmotionWidgetState extends State<BoardEmotionWidget>
    with TickerProviderStateMixin {
  late BoardEmotionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BoardEmotionModel());

    animationsMap.addAll({
      'columnOnPageLoadAnimation1': AnimationInfo(
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
      'columnOnPageLoadAnimation2': AnimationInfo(
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
      'columnOnPageLoadAnimation3': AnimationInfo(
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
          child: SingleChildScrollView(
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
                                'kdpgdfn8' /* Configurações */,
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
                        currentLanguage:
                            FFLocalizations.of(context).languageCode,
                        languages: FFLocalizations.languages(),
                        onChanged: (lang) => setAppLanguage(context, lang),
                      ),
                    ],
                  ),
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 102.0,
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

                      return InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          safeSetState(() {});
                        },
                        child: Wrap(
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
                        ),
                      );
                    },
                  ),
                ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                ))
                  Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 20.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.15,
                                        height:
                                            MediaQuery.sizeOf(context).width *
                                                0.09,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFAEF0FF),
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
                                                .addToDisplaymensage('  Estou');
                                            safeSetState(() {});
                                            FFAppState().buffer = '';
                                            safeSetState(() {});
                                            FFAppState().buffer = 'Estou';
                                            safeSetState(() {});
                                            await actions.speakText(
                                              FFAppState().buffer,
                                            );
                                            FFAppState().Historico =
                                                '${FFAppState().Historico}Estou ';
                                            safeSetState(() {});
                                          },
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
                                                    'assets/images/estado.png',
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.07,
                                                    height: MediaQuery.sizeOf(
                                                                context)
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
                                                    'lspb5ya9' /* ESTOU */,
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
                                                                0.020,
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
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.15,
                                        height:
                                            MediaQuery.sizeOf(context).width *
                                                0.09,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFAEF0FF),
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
                                                .addToDisplaymensage(' Bem');
                                            safeSetState(() {});
                                            FFAppState().buffer = '';
                                            safeSetState(() {});
                                            FFAppState().buffer = 'Bem';
                                            safeSetState(() {});
                                            await actions.speakText(
                                              FFAppState().buffer,
                                            );
                                            FFAppState().Historico =
                                                '${FFAppState().Historico}Bem ';
                                            safeSetState(() {});
                                          },
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
                                                    'assets/images/estou_bem_(1).png',
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.07,
                                                    height: MediaQuery.sizeOf(
                                                                context)
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
                                                    'wdodrvs6' /* BEM */,
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
                                                                0.020,
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
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.15,
                                        height:
                                            MediaQuery.sizeOf(context).width *
                                                0.09,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFAEF0FF),
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
                                                .addToDisplaymensage(' Mal');
                                            safeSetState(() {});
                                            FFAppState().buffer = '';
                                            safeSetState(() {});
                                            FFAppState().buffer = 'Mal';
                                            safeSetState(() {});
                                            await actions.speakText(
                                              FFAppState().buffer,
                                            );
                                            FFAppState().Historico =
                                                '${FFAppState().Historico}Mal ';
                                            safeSetState(() {});
                                          },
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
                                                    'assets/images/estou_mal_(1).png',
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
                                                    'jp10x4o0' /* MAL */,
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
                                                                0.020,
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
                                    Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 20.0, 0.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.15,
                                          height:
                                              MediaQuery.sizeOf(context).width *
                                                  0.09,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFAEF0FF),
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
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
                                                    .addToDisplaymensage(
                                                        '  Mais ou Menos');
                                                safeSetState(() {});
                                                FFAppState().buffer = '';
                                                safeSetState(() {});
                                                FFAppState().buffer =
                                                    'Mais ou Menos';
                                                safeSetState(() {});
                                                await actions.speakText(
                                                  FFAppState().buffer,
                                                );
                                                FFAppState().Historico =
                                                    '${FFAppState().Historico}Mais ou Menos ';
                                                safeSetState(() {});
                                              },
                                              child: Stack(
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 1.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: Image.asset(
                                                        'assets/images/estou_mais_ou_menos.png',
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.07,
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.07,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, -1.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'y94j4qt3' /* MAIS OU MENOS */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.016,
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
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 20.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.15,
                                        height:
                                            MediaQuery.sizeOf(context).width *
                                                0.09,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFAEF0FF),
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

                                            FFAppState().addToDisplaymensage(
                                                ' Confuso');
                                            safeSetState(() {});
                                            FFAppState().buffer = '';
                                            safeSetState(() {});
                                            FFAppState().buffer = 'Confuso';
                                            safeSetState(() {});
                                            await actions.speakText(
                                              FFAppState().buffer,
                                            );
                                            FFAppState().Historico =
                                                '${FFAppState().Historico}Confuso ';
                                            safeSetState(() {});
                                          },
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
                                                    'assets/images/confuso_(1).png',
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.067,
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.067,
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
                                                    'fflw857j' /* CONFUSO */,
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
                                                                0.020,
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
                                ).animateOnPageLoad(animationsMap[
                                    'columnOnPageLoadAnimation1']!),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 20.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.15,
                                        height:
                                            MediaQuery.sizeOf(context).width *
                                                0.09,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFAEF0FF),
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
                                                .addToDisplaymensage(' Feliz');
                                            safeSetState(() {});
                                            FFAppState().buffer = '';
                                            safeSetState(() {});
                                            FFAppState().buffer = ' Feliz';
                                            safeSetState(() {});
                                            await actions.speakText(
                                              FFAppState().buffer,
                                            );
                                            FFAppState().Historico =
                                                '${FFAppState().Historico} Feliz';
                                            safeSetState(() {});
                                          },
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
                                                    'assets/images/alegria_(1).png',
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.067,
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.067,
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
                                                    '8ieqennl' /* FELIZ */,
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
                                                                0.020,
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
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.15,
                                        height:
                                            MediaQuery.sizeOf(context).width *
                                                0.09,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFAEF0FF),
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
                                                .addToDisplaymensage(' Triste');
                                            safeSetState(() {});
                                            FFAppState().buffer = '';
                                            safeSetState(() {});
                                            FFAppState().buffer = 'Triste';
                                            safeSetState(() {});
                                            await actions.speakText(
                                              FFAppState().buffer,
                                            );
                                            FFAppState().Historico =
                                                '${FFAppState().Historico}Triste ';
                                            safeSetState(() {});
                                          },
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
                                                    'assets/images/tristeza.png',
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.067,
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.067,
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
                                                    '6w6c4bj5' /* TRISTE */,
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
                                                                0.020,
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
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.15,
                                        height:
                                            MediaQuery.sizeOf(context).width *
                                                0.09,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFAEF0FF),
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
                                                .addToDisplaymensage(' Normal');
                                            safeSetState(() {});
                                            FFAppState().buffer = '';
                                            safeSetState(() {});
                                            FFAppState().buffer = 'Normal';
                                            safeSetState(() {});
                                            await actions.speakText(
                                              FFAppState().buffer,
                                            );
                                            FFAppState().Historico =
                                                '${FFAppState().Historico}Normal ';
                                            safeSetState(() {});
                                          },
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
                                                    'assets/images/tranquilo.png',
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.067,
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.067,
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
                                                    'das1ebn7' /* NORMAL */,
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
                                                                0.020,
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
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.15,
                                        height:
                                            MediaQuery.sizeOf(context).width *
                                                0.09,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFAEF0FF),
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

                                            FFAppState().addToDisplaymensage(
                                                ' Angustiado');
                                            safeSetState(() {});
                                            FFAppState().buffer = '';
                                            safeSetState(() {});
                                            FFAppState().buffer = 'Angustiado';
                                            safeSetState(() {});
                                            await actions.speakText(
                                              FFAppState().buffer,
                                            );
                                            FFAppState().Historico =
                                                '${FFAppState().Historico}Angustiado';
                                            safeSetState(() {});
                                          },
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
                                                    'assets/images/angustiado.png',
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.067,
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.067,
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
                                                    'hq1yvuu6' /* ANGUSTIADO */,
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
                                                                0.018,
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
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.15,
                                        height:
                                            MediaQuery.sizeOf(context).width *
                                                0.09,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFAEF0FF),
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

                                            FFAppState().addToDisplaymensage(
                                                ' Vergonha');
                                            safeSetState(() {});
                                            FFAppState().buffer = '';
                                            safeSetState(() {});
                                            FFAppState().buffer = 'Vergonha';
                                            safeSetState(() {});
                                            await actions.speakText(
                                              FFAppState().buffer,
                                            );
                                            FFAppState().Historico =
                                                '${FFAppState().Historico}Vergonha ';
                                            safeSetState(() {});
                                          },
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
                                                    'assets/images/envergonhar_(1).png',
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
                                                    'lopyb0ga' /* VERGONHA */,
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
                                                                0.020,
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
                                ).animateOnPageLoad(animationsMap[
                                    'columnOnPageLoadAnimation2']!),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 20.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.15,
                                        height:
                                            MediaQuery.sizeOf(context).width *
                                                0.09,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFAEF0FF),
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
                                                .addToDisplaymensage(' Nojo');
                                            safeSetState(() {});
                                            FFAppState().buffer = '';
                                            safeSetState(() {});
                                            FFAppState().buffer = 'Nojo ';
                                            safeSetState(() {});
                                            await actions.speakText(
                                              FFAppState().buffer,
                                            );
                                            FFAppState().Historico =
                                                '${FFAppState().Historico}Nojo ';
                                            safeSetState(() {});
                                          },
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
                                                    'assets/images/nojo_(1).png',
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.07,
                                                    height: MediaQuery.sizeOf(
                                                                context)
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
                                                    'de1k1q9e' /* NOJO */,
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
                                                                0.020,
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
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.15,
                                        height:
                                            MediaQuery.sizeOf(context).width *
                                                0.09,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFAEF0FF),
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

                                            FFAppState().addToDisplaymensage(
                                                ' Ansioso');
                                            safeSetState(() {});
                                            FFAppState().buffer = '';
                                            safeSetState(() {});
                                            FFAppState().buffer = 'Ansioso';
                                            safeSetState(() {});
                                            await actions.speakText(
                                              FFAppState().buffer,
                                            );
                                            FFAppState().Historico =
                                                '${FFAppState().Historico}Ansioso ';
                                            safeSetState(() {});
                                          },
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
                                                    'assets/images/ansioso_(1).png',
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.07,
                                                    height: MediaQuery.sizeOf(
                                                                context)
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
                                                    'uxhe6xul' /* ANSIOSO */,
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 20.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.15,
                                        height:
                                            MediaQuery.sizeOf(context).width *
                                                0.09,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFAEF0FF),
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
                                                .addToDisplaymensage(' Bravo ');
                                            safeSetState(() {});
                                            FFAppState().buffer = '';
                                            safeSetState(() {});
                                            FFAppState().buffer = 'Bravo';
                                            safeSetState(() {});
                                            await actions.speakText(
                                              FFAppState().buffer,
                                            );
                                            FFAppState().Historico =
                                                '${FFAppState().Historico}Bravo ';
                                            safeSetState(() {});
                                          },
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
                                                    'assets/images/furioso.png',
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
                                                    'vciqgbpi' /* BRAVO */,
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 20.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.15,
                                        height:
                                            MediaQuery.sizeOf(context).width *
                                                0.09,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFAEF0FF),
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

                                            FFAppState().addToDisplaymensage(
                                                ' Irritado');
                                            safeSetState(() {});
                                            FFAppState().buffer = '';
                                            safeSetState(() {});
                                            FFAppState().buffer = 'Irritado';
                                            safeSetState(() {});
                                            await actions.speakText(
                                              FFAppState().buffer,
                                            );
                                            FFAppState().Historico =
                                                '${FFAppState().Historico}Irritado';
                                            safeSetState(() {});
                                          },
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
                                                    'assets/images/irritao_(1).png',
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.06,
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.06,
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
                                                    'nkg5hyhf' /* IRRITADO */,
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 20.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.15,
                                        height:
                                            MediaQuery.sizeOf(context).width *
                                                0.09,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFAEF0FF),
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

                                            FFAppState().addToDisplaymensage(
                                                ' Surpreso');
                                            safeSetState(() {});
                                            FFAppState().buffer = '';
                                            safeSetState(() {});
                                            FFAppState().buffer = 'Surpreso';
                                            safeSetState(() {});
                                            await actions.speakText(
                                              FFAppState().buffer,
                                            );
                                            FFAppState().Historico =
                                                '${FFAppState().Historico}Surpreso ';
                                            safeSetState(() {});
                                          },
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
                                                    'assets/images/surpresa.png',
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.06,
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.06,
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
                                                    's029uloc' /* SURPRESO */,
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
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 20.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.15,
                                        height:
                                            MediaQuery.sizeOf(context).width *
                                                0.09,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFAEF0FF),
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
                                                .addToDisplaymensage(' Sério');
                                            safeSetState(() {});
                                            FFAppState().buffer = '';
                                            safeSetState(() {});
                                            FFAppState().buffer = 'Sério';
                                            safeSetState(() {});
                                            await actions.speakText(
                                              FFAppState().buffer,
                                            );
                                            FFAppState().Historico =
                                                '${FFAppState().Historico}Sério ';
                                            safeSetState(() {});
                                          },
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
                                                    'assets/images/srio.png',
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.07,
                                                    height: MediaQuery.sizeOf(
                                                                context)
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
                                                    'xwsr5d8g' /* SÉRIO */,
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 20.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.15,
                                        height:
                                            MediaQuery.sizeOf(context).width *
                                                0.09,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFAEF0FF),
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

                                            FFAppState().addToDisplaymensage(
                                                ' Distraído');
                                            safeSetState(() {});
                                            FFAppState().buffer = '';
                                            safeSetState(() {});
                                            FFAppState().buffer = 'Distraído';
                                            safeSetState(() {});
                                            await actions.speakText(
                                              FFAppState().buffer,
                                            );
                                            FFAppState().Historico =
                                                '${FFAppState().Historico}Distraído';
                                            safeSetState(() {});
                                          },
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
                                                    'assets/images/distrair.png',
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.07,
                                                    height: MediaQuery.sizeOf(
                                                                context)
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
                                                    'htzlmiuk' /* DISTRAÍDO */,
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
                                  ],
                                ).animateOnPageLoad(animationsMap[
                                    'columnOnPageLoadAnimation3']!),
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
                                                  .set(
                                                      createHistoricoRecordData(
                                                data: _model.dataSemTimeemo,
                                                mensagem:
                                                    FFAppState().Historico,
                                                email: currentUserEmail,
                                              ));
                                              FFAppState().Historico = '';
                                              safeSetState(() {});

                                              safeSetState(() {});
                                            },
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              'bvppyj0f' /* LIMPAR */,
                                            ),
                                            icon: Icon(
                                              Icons.clear,
                                              size: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.02,
                                            ),
                                            options: FFButtonOptions(
                                              height: 18.0,
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
                                                'mxgucx7r' /* VOLTAR */,
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
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0xFFFFB28F),
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      font:
                                                          GoogleFonts.readexPro(
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
                                                          MediaQuery.sizeOf(
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
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
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
                                                              .fromSTEB(
                                                                  30.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'cul8jknl' /* PLAY */,
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
                                                                  fontSize:
                                                                      MediaQuery.sizeOf(context)
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
                                                                    MediaQuery.sizeOf(context)
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
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
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
                                                              .fromSTEB(
                                                                  30.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5le5jemw' /* PARAR */,
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
                                                                  fontSize:
                                                                      MediaQuery.sizeOf(context)
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
                                                                    MediaQuery.sizeOf(context)
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
                                              'cttnws24' /* ANTERIOR */,
                                            ),
                                            icon: Icon(
                                              Icons.chevron_left,
                                              size: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.02,
                                            ),
                                            options: FFButtonOptions(
                                              height: 18.0,
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
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.15,
                                            height: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.09,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF5A85A9),
                                              borderRadius:
                                                  BorderRadius.circular(24.0),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Stack(
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  60.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '96eyvwii' /* PRANCHAS CAA */,
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
                                                                  fontSize:
                                                                      MediaQuery.sizeOf(context)
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
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
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
                          ),
                        ),
                      ],
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
                    height: 624.0,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 2.0, 0.0, 0.0),
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
                                        _model.dataSemTimeemomob = await actions
                                            .removeTimeFromDateTime(
                                          getCurrentTimestamp,
                                        );

                                        await HistoricoRecord.createDoc(
                                                currentUserReference!)
                                            .set(createHistoricoRecordData(
                                          data: _model.dataSemTimeemomob,
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
                                          height: 34.0,
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
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
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
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
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
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Container(
                            height: 496.0,
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
                                      color: Color(0xFFAEF0FF),
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
                                            .addToDisplaymensage('  Estou');
                                        safeSetState(() {});
                                        FFAppState().buffer = '';
                                        safeSetState(() {});
                                        FFAppState().buffer = 'Estou';
                                        safeSetState(() {});
                                        await actions.speakText(
                                          FFAppState().buffer,
                                        );
                                        FFAppState().Historico =
                                            '${FFAppState().Historico}Estou ';
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
                                                'assets/images/estado.png',
                                                width: 80.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '7wvfo2ov' /* Estou */,
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
                                      color: Color(0xFFAEF0FF),
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
                                            .addToDisplaymensage(' Bem');
                                        safeSetState(() {});
                                        FFAppState().buffer = '';
                                        safeSetState(() {});
                                        FFAppState().buffer = 'Bem';
                                        safeSetState(() {});
                                        await actions.speakText(
                                          FFAppState().buffer,
                                        );
                                        FFAppState().Historico =
                                            '${FFAppState().Historico}Bem ';
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
                                                'assets/images/estou_bem_(1).png',
                                                width: 80.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'hm88t7hy' /* Bem */,
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
                                      color: Color(0xFFAEF0FF),
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
                                            .addToDisplaymensage(' Mal');
                                        safeSetState(() {});
                                        FFAppState().buffer = '';
                                        safeSetState(() {});
                                        FFAppState().buffer = 'Mal';
                                        safeSetState(() {});
                                        await actions.speakText(
                                          FFAppState().buffer,
                                        );
                                        FFAppState().Historico =
                                            '${FFAppState().Historico}Mal ';
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
                                                'assets/images/estou_mal_(1).png',
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
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'p3xwl131' /* Mal */,
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
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 20.0, 0.0),
                                    child: Container(
                                      width: 140.0,
                                      height: 110.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFAEF0FF),
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, -1.0),
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

                                            FFAppState().addToDisplaymensage(
                                                '  Mais ou Menos');
                                            safeSetState(() {});
                                            FFAppState().buffer = '';
                                            safeSetState(() {});
                                            FFAppState().buffer =
                                                'Mais ou Menos';
                                            safeSetState(() {});
                                            await actions.speakText(
                                              FFAppState().buffer,
                                            );
                                            FFAppState().Historico =
                                                '${FFAppState().Historico}Mais ou Menos ';
                                            safeSetState(() {});
                                          },
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
                                                    'assets/images/estou_mais_ou_menos.png',
                                                    width: 80.0,
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
                                                    '1fbebvjd' /* Mais ou Menos */,
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
                                                        fontSize: 12.0,
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
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 20.0, 0.0),
                                  child: Container(
                                    width: 140.0,
                                    height: 110.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFAEF0FF),
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
                                            .addToDisplaymensage(' Confuso');
                                        safeSetState(() {});
                                        FFAppState().buffer = '';
                                        safeSetState(() {});
                                        FFAppState().buffer = 'Confuso';
                                        safeSetState(() {});
                                        await actions.speakText(
                                          FFAppState().buffer,
                                        );
                                        FFAppState().Historico =
                                            '${FFAppState().Historico}Confuso ';
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
                                                'assets/images/confuso_(1).png',
                                                width: 80.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'j55sn1zt' /* CONFUSO */,
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
                                                    fontSize: 15.0,
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
                                      color: Color(0xFFAEF0FF),
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
                                            .addToDisplaymensage(' Feliz');
                                        safeSetState(() {});
                                        FFAppState().buffer = '';
                                        safeSetState(() {});
                                        FFAppState().buffer = ' Feliz';
                                        safeSetState(() {});
                                        await actions.speakText(
                                          FFAppState().buffer,
                                        );
                                        FFAppState().Historico =
                                            '${FFAppState().Historico} Feliz';
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
                                                'assets/images/alegria_(1).png',
                                                width: 80.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '6qmc4il1' /* FELIZ */,
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
                                      color: Color(0xFFAEF0FF),
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
                                            .addToDisplaymensage(' Triste');
                                        safeSetState(() {});
                                        FFAppState().buffer = '';
                                        safeSetState(() {});
                                        FFAppState().buffer = 'Triste';
                                        safeSetState(() {});
                                        await actions.speakText(
                                          FFAppState().buffer,
                                        );
                                        FFAppState().Historico =
                                            '${FFAppState().Historico}Triste ';
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
                                                'assets/images/tristeza.png',
                                                width: 80.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'il2de1ay' /* TRISTE */,
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
                                      color: Color(0xFFAEF0FF),
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
                                            .addToDisplaymensage(' Normal');
                                        safeSetState(() {});
                                        FFAppState().buffer = '';
                                        safeSetState(() {});
                                        FFAppState().buffer = 'Normal';
                                        safeSetState(() {});
                                        await actions.speakText(
                                          FFAppState().buffer,
                                        );
                                        FFAppState().Historico =
                                            '${FFAppState().Historico}Normal ';
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
                                                'assets/images/tranquilo.png',
                                                width: 80.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '78iolwn0' /* NORMAL */,
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
                                      color: Color(0xFFAEF0FF),
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
                                            .addToDisplaymensage(' Angustiado');
                                        safeSetState(() {});
                                        FFAppState().buffer = '';
                                        safeSetState(() {});
                                        FFAppState().buffer = 'Angustiado';
                                        safeSetState(() {});
                                        await actions.speakText(
                                          FFAppState().buffer,
                                        );
                                        FFAppState().Historico =
                                            '${FFAppState().Historico}Angustiado';
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
                                                'assets/images/angustiado.png',
                                                width: 80.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'h02rnq1m' /* ANGUSTIADO */,
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
                                                    fontSize: 13.0,
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
                                      color: Color(0xFFAEF0FF),
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
                                            .addToDisplaymensage(' Vergonha');
                                        safeSetState(() {});
                                        FFAppState().buffer = '';
                                        safeSetState(() {});
                                        FFAppState().buffer = 'Vergonha';
                                        safeSetState(() {});
                                        await actions.speakText(
                                          FFAppState().buffer,
                                        );
                                        FFAppState().Historico =
                                            '${FFAppState().Historico}Vergonha ';
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
                                                'assets/images/envergonhar_(1).png',
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
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '8xc3758g' /* VERGONHA */,
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
                                                    fontSize: 15.0,
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
                                      color: Color(0xFFAEF0FF),
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
                                            .addToDisplaymensage(' Nojo');
                                        safeSetState(() {});
                                        FFAppState().buffer = '';
                                        safeSetState(() {});
                                        FFAppState().buffer = 'Nojo ';
                                        safeSetState(() {});
                                        await actions.speakText(
                                          FFAppState().buffer,
                                        );
                                        FFAppState().Historico =
                                            '${FFAppState().Historico}Nojo ';
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
                                                'assets/images/nojo_(1).png',
                                                width: 80.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'm0c8nbb2' /* NOJO */,
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
                                      color: Color(0xFFAEF0FF),
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
                                            .addToDisplaymensage(' Ansioso');
                                        safeSetState(() {});
                                        FFAppState().buffer = '';
                                        safeSetState(() {});
                                        FFAppState().buffer = 'Ansioso';
                                        safeSetState(() {});
                                        await actions.speakText(
                                          FFAppState().buffer,
                                        );
                                        FFAppState().Historico =
                                            '${FFAppState().Historico}Ansioso ';
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
                                                'assets/images/ansioso_(1).png',
                                                width: 80.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '2zxlunuu' /* ANSIOSO */,
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
                                                    fontSize: 19.0,
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
                                      color: Color(0xFFAEF0FF),
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
                                            .addToDisplaymensage(' Bravo ');
                                        safeSetState(() {});
                                        FFAppState().buffer = '';
                                        safeSetState(() {});
                                        FFAppState().buffer = 'Bravo';
                                        safeSetState(() {});
                                        await actions.speakText(
                                          FFAppState().buffer,
                                        );
                                        FFAppState().Historico =
                                            '${FFAppState().Historico}Bravo ';
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
                                                'assets/images/furioso.png',
                                                width: 80.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'i4yjip69' /* BRAVO */,
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
                                      color: Color(0xFFAEF0FF),
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
                                            .addToDisplaymensage(' Irritado');
                                        safeSetState(() {});
                                        FFAppState().buffer = '';
                                        safeSetState(() {});
                                        FFAppState().buffer = 'Irritado';
                                        safeSetState(() {});
                                        await actions.speakText(
                                          FFAppState().buffer,
                                        );
                                        FFAppState().Historico =
                                            '${FFAppState().Historico}Irritado';
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
                                                'assets/images/irritao_(1).png',
                                                width: 80.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '0470m6zy' /* IRRITADO */,
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
                                                    fontSize: 15.0,
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
                                      color: Color(0xFFAEF0FF),
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
                                            .addToDisplaymensage(' Surpreso');
                                        safeSetState(() {});
                                        FFAppState().buffer = '';
                                        safeSetState(() {});
                                        FFAppState().buffer = 'Surpreso';
                                        safeSetState(() {});
                                        await actions.speakText(
                                          FFAppState().buffer,
                                        );
                                        FFAppState().Historico =
                                            '${FFAppState().Historico}Surpreso ';
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
                                                'assets/images/surpresa.png',
                                                width: 80.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '71ez5e6d' /* SURPRESO */,
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
                                                    fontSize: 15.0,
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
                                      color: Color(0xFFAEF0FF),
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
                                            .addToDisplaymensage(' Sério');
                                        safeSetState(() {});
                                        FFAppState().buffer = '';
                                        safeSetState(() {});
                                        FFAppState().buffer = 'Sério';
                                        safeSetState(() {});
                                        await actions.speakText(
                                          FFAppState().buffer,
                                        );
                                        FFAppState().Historico =
                                            '${FFAppState().Historico}Sério ';
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
                                                'assets/images/srio.png',
                                                width: 80.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'l131k7g0' /* SÉRIO */,
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
                                      color: Color(0xFFAEF0FF),
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
                                            .addToDisplaymensage(' Distraído');
                                        safeSetState(() {});
                                        FFAppState().buffer = '';
                                        safeSetState(() {});
                                        FFAppState().buffer = 'Distraído';
                                        safeSetState(() {});
                                        await actions.speakText(
                                          FFAppState().buffer,
                                        );
                                        FFAppState().Historico =
                                            '${FFAppState().Historico}Distraído';
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
                                                'assets/images/distrair.png',
                                                width: 70.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '1pj63wyw' /* DISTRAÍDO */,
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
                                                    fontSize: 15.0,
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
      ),
    );
  }
}
