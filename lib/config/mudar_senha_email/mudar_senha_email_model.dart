import '/flutter_flow/flutter_flow_util.dart';
import 'mudar_senha_email_widget.dart' show MudarSenhaEmailWidget;
import 'package:flutter/material.dart';

class MudarSenhaEmailModel extends FlutterFlowModel<MudarSenhaEmailWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for outro_email widget.
  FocusNode? outroEmailFocusNode;
  TextEditingController? outroEmailTextController;
  String? Function(BuildContext, String?)? outroEmailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    outroEmailFocusNode?.dispose();
    outroEmailTextController?.dispose();
  }
}
