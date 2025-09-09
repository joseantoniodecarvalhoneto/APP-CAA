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
import 'board_perguntas_model.dart';
export 'board_perguntas_model.dart';

class BoardPerguntasWidget extends StatefulWidget {
  const BoardPerguntasWidget({super.key});

  static String routeName = 'board_perguntas';
  static String routePath = '/perguntas';

  @override
  State<BoardPerguntasWidget> createState() => _BoardPerguntasWidgetState();
}

class _BoardPerguntasWidgetState extends State<BoardPerguntasWidget>
    with TickerProviderStateMixin {
  late BoardPerguntasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BoardPerguntasModel());

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
                              '1pmls9nd' /* Configurações */,
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
                                          0.2,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.14,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFBA9DF4),
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

                                          FFAppState().addToDisplaymensage(
                                              '  Pode  me ajudar?');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer =
                                              'Pode me ajudar?';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico}Pode me ajudar ?';
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
                                                    'assets/images/ajudar.png',
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.1,
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.1,
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
                                                    'g6r0d1nj' /* PODE ME AJUDAR ? */,
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
                                                        fontSize:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.017,
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
                                          0.2,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.14,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFBA9DF4),
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

                                          FFAppState().addToDisplaymensage(
                                              ' Posso Brincar ?');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer =
                                              ' Posso Brincar ?';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} Posso Brincar ?';
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
                                                  'assets/images/brincar.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
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
                                                  '9vx1zrrh' /* POSSO BRINCAR ? */,
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
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.017,
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
                                          0.2,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.14,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFBA9DF4),
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
                                              ' Posso ir ao banheiro ?');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer =
                                              'Posso ir ao banheiro ?';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico}Posso ir ao banheiro ?';
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
                                                  'assets/images/banheiro.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
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
                                                  'wl4497ec' /* POSSO IR AO BANHEIRO ? */,
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
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.017,
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
                                          0.2,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.14,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFBA9DF4),
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
                                              ' Posso beber água ?');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer =
                                              ' Posso beber água ?';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico}Posso beber água ?';
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
                                                  'assets/images/beber.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
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
                                                  'e9wyv6nt' /* POSSO BEBER ÁGUA ? */,
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
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.017,
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
                                          0.2,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.14,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFBA9DF4),
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

                                          FFAppState().addToDisplaymensage(
                                              ' Posso comer isso ?');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer =
                                              'Posso comer isso ?';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico}Posso comer isso ?';
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
                                                  'assets/images/comer.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
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
                                                  'k27cpd9j' /* POSSO COMER ISSO ? */,
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
                                          0.2,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.14,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFBA9DF4),
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

                                          FFAppState().addToDisplaymensage(
                                              '  Posso jogar ?');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = 'Posso jogar ?';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico}Posso jogar ?';
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
                                                  'assets/images/jogar_no_tablet.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
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
                                                  '2ra9teik' /* POSSO JOGAR ? */,
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
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.017,
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
                                          0.2,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.14,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFBA9DF4),
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

                                          FFAppState().addToDisplaymensage(
                                              ' Posso assistir TV ?');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer =
                                              'Posso assistir TV ?';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico}Posso assistir TV ?';
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
                                                  'assets/images/assistir_televiso.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
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
                                                  's9ia39r6' /* POSSO ASSITIR TV ? */,
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
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.017,
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
                                          0.2,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.14,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFBA9DF4),
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

                                          FFAppState().addToDisplaymensage(
                                              ' Posso dormir ?');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer =
                                              ' Posso dormir ?';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} Posso dormir ?';
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
                                                  'assets/images/dormir.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
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
                                                  'o9lkmcdq' /* POSSO DORMIR ? */,
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
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.017,
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
                                          0.2,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.14,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFBA9DF4),
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

                                          FFAppState().addToDisplaymensage(
                                              'Posso tomar banho ?');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer =
                                              'Posso tomar banho ?';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico}Posso tomar banho ?';
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
                                                  'assets/images/banho.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
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
                                                  'z23r8df5' /* POSSO TOMAR BANHO ? */,
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
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.017,
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
                                          0.2,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.14,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFBA9DF4),
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

                                          FFAppState().addToDisplaymensage(
                                              ' O que é isso ?');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer =
                                              ' O que é isso ?';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} O que é isso ?';
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
                                                  'assets/images/o_que__isso.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
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
                                                  '5g6tpy4h' /* O QUE É ISSO ? */,
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
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.017,
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 20.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.2,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.14,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFBA9DF4),
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

                                          FFAppState().addToDisplaymensage(
                                              ' Onde vamos ?');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = ' Onde vamos ?';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} Onde vamos ?';
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
                                                  'sbrq653t' /* ONDE VAMOS ? */,
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
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.017,
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
                                                  'assets/images/onde_vamos.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
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
                                          0.2,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.14,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFBA9DF4),
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
                                              .addToDisplaymensage('Quem é ?');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = 'Quem é ?';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico}Quem é ?';
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
                                                  'assets/images/quem__(1).png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
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
                                                  'm66nuezr' /* QUEM É ? */,
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
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.017,
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
                                          0.2,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.14,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFBA9DF4),
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

                                          FFAppState().addToDisplaymensage(
                                              'Qual o seu nome ?');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer =
                                              'Qual o seu nome ?';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico}Qual o seu nome ?';
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
                                                  'assets/images/qual__o_seu_nome.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
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
                                                  'vwjz20g1' /* QUAL O SEU NOME ? */,
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
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.017,
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
                                          0.2,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.14,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFBA9DF4),
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

                                          FFAppState().addToDisplaymensage(
                                              'Onde está ?');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = 'Onde está ?';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico}Onde está ?';
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
                                                  'assets/images/onde_est.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
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
                                                  'rg2y6cu8' /* ONDE ESTÁ ? */,
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
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.017,
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
                                          0.2,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.14,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFBA9DF4),
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

                                          FFAppState().addToDisplaymensage(
                                              ' Quando é ?');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer = ' Quando é ?';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} Quando é ?';
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
                                                  'assets/images/quando.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
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
                                                  'k8zncw3i' /* QUANDO É ? */,
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
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.017,
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
                                          0.2,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.14,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFBA9DF4),
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

                                          FFAppState().addToDisplaymensage(
                                              'O que você fez ?');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer =
                                              'O que você fez ?';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico}O que você fez ?';
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
                                                  'assets/images/o_que_voc_fez.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
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
                                                  'hh44z6bj' /* OQUE VOCÊ FEZ ? */,
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
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.017,
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
                                          0.2,
                                      height: MediaQuery.sizeOf(context).width *
                                          0.14,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFBA9DF4),
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

                                          FFAppState().addToDisplaymensage(
                                              ' O que você disse ?');
                                          safeSetState(() {});
                                          FFAppState().buffer = '';
                                          safeSetState(() {});
                                          FFAppState().buffer =
                                              ' O que você disse ?';
                                          safeSetState(() {});
                                          await actions.speakText(
                                            FFAppState().buffer,
                                          );
                                          FFAppState().Historico =
                                              '${FFAppState().Historico} O que você disse ?';
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
                                                  'assets/images/o_que_disse.png',
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.1,
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
                                                  'j4m3gqi3' /* O QUE VOCÊ DISSE ? */,
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
                                                      fontSize:
                                                          MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.017,
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
                                            '8j1rp7zl' /* LIMPAR */,
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
                                              'jijtasvs' /* VOLTAR */,
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
                                                        '56jzd8qo' /* PLAY */,
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
                                                            .fromSTEB(40.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'qqhp0fcv' /* PARAR */,
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
                                                                      0.08,
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
                                            'cfcyzyl8' /* ANTERIOR */,
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
                                                          0.019,
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
                                                            .fromSTEB(
                                                                valueOrDefault<
                                                                    double>(
                                                                  MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.05,
                                                                  0.0,
                                                                ),
                                                                0.0,
                                                                0.0,
                                                                0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'wrnmwthy' /* PRANCHAS CAA */,
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
                                    color: Color(0xFFBA9DF4),
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

                                      FFAppState().addToDisplaymensage(
                                          ' Pode me ajudar ?');
                                      safeSetState(() {});
                                      FFAppState().buffer = '';
                                      safeSetState(() {});
                                      FFAppState().buffer = 'Pode me ajudar ?';
                                      safeSetState(() {});
                                      await actions.speakText(
                                        FFAppState().buffer,
                                      );
                                      FFAppState().Historico =
                                          '${FFAppState().Historico}Pode me ajudar ?';
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
                                              'assets/images/ajudar.png',
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
                                              'xig2hmfg' /* PODE ME AJUDAR ? */,
                                            ),
                                            textAlign: TextAlign.center,
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
                                                  fontSize: 14.0,
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
                                    color: Color(0xFFBA9DF4),
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

                                      FFAppState().addToDisplaymensage(
                                          ' Posso brincar ?');
                                      safeSetState(() {});
                                      FFAppState().buffer = '';
                                      safeSetState(() {});
                                      FFAppState().buffer = ' Posso brincar ?';
                                      safeSetState(() {});
                                      await actions.speakText(
                                        FFAppState().buffer,
                                      );
                                      FFAppState().Historico =
                                          '${FFAppState().Historico} Posso brincar ?';
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
                                              'assets/images/brincar.png',
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
                                              'oq7mvutz' /* POSSO BRINCAR ? */,
                                            ),
                                            textAlign: TextAlign.center,
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
                                    color: Color(0xFFBA9DF4),
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

                                      FFAppState().addToDisplaymensage(
                                          '  Posso ir ao banheiro ?');
                                      safeSetState(() {});
                                      FFAppState().buffer = '';
                                      safeSetState(() {});
                                      FFAppState().buffer =
                                          '  Posso ir ao banheiro ?';
                                      safeSetState(() {});
                                      await actions.speakText(
                                        FFAppState().buffer,
                                      );
                                      FFAppState().Historico =
                                          '${FFAppState().Historico}  Posso ir ao banheiro ?';
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
                                              'assets/images/banheiro.png',
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
                                                'vwm10nb3' /* POSSO IR AO BANHEIRO ? */,
                                              ),
                                              textAlign: TextAlign.center,
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
                                    color: Color(0xFFBA9DF4),
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

                                      FFAppState().addToDisplaymensage(
                                          ' Posso beber água ?');
                                      safeSetState(() {});
                                      FFAppState().buffer = '';
                                      safeSetState(() {});
                                      FFAppState().buffer =
                                          ' Posso beber água ?';
                                      safeSetState(() {});
                                      await actions.speakText(
                                        FFAppState().buffer,
                                      );
                                      FFAppState().Historico =
                                          '${FFAppState().Historico} Posso beber água ?';
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
                                              'assets/images/beber.png',
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
                                              '3f44cgrc' /* POSSO BEBER ÁGUA ? */,
                                            ),
                                            textAlign: TextAlign.center,
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
                                                  fontSize: 14.0,
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
                                    color: Color(0xFFBA9DF4),
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

                                      FFAppState().addToDisplaymensage(
                                          '  Posso jogar ?');
                                      safeSetState(() {});
                                      FFAppState().buffer = '';
                                      safeSetState(() {});
                                      FFAppState().buffer = '  Posso jogar ?';
                                      safeSetState(() {});
                                      await actions.speakText(
                                        FFAppState().buffer,
                                      );
                                      FFAppState().Historico =
                                          '${FFAppState().Historico}  Posso jogar ?';
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
                                              'assets/images/jogar_no_tablet.png',
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
                                              'nlepb1ld' /* POSSO JOGAR ? */,
                                            ),
                                            textAlign: TextAlign.center,
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
                                                  fontSize: 14.0,
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
                                    color: Color(0xFFBA9DF4),
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

                                      FFAppState().addToDisplaymensage(
                                          ' Posso assistir TV ?');
                                      safeSetState(() {});
                                      FFAppState().buffer = '';
                                      safeSetState(() {});
                                      FFAppState().buffer =
                                          ' Posso assistir TV ?';
                                      safeSetState(() {});
                                      await actions.speakText(
                                        FFAppState().buffer,
                                      );
                                      FFAppState().Historico =
                                          '${FFAppState().Historico} Posso assistir TV ?';
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
                                              'assets/images/assistir_televiso.png',
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
                                              'h2owueyy' /* POSSO ASSISTIR TV ? */,
                                            ),
                                            textAlign: TextAlign.center,
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 20.0, 0.0),
                                child: Container(
                                  width: 140.0,
                                  height: 110.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFBA9DF4),
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

                                      FFAppState().addToDisplaymensage(
                                          ' Posso dormir ?');
                                      safeSetState(() {});
                                      FFAppState().buffer = '';
                                      safeSetState(() {});
                                      FFAppState().buffer = 'Posso dormir ?';
                                      safeSetState(() {});
                                      await actions.speakText(
                                        FFAppState().buffer,
                                      );
                                      FFAppState().Historico =
                                          '${FFAppState().Historico}Posso dormir ? ';
                                      safeSetState(() {});
                                    },
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'uixd9n2a' /* POSSO DORMIR ? */,
                                            ),
                                            textAlign: TextAlign.center,
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
                                                  fontSize: 14.0,
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
                                              'assets/images/dormir.png',
                                              width: 75.0,
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
                                    color: Color(0xFFBA9DF4),
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

                                      FFAppState().addToDisplaymensage(
                                          ' Posso tomar banho ?');
                                      safeSetState(() {});
                                      FFAppState().buffer = '';
                                      safeSetState(() {});
                                      FFAppState().buffer =
                                          ' Posso tomar banho ?';
                                      safeSetState(() {});
                                      await actions.speakText(
                                        FFAppState().buffer,
                                      );
                                      FFAppState().Historico =
                                          '${FFAppState().Historico} Posso tomar banho ?';
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
                                              'assets/images/banho.png',
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
                                              '46ttfbas' /* POSSO TOMAR BANHO ? */,
                                            ),
                                            textAlign: TextAlign.center,
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 20.0, 0.0),
                                child: Container(
                                  width: 140.0,
                                  height: 110.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFBA9DF4),
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

                                      FFAppState().addToDisplaymensage(
                                          '  Onde vamos ?');
                                      safeSetState(() {});
                                      FFAppState().buffer = '';
                                      safeSetState(() {});
                                      FFAppState().buffer = '  Onde vamos ?';
                                      safeSetState(() {});
                                      await actions.speakText(
                                        FFAppState().buffer,
                                      );
                                      FFAppState().Historico =
                                          '${FFAppState().Historico}  Onde vamos ?';
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
                                              'assets/images/onde_vamos.png',
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
                                              'onjyu96e' /* ONDE VAMOS ? */,
                                            ),
                                            textAlign: TextAlign.center,
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 20.0, 0.0),
                                child: Container(
                                  width: 140.0,
                                  height: 110.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFBA9DF4),
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
                                          .addToDisplaymensage(' Quem é ?');
                                      safeSetState(() {});
                                      FFAppState().buffer = '';
                                      safeSetState(() {});
                                      FFAppState().buffer = 'Quem é ?';
                                      safeSetState(() {});
                                      await actions.speakText(
                                        FFAppState().buffer,
                                      );
                                      FFAppState().Historico =
                                          '${FFAppState().Historico} Quem é ?';
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
                                              'assets/images/quem__(1).png',
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
                                              '20znk07y' /* QUEM É ? */,
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
                                    color: Color(0xFFBA9DF4),
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

                                      FFAppState().addToDisplaymensage(
                                          ' Qual o seu nome ?');
                                      safeSetState(() {});
                                      FFAppState().buffer = '';
                                      safeSetState(() {});
                                      FFAppState().buffer =
                                          ' Qual o seu nome ?';
                                      safeSetState(() {});
                                      await actions.speakText(
                                        FFAppState().buffer,
                                      );
                                      FFAppState().Historico =
                                          '${FFAppState().Historico} Qual o seu nome ?';
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
                                              'assets/images/qual__o_seu_nome.png',
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
                                              'yvsath7m' /* QUAL O SEU NOME ? */,
                                            ),
                                            textAlign: TextAlign.center,
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 20.0, 0.0),
                                child: Container(
                                  width: 140.0,
                                  height: 110.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFBA9DF4),
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
                                          .addToDisplaymensage(' Onde está ?');
                                      safeSetState(() {});
                                      FFAppState().buffer = '';
                                      safeSetState(() {});
                                      FFAppState().buffer = ' Onde está ?';
                                      safeSetState(() {});
                                      await actions.speakText(
                                        FFAppState().buffer,
                                      );
                                      FFAppState().Historico =
                                          '${FFAppState().Historico} Onde está ?';
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
                                              'assets/images/onde_est.png',
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
                                              '518arsx9' /* ONDE ESTÁ ? */,
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
                                                  fontSize: 14.0,
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
                                    color: Color(0xFFBA9DF4),
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
                                          .addToDisplaymensage(' Quando é ?');
                                      safeSetState(() {});
                                      FFAppState().buffer = '';
                                      safeSetState(() {});
                                      FFAppState().buffer = ' Quando é ?';
                                      safeSetState(() {});
                                      await actions.speakText(
                                        FFAppState().buffer,
                                      );
                                      FFAppState().Historico =
                                          '${FFAppState().Historico} Quando é ?';
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
                                              'assets/images/quando.png',
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
                                              'alj6svpa' /* QUANDO É ? */,
                                            ),
                                            textAlign: TextAlign.center,
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
                                                  fontSize: 14.0,
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
                                    color: Color(0xFFBA9DF4),
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

                                      FFAppState().addToDisplaymensage(
                                          '  O que você fez ?');
                                      safeSetState(() {});
                                      FFAppState().buffer = '';
                                      safeSetState(() {});
                                      FFAppState().buffer =
                                          '  O que você fez ?';
                                      safeSetState(() {});
                                      await actions.speakText(
                                        FFAppState().buffer,
                                      );
                                      FFAppState().Historico =
                                          '${FFAppState().Historico}  O que você fez ?';
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
                                              'assets/images/o_que_voc_fez.png',
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
                                              '198ybqam' /* O QUE VOCÊ FEZ ? */,
                                            ),
                                            textAlign: TextAlign.center,
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
                                                  fontSize: 14.0,
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
                                    color: Color(0xFFBA9DF4),
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

                                      FFAppState().addToDisplaymensage(
                                          ' O que você disse ?');
                                      safeSetState(() {});
                                      FFAppState().buffer = '';
                                      safeSetState(() {});
                                      FFAppState().buffer =
                                          ' O que você disse ?';
                                      safeSetState(() {});
                                      await actions.speakText(
                                        FFAppState().buffer,
                                      );
                                      FFAppState().Historico =
                                          '${FFAppState().Historico} O que você disse ?';
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
                                              'assets/images/o_que_disse.png',
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
                                              '253ia1nz' /* O QUE VOCÊ DISSE ? */,
                                            ),
                                            textAlign: TextAlign.center,
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
                                                  fontSize: 14.0,
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
