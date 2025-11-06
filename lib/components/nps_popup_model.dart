import '/flutter_flow/flutter_flow_util.dart';
import 'nps_popup_widget.dart' show NpsPopupWidget;
import 'package:flutter/material.dart';

class NpsPopupModel extends FlutterFlowModel<NpsPopupWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for ratingBar widget.
  double? ratingBarValue;
  // State field(s) for question2 widget.
  FocusNode? question2FocusNode;
  TextEditingController? question2TextController;
  String? Function(BuildContext, String?)? question2TextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    question2FocusNode?.dispose();
    question2TextController?.dispose();
  }
}
