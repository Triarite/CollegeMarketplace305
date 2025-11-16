import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for loginEnterPW widget.
  FocusNode? loginEnterPWFocusNode;
  TextEditingController? loginEnterPWTextController;
  late bool loginEnterPWVisibility;
  String? Function(BuildContext, String?)? loginEnterPWTextControllerValidator;
  // State field(s) for loginEnterEmail widget.
  FocusNode? loginEnterEmailFocusNode;
  TextEditingController? loginEnterEmailTextController;
  String? Function(BuildContext, String?)?
      loginEnterEmailTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in loginButton widget.
  RetentionMetricsRecord? retentionDoc;

  @override
  void initState(BuildContext context) {
    loginEnterPWVisibility = false;
  }

  @override
  void dispose() {
    loginEnterPWFocusNode?.dispose();
    loginEnterPWTextController?.dispose();

    loginEnterEmailFocusNode?.dispose();
    loginEnterEmailTextController?.dispose();
  }
}
