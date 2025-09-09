import '/flutter_flow/flutter_flow_util.dart';
import 'autenticacao_historico_widget.dart' show AutenticacaoHistoricoWidget;
import 'package:flutter/material.dart';

class AutenticacaoHistoricoModel
    extends FlutterFlowModel<AutenticacaoHistoricoWidget> {
  ///  State fields for stateful widgets in this component.

  bool autenticacaobiometrica = false;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaTextController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    senhaVisibility = false;
  }

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    senhaFocusNode?.dispose();
    senhaTextController?.dispose();
  }
}
