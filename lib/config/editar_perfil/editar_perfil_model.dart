import '/flutter_flow/flutter_flow_util.dart';
import 'editar_perfil_widget.dart' show EditarPerfilWidget;
import 'package:flutter/material.dart';

class EditarPerfilModel extends FlutterFlowModel<EditarPerfilWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading_uploadData9om = false;
  FFUploadedFile uploadedLocalFile_uploadData9om =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadData9om = '';

  // State field(s) for outro_nome widget.
  FocusNode? outroNomeFocusNode;
  TextEditingController? outroNomeTextController;
  String? Function(BuildContext, String?)? outroNomeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    outroNomeFocusNode?.dispose();
    outroNomeTextController?.dispose();
  }
}
