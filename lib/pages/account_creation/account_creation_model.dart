import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'account_creation_widget.dart' show AccountCreationWidget;
import 'package:flutter/material.dart';

class AccountCreationModel extends FlutterFlowModel<AccountCreationWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CreationEmail widget.
  FocusNode? creationEmailFocusNode;
  TextEditingController? creationEmailTextController;
  String? Function(BuildContext, String?)? creationEmailTextControllerValidator;
  // State field(s) for CreationPassword widget.
  FocusNode? creationPasswordFocusNode;
  TextEditingController? creationPasswordTextController;
  late bool creationPasswordVisibility;
  String? Function(BuildContext, String?)?
      creationPasswordTextControllerValidator;
  // State field(s) for CreationVerifiedPassword widget.
  FocusNode? creationVerifiedPasswordFocusNode;
  TextEditingController? creationVerifiedPasswordTextController;
  late bool creationVerifiedPasswordVisibility;
  String? Function(BuildContext, String?)?
      creationVerifiedPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    creationPasswordVisibility = false;
    creationVerifiedPasswordVisibility = false;
  }

  @override
  void dispose() {
    creationEmailFocusNode?.dispose();
    creationEmailTextController?.dispose();

    creationPasswordFocusNode?.dispose();
    creationPasswordTextController?.dispose();

    creationVerifiedPasswordFocusNode?.dispose();
    creationVerifiedPasswordTextController?.dispose();
  }
}
