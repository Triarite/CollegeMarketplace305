import '/backend/custom_cloud_functions/custom_cloud_function_response_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'nps_popup_widget.dart' show NpsPopupWidget;
import 'package:flutter/material.dart';

class NpsPopupModel extends FlutterFlowModel<NpsPopupWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for ratingBar widget.
  double? ratingBarValue;
  // State field(s) for feedback widget.
  FocusNode? feedbackFocusNode;
  TextEditingController? feedbackTextController;
  String? Function(BuildContext, String?)? feedbackTextControllerValidator;
  // Stores action output result for [Cloud Function - getNPS] action in Button widget.
  GetNPSCloudFunctionCallResponse? cloudFunction0fp;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    feedbackFocusNode?.dispose();
    feedbackTextController?.dispose();
  }
}
