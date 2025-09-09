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
import 'board_tempo_model.dart';
export 'board_tempo_model.dart';

class BoardTempoWidget extends StatefulWidget {
  const BoardTempoWidget({super.key});

  static String routeName = 'board_tempo';
  static String routePath = '/boarTempo';

  @override
  State<BoardTempoWidget> createState() => _BoardTempoWidgetState();
}

class _BoardTempoWidgetState extends State<BoardTempoWidget>
    with TickerProviderStateMixin {
  late BoardTempoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BoardTempoModel());

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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                  tabletLandscape: false,
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
                            size: MediaQuery.sizeOf(context).width * 0.019,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0,
                              0.0,
                              valueOrDefault<double>(
                                MediaQuery.sizeOf(context).width * 0.05,
                                0.0,
                              ),
                              0.0),
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
                                '00zlra0q' /* Configurações */,
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
                                    fontSize: MediaQuery.sizeOf(context).width *
                                        0.015,
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
                        width: MediaQuery.sizeOf(context).width * 0.15,
                        backgroundColor: Color(0xFFFFB28F),
                        borderColor: Colors.transparent,
                        dropdownIconColor: Colors.white,
                        borderRadius: 8.0,
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: MediaQuery.sizeOf(context).width * 0.015,
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
                  height: 90.0,
                  decoration: BoxDecoration(),
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          width: MediaQuery.sizeOf(context).width >
                                  MediaQuery.sizeOf(context).height
                              ? MediaQuery.sizeOf(context).width
                              : MediaQuery.sizeOf(context).height,
                          height: MediaQuery.sizeOf(context).width * 0.5,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                          child: Builder(
                            builder: (context) {
                              final mensagemlista = FFAppState()
                                  .displaymensage
                                  .toList()
                                  .take(10)
                                  .toList();

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
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            fontSize: 35.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
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
                      ),
                    ],
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
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 20.0, 0.0),
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 10.0,
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.15,
                                        height:
                                            MediaQuery.sizeOf(context).width *
                                                0.09,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFFFF),
                                          border: Border.all(
                                            color: Color(0xFF5E696F),
                                            width: 1.0,
                                          ),
                                        ),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (FFAppState()
                                                    .displaymensage
                                                    .length !=
                                                0) {
                                              await Future.delayed(
                                                Duration(
                                                  milliseconds: 1000,
                                                ),
                                              );
                                            }
                                            FFAppState()
                                                .addToDisplaymensage('  Agora');
                                            safeSetState(() {});
                                            FFAppState().buffer = '';
                                            safeSetState(() {});
                                            FFAppState().buffer = '  Agora';
                                            safeSetState(() {});
                                            await actions.speakText(
                                              FFAppState().buffer,
                                            );
                                            FFAppState().Historico =
                                                '${FFAppState().Historico}  Agora';
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
                                                          10.0),
                                                  child: Image.asset(
                                                    'assets/images/agora.png',
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
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5tjfwgkq' /* AGORA */,
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
                                                          color: Colors.black,
                                                          fontSize:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.015,
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
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 20.0, 0.0),
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 10.0,
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.15,
                                        height:
                                            MediaQuery.sizeOf(context).width *
                                                0.09,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFFFFFFFF),
                                          border: Border.all(
                                            color: Color(0xFF5E696F),
                                          ),
                                        ),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (FFAppState()
                                                    .displaymensage
                                                    .length !=
                                                0) {
                                              await Future.delayed(
                                                Duration(
                                                  milliseconds: 1000,
                                                ),
                                              );
                                            }
                                            FFAppState().addToDisplaymensage(
                                                ' Depois ');
                                            safeSetState(() {});
                                            FFAppState().buffer = '';
                                            safeSetState(() {});
                                            FFAppState().buffer = ' Depois ';
                                            safeSetState(() {});
                                            await actions.speakText(
                                              FFAppState().buffer,
                                            );
                                            FFAppState().Historico =
                                                '${FFAppState().Historico} Depois ';
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
                                                    'assets/images/depois.png',
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.1,
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
                                                    '7kh2l2wm' /* DEPOIS */,
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
                                                        color: Colors.black,
                                                        fontSize:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.015,
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
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 10.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                      ),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.15,
                                        height:
                                            MediaQuery.sizeOf(context).width *
                                                0.09,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          border: Border.all(
                                            color: Color(0xFF5E696F),
                                          ),
                                        ),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (FFAppState()
                                                    .displaymensage
                                                    .length !=
                                                0) {
                                              await Future.delayed(
                                                Duration(
                                                  milliseconds: 1000,
                                                ),
                                              );
                                            }
                                            FFAppState().addToDisplaymensage(
                                                ' Que horas são ? ');
                                            safeSetState(() {});
                                            FFAppState().buffer = '';
                                            safeSetState(() {});
                                            FFAppState().buffer =
                                                ' Que horas são ? ';
                                            safeSetState(() {});
                                            await actions.speakText(
                                              FFAppState().buffer,
                                            );
                                            FFAppState().Historico =
                                                '${FFAppState().Historico} Que horas são ? ';
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
                                                    'assets/images/que_horas_so.png',
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
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'o55tw882' /* QUE HORAS SÃO ? */,
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
                                                          color: Colors.black,
                                                          fontSize:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.015,
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
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 20.0, 0.0),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 10.0,
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.15,
                                          height:
                                              MediaQuery.sizeOf(context).width *
                                                  0.09,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                              color: Color(0xFF5E696F),
                                            ),
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
                                                  .addToDisplaymensage(' Dia');
                                              safeSetState(() {});
                                              FFAppState().buffer = '';
                                              safeSetState(() {});
                                              FFAppState().buffer = 'Dia';
                                              safeSetState(() {});
                                              await actions.speakText(
                                                FFAppState().buffer,
                                              );
                                              FFAppState().Historico =
                                                  '${FFAppState().Historico}Dia';
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
                                                      'assets/images/dia.png',
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.06,
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.06,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -1.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'mryuw0jh' /* DIA */,
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
                                                          color: Colors.black,
                                                          fontSize:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.015,
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
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 20.0, 0.0),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 10.0,
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.15,
                                          height:
                                              MediaQuery.sizeOf(context).width *
                                                  0.09,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                              color: Color(0xFF5E696F),
                                            ),
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
                                                  ' Noite');
                                              safeSetState(() {});
                                              FFAppState().buffer = '';
                                              safeSetState(() {});
                                              FFAppState().buffer = ' Noite';
                                              safeSetState(() {});
                                              await actions.speakText(
                                                FFAppState().buffer,
                                              );
                                              FFAppState().Historico =
                                                  '${FFAppState().Historico} Noite';
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
                                                      'assets/images/noite.png',
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
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -1.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'tzfbixtt' /* NOITE */,
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
                                                          color: Colors.black,
                                                          fontSize:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.015,
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
                                ].divide(SizedBox(
                                    height: MediaQuery.sizeOf(context).width *
                                        0.004)),
                              ).animateOnPageLoad(
                                  animationsMap['columnOnPageLoadAnimation']!),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 20.0, 0.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 10.0,
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.15,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.09,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Color(0xFF5E696F),
                                        ),
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
                                              .addToDisplaymensage(' Tarde');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = ' Tarde';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} Tarde';
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
                                                  'assets/images/tarde.png',
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
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'o23m3glb' /* TARDE */,
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
                                                        color: Colors.black,
                                                        fontSize:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.015,
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
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 20.0, 0.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 10.0,
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.15,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.09,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Color(0xFF5E696F),
                                        ),
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
                                              .addToDisplaymensage(' Amanhã');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = ' Amanhã';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} Amanhã';
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
                                                  'assets/images/amanh_(1).png',
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
                                                  '40inixtv' /* AMANHÃ */,
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
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.015,
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
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 10.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.15,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.09,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        border: Border.all(
                                          color: Color(0xFF5E696F),
                                        ),
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
                                              .addToDisplaymensage(' Hoje');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = ' Hoje';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} Hoje';
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
                                                  'assets/images/dia_(1).png',
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
                                                  'fouj15zt' /* HOJE */,
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
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.015,
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
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 10.0,
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.15,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.09,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Color(0xFF5E696F),
                                        ),
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
                                              .addToDisplaymensage(' Ontem');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = ' Ontem';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} Ontem';
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
                                                  'assets/images/ontem_(1).png',
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
                                                  '9h7d8qjl' /* ONTEM */,
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
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.015,
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
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 10.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.15,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.09,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        border: Border.all(
                                          color: Color(0xFF5E696F),
                                          width: 1.0,
                                        ),
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
                                              ' Fim de semana');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer =
                                              ' Fim de semana';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} Fim de semana';
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
                                                  'assets/images/fim-de-semana.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.07,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.068,
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
                                                  'gfzctrx9' /* FIM DE SEMANA */,
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
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.015,
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
                              ].divide(SizedBox(
                                  height: MediaQuery.sizeOf(context).width *
                                      0.004)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 20.0, 0.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 10.0,
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.15,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.09,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Color(0xFF5E696F),
                                        ),
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
                                              ' Essa semana');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = ' Essa semana';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} Essa semana';
                                          safeSetState(() {});
                                        },
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.06, 1.06),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/semana.png',
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
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'uz1wot73' /* ESSA SEMANA */,
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
                                                        color: Colors.black,
                                                        fontSize:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.015,
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
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 20.0, 0.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 10.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.15,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.09,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        border: Border.all(
                                          color: Color(0xFF5E696F),
                                        ),
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
                                              ' Quantos dias ?');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer =
                                              ' Quantos dias ?';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} Quantos dias ?';
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
                                                  'assets/images/quantos_dias.png',
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
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'o9ky4coh' /* QUANTOS DIAS ? */,
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
                                                        color: Colors.black,
                                                        fontSize:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.015,
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
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 20.0, 0.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 10.0,
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.15,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.09,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Color(0xFF5E696F),
                                        ),
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
                                              ' Bom dia !');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = 'Bom dia !';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico}Bom dia !';
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
                                                  'assets/images/Bom_dia!.png',
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
                                                  '0t836o3b' /* BOM DIA */,
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
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.015,
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
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 10.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.15,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.09,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        border: Border.all(
                                          color: Color(0xFF5E696F),
                                        ),
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
                                              ' Boa noite !');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = ' Boa noite !';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} Boa noite !';
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
                                                  'assets/images/Boa_noite!.png',
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
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'rpaxqfed' /* BOA NOITE */,
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
                                                        color: Colors.black,
                                                        fontSize:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.015,
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
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 20.0, 0.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 10.0,
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.15,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.09,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Color(0xFF5E696F),
                                        ),
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
                                              ' Boa tarde !');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = ' Boa tarde !';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} Boa tarde !';
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
                                                  'assets/images/Boa_tarde!.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.06,
                                                  height:
                                                      MediaQuery.sizeOf(context)
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
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'wlqosmxe' /* BOA TARDE */,
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
                                                        color: Colors.black,
                                                        fontSize:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.015,
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
                                ),
                              ].divide(SizedBox(
                                  height: MediaQuery.sizeOf(context).width *
                                      0.004)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 20.0, 0.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 10.0,
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.15,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.09,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Color(0xFF5E696F),
                                        ),
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
                                              ' Muito tarde');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = ' Muito tarde';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} Muito tarde';
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
                                                  'assets/images/tarde_(1).png',
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
                                                  'pq7a3l3q' /* MUITO TARDE */,
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
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.015,
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
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 10.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.15,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.09,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        border: Border.all(
                                          color: Color(0xFF5E696F),
                                        ),
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
                                              ' Acordar cedo');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = ' Acordar cedo';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} Acordar cedo';
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
                                                  'assets/images/acordar_cedo.png',
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
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'znd317ug' /* ACORDAR CEDO */,
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
                                                        color: Colors.black,
                                                        fontSize:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.015,
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
                                ),
                              ].divide(SizedBox(
                                  height: MediaQuery.sizeOf(context).width *
                                      0.004)),
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
                                      width: MediaQuery.sizeOf(context).width *
                                          0.15,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.09,
                                      decoration: BoxDecoration(),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          FFAppState().displaymensage = [];
                                          safeSetState(() {});
                                          _model.dataSemTime = await actions
                                              .removeTimeFromDateTime(
                                            getCurrentTimestamp,
                                          );

                                          await HistoricoRecord.createDoc(
                                                  currentUserReference!)
                                              .set(createHistoricoRecordData(
                                            data: _model.dataSemTime,
                                            mensagem: FFAppState().Historico,
                                            email: currentUserEmail,
                                          ));
                                          FFAppState().Historico = '';
                                          safeSetState(() {});

                                          safeSetState(() {});
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'aotinqp3' /* LIMPAR */,
                                        ),
                                        icon: Icon(
                                          Icons.clear,
                                          size:
                                              MediaQuery.sizeOf(context).width *
                                                  0.020,
                                        ),
                                        options: FFButtonOptions(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.15,
                                          height:
                                              MediaQuery.sizeOf(context).width *
                                                  0.09,
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
                                                        0.020,
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
                                      width: MediaQuery.sizeOf(context).width *
                                          0.15,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.09,
                                      decoration: BoxDecoration(),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
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
                                            'm0or4onv' /* VOLTAR */,
                                          ),
                                          icon: Icon(
                                            Icons.repeat,
                                            size: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.020,
                                          ),
                                          options: FFButtonOptions(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.15,
                                            height: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.09,
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
                                                          0.020,
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
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.15,
                                          height:
                                              MediaQuery.sizeOf(context).width *
                                                  0.09,
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
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          valueOrDefault<
                                                              double>(
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.055,
                                                            0.0,
                                                          ),
                                                          0.0,
                                                          0.0,
                                                          0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8tzole8e' /* PLAY */,
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
                                                          color: Colors.white,
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
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0,
                                                          0.0,
                                                          valueOrDefault<
                                                              double>(
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.055,
                                                            0.0,
                                                          ),
                                                          0.0),
                                                  child: Icon(
                                                    Icons.play_arrow,
                                                    color: Colors.white,
                                                    size: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.020,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                if ((FFAppState().contador == 1) &&
                                    responsiveVisibility(
                                      context: context,
                                      desktop: false,
                                    ))
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
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.15,
                                          height:
                                              MediaQuery.sizeOf(context).width *
                                                  0.09,
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
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          40.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '770v6gbw' /* PARAR */,
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
                                                          color: Colors.white,
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
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 60.0, 0.0),
                                                  child: Icon(
                                                    Icons.stop,
                                                    color: Colors.white,
                                                    size: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.020,
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
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.15,
                                          height:
                                              MediaQuery.sizeOf(context).width *
                                                  0.09,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFFFB28F),
                                            borderRadius:
                                                BorderRadius.circular(24.0),
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.02, 0.11),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          valueOrDefault<
                                                              double>(
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.055,
                                                            0.0,
                                                          ),
                                                          0.0,
                                                          0.0,
                                                          0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'pfnpbntl' /* PARAR */,
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
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0,
                                                          0.0,
                                                          valueOrDefault<
                                                              double>(
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.055,
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
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                ))
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
                                                            .fromSTEB(
                                                                valueOrDefault<
                                                                    double>(
                                                                  MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.055,
                                                                  0.0,
                                                                ),
                                                                0.0,
                                                                0.0,
                                                                0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'zuaa4c3g' /* PRANCHAS CAA */,
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
                                                            .fromSTEB(
                                                                valueOrDefault<
                                                                    double>(
                                                                  MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.02,
                                                                  0.0,
                                                                ),
                                                                0.0,
                                                                0.0,
                                                                0.0),
                                                    child: Icon(
                                                      Icons.display_settings,
                                                      color: Colors.white,
                                                      size: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.020,
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
                              ].divide(SizedBox(
                                  height: MediaQuery.sizeOf(context).width *
                                      0.004)),
                            ),
                          ],
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
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: Container(
                                  width: 80.0,
                                  height: 70.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      FFAppState().displaymensage = [];
                                      safeSetState(() {});
                                      _model.dataSemTimemobile =
                                          await actions.removeTimeFromDateTime(
                                        getCurrentTimestamp,
                                      );

                                      await HistoricoRecord.createDoc(
                                              currentUserReference!)
                                          .set(createHistoricoRecordData(
                                        data: _model.dataSemTimemobile,
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
                                  width: 80.0,
                                  height: 70.0,
                                  decoration: BoxDecoration(),
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
                                      borderRadius: BorderRadius.circular(24.0),
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
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 3.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                      ),
                                      child: Container(
                                        width: 80.0,
                                        height: 70.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFFFB28F),
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                        ),
                                        child: Container(
                                          height: 40.0,
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
                                      width: 80.0,
                                      height: 70.0,
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: Container(
                            height: 503.0,
                            decoration: BoxDecoration(),
                            child: GridView(
                              padding: EdgeInsets.zero,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                mainAxisSpacing: 5.0,
                                childAspectRatio: 1.0,
                              ),
                              scrollDirection: Axis.horizontal,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 20.0, 0.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 10.0,
                                    child: Container(
                                      width: 140.0,
                                      height: 110.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Color(0xFF5E696F),
                                          width: 1.0,
                                        ),
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
                                              .addToDisplaymensage(' Agora');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = ' Agora';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} Agora';
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
                                                  'assets/images/agora.png',
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
                                                  'w13z8emo' /* AGORA */,
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
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.04,
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
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 10.0,
                                    child: Container(
                                      width: 140.0,
                                      height: 110.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Color(0xFF5E696F),
                                          width: 1.0,
                                        ),
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
                                              .addToDisplaymensage(' Depois');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = ' Depois';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} Depois';
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
                                                  'assets/images/depois.png',
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
                                                  'mv1d5h4j' /* DEPOIS */,
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
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.04,
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
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 10.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    child: Container(
                                      width: 140.0,
                                      height: 110.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        border: Border.all(
                                          color: Color(0xFF5E696F),
                                          width: 1.0,
                                        ),
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
                                              ' Que horas são ?');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer =
                                              ' Que horas são ?';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} Que horas são ?';
                                          safeSetState(() {});
                                        },
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.12, 0.65),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/que_horas_so.png',
                                                  width: 80.0,
                                                  fit: BoxFit.cover,
                                                  alignment:
                                                      Alignment(0.0, 0.0),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '2623hc8z' /* QUE HORAS SÃO ? */,
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
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.025,
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
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 20.0, 0.0),
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 10.0,
                                      child: Container(
                                        width: 140.0,
                                        height: 110.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Color(0xFF5E696F),
                                            width: 1.0,
                                          ),
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
                                                .addToDisplaymensage(' Dia');
                                            safeSetState(() {});
                                            FFAppState().buffer = '';
                                            safeSetState(() {});
                                            FFAppState().buffer = ' Dia';
                                            safeSetState(() {});
                                            await actions.speakText(
                                              FFAppState().buffer,
                                            );
                                            FFAppState().Historico =
                                                '${FFAppState().Historico} Dia';
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
                                                    'assets/images/dia.png',
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
                                                    'pxul3siu' /* DIA */,
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
                                                        color: Colors.black,
                                                        fontSize:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.04,
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
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 20.0, 0.0),
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 10.0,
                                      child: Container(
                                        width: 140.0,
                                        height: 110.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Color(0xFF5E696F),
                                            width: 1.0,
                                          ),
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
                                                .addToDisplaymensage(' Noite');
                                            safeSetState(() {});
                                            FFAppState().buffer = '';
                                            safeSetState(() {});
                                            FFAppState().buffer = ' Noite';
                                            safeSetState(() {});
                                            await actions.speakText(
                                              FFAppState().buffer,
                                            );
                                            FFAppState().Historico =
                                                '${FFAppState().Historico}Noite';
                                            safeSetState(() {});
                                          },
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.2, 0.88),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/noite.png',
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
                                                    '50285se4' /* NOITE */,
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
                                                        color: Colors.black,
                                                        fontSize:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.04,
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
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 10.0,
                                    child: Container(
                                      width: 140.0,
                                      height: 110.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Color(0xFF5E696F),
                                          width: 1.0,
                                        ),
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
                                              .addToDisplaymensage(' Tarde');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = ' Tarde';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} Tarde';
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
                                                  'assets/images/tarde.png',
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
                                                  'qh6dv3jy' /* TARDE */,
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
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.04,
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
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 10.0,
                                    child: Container(
                                      width: 140.0,
                                      height: 110.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Color(0xFF5E696F),
                                          width: 1.0,
                                        ),
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
                                              .addToDisplaymensage(' Amanhã');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = ' Amanhã';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} Amanhã';
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
                                                  'assets/images/amanh_(1).png',
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
                                                  'nvvin9ns' /* AMANHÃ */,
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
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.04,
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
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 10.0,
                                    child: Container(
                                      width: 140.0,
                                      height: 110.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Color(0xFF5E696F),
                                          width: 1.0,
                                        ),
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
                                              .addToDisplaymensage(' Hoje');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = ' Hoje';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} Hoje';
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
                                                  'assets/images/dia_(1).png',
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
                                                  'mx7vld63' /* HOJE */,
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
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.04,
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
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 10.0,
                                    child: Container(
                                      width: 140.0,
                                      height: 110.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Color(0xFF5E696F),
                                          width: 1.0,
                                        ),
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
                                              .addToDisplaymensage(' Ontem');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = ' Ontem';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} Ontem';
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
                                                  'assets/images/ontem_(1).png',
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
                                                  '2vmf5jcj' /* ONTEM */,
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
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.04,
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
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 10.0,
                                    child: Container(
                                      width: 140.0,
                                      height: 110.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Color(0xFF5E696F),
                                          width: 1.0,
                                        ),
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
                                              ' Essa semana');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = ' Essa semana';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} Essa semana';
                                          safeSetState(() {});
                                        },
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -0.06, 0.54),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/semana.png',
                                                  width: 70.0,
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
                                                  'n93rkj64' /* ESSA SEMANA */,
                                                ),
                                                textAlign: TextAlign.center,
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
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.035,
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
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 10.0,
                                    child: Container(
                                      width: 140.0,
                                      height: 110.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Color(0xFF5E696F),
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
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
                                                ' Fim  de semana');
                                            safeSetState(() {});
                                            FFAppState().buffer = '';
                                            safeSetState(() {});
                                            FFAppState().buffer =
                                                ' Fim  de semana';
                                            safeSetState(() {});
                                            await actions.speakText(
                                              FFAppState().buffer,
                                            );
                                            FFAppState().Historico =
                                                '${FFAppState().Historico} Fim  de semana';
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
                                                    'assets/images/fim-de-semana.png',
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
                                                    '2ssydgja' /* FIM DE SEMANA */,
                                                  ),
                                                  textAlign: TextAlign.center,
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
                                                        color: Colors.black,
                                                        fontSize:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.04,
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
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 10.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    child: Container(
                                      width: 140.0,
                                      height: 110.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        border: Border.all(
                                          color: Color(0xFF5E696F),
                                          width: 1.0,
                                        ),
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
                                              ' Quantos dias ?');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer =
                                              ' Quantos dias ?';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} Quantos dias ?';
                                          safeSetState(() {});
                                        },
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.13, 0.66),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/quantos_dias.png',
                                                  width: 75.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'zma0klpv' /* QUNATOS DIAS ? */,
                                                  ),
                                                  textAlign: TextAlign.center,
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
                                                        color: Colors.black,
                                                        fontSize:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.035,
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
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 20.0, 0.0),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 10.0,
                                    child: Container(
                                      width: 140.0,
                                      height: 110.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Color(0xFF5E696F),
                                          width: 1.0,
                                        ),
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
                                              ' Bom dia !');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = ' Bom dia !';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} Bom dia !';
                                          safeSetState(() {});
                                        },
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.31, 0.86),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/Bom_dia!.png',
                                                  width: 80.0,
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
                                                  'wjlif7wu' /* BOM DIA ! */,
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
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.04,
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
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 10.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    child: Container(
                                      width: 140.0,
                                      height: 110.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        border: Border.all(
                                          color: Color(0xFF5E696F),
                                          width: 1.0,
                                        ),
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
                                              ' Boa noite !');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = ' Boa noite !';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} Boa noite !';
                                          safeSetState(() {});
                                        },
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.11, 0.49),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/Boa_noite!.png',
                                                  width: 70.0,
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
                                                  'icfiov7c' /* BOA NOITE ! */,
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
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.035,
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
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 10.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    child: Container(
                                      width: 140.0,
                                      height: 110.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        border: Border.all(
                                          color: Color(0xFF5E696F),
                                          width: 1.0,
                                        ),
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
                                              ' Boa tarde !');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = ' Boa tarde !';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} Boa tarde !';
                                          safeSetState(() {});
                                        },
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.11, 0.59),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/Boa_tarde!.png',
                                                  width: 70.0,
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
                                                  'dlm6fvap' /* BOA TARDE ! */,
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
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.035,
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
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 10.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    child: Container(
                                      width: 140.0,
                                      height: 110.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        border: Border.all(
                                          color: Color(0xFF5E696F),
                                          width: 1.0,
                                        ),
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
                                              ' Muito tarde ');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = ' Muito tarde ';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} Muito tarde ';
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
                                                  'assets/images/tarde_(1).png',
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
                                                  'bo3ii3pq' /* MUITO TARDE */,
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
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.035,
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
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 10.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    child: Container(
                                      width: 140.0,
                                      height: 110.0,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        border: Border.all(
                                          color: Color(0xFF5E696F),
                                          width: 1.0,
                                        ),
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
                                              ' Acordar cedo');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = ' Acordar cedo';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} Acordar cedo';
                                          safeSetState(() {});
                                        },
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.86),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/acordar_cedo.png',
                                                  width: 80.0,
                                                  fit: BoxFit.cover,
                                                  alignment:
                                                      Alignment(0.0, 0.0),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'kqe8kszq' /* ACORDAR CEDO */,
                                                ),
                                                textAlign: TextAlign.center,
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
                                                      color: Colors.black,
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.03,
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
