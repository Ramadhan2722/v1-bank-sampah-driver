import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'inputsampah_widget.dart' show InputsampahWidget;
import 'package:flutter/material.dart';

class InputsampahModel extends FlutterFlowModel<InputsampahWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for tanggal widget.
  FocusNode? tanggalFocusNode;
  TextEditingController? tanggalTextController;
  String? Function(BuildContext, String?)? tanggalTextControllerValidator;
  // State field(s) for jenissampah widget.
  String? jenissampahValue;
  FormFieldController<String>? jenissampahValueController;
  // State field(s) for bobot widget.
  FocusNode? bobotFocusNode;
  TextEditingController? bobotTextController;
  String? Function(BuildContext, String?)? bobotTextControllerValidator;
  // State field(s) for harga widget.
  FocusNode? hargaFocusNode;
  TextEditingController? hargaTextController;
  String? Function(BuildContext, String?)? hargaTextControllerValidator;
  // State field(s) for totalharga widget.
  FocusNode? totalhargaFocusNode;
  TextEditingController? totalhargaTextController;
  String? Function(BuildContext, String?)? totalhargaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tanggalFocusNode?.dispose();
    tanggalTextController?.dispose();

    bobotFocusNode?.dispose();
    bobotTextController?.dispose();

    hargaFocusNode?.dispose();
    hargaTextController?.dispose();

    totalhargaFocusNode?.dispose();
    totalhargaTextController?.dispose();
  }
}
