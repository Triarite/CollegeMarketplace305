import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'sell_page_widget.dart' show SellPageWidget;
import 'package:flutter/material.dart';

class SellPageModel extends FlutterFlowModel<SellPageWidget> {
  ///  Local state fields for this page.

  String? finalImageUrl;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadData757 = false;
  FFUploadedFile uploadedLocalFile_uploadData757 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // State field(s) for Timer widget.
  final timerInitialTimeMs = 0;
  int timerMilliseconds = 0;
  String timerValue = StopWatchTimer.getDisplayTime(
    0,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countUp));

  // State field(s) for titleField widget.
  FocusNode? titleFieldFocusNode;
  TextEditingController? titleFieldTextController;
  String? Function(BuildContext, String?)? titleFieldTextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for priceField widget.
  FocusNode? priceFieldFocusNode;
  TextEditingController? priceFieldTextController;
  String? Function(BuildContext, String?)? priceFieldTextControllerValidator;
  // State field(s) for descriptionField widget.
  FocusNode? descriptionFieldFocusNode;
  TextEditingController? descriptionFieldTextController;
  String? Function(BuildContext, String?)?
      descriptionFieldTextControllerValidator;
  bool isDataUploading_uploadDataLf9 = false;
  FFUploadedFile uploadedLocalFile_uploadDataLf9 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataLf9 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timerController.dispose();
    titleFieldFocusNode?.dispose();
    titleFieldTextController?.dispose();

    priceFieldFocusNode?.dispose();
    priceFieldTextController?.dispose();

    descriptionFieldFocusNode?.dispose();
    descriptionFieldTextController?.dispose();
  }
}
