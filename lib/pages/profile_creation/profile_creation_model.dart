import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'profile_creation_widget.dart' show ProfileCreationWidget;
import 'package:flutter/material.dart';

class ProfileCreationModel extends FlutterFlowModel<ProfileCreationWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataRn5 = false;
  FFUploadedFile uploadedLocalFile_uploadDataRn5 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataRn5 = '';

  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for Major widget.
  FocusNode? majorFocusNode;
  TextEditingController? majorTextController;
  String? Function(BuildContext, String?)? majorTextControllerValidator;
  // State field(s) for Year widget.
  String? yearValue;
  FormFieldController<String>? yearValueController;
  // State field(s) for Bio widget.
  FocusNode? bioFocusNode;
  TextEditingController? bioTextController;
  String? Function(BuildContext, String?)? bioTextControllerValidator;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    majorFocusNode?.dispose();
    majorTextController?.dispose();

    bioFocusNode?.dispose();
    bioTextController?.dispose();
  }
}
