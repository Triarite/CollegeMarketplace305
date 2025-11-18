import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'profile_viewer_widget.dart' show ProfileViewerWidget;
import 'package:flutter/material.dart';

class ProfileViewerModel extends FlutterFlowModel<ProfileViewerWidget> {
  ///  Local state fields for this page.

  bool profileLoaded = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Read Document] action in ProfileViewer widget.
  UsersRecord? userDocument;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
