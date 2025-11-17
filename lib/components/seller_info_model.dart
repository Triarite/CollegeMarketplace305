import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'seller_info_widget.dart' show SellerInfoWidget;
import 'package:flutter/material.dart';

class SellerInfoModel extends FlutterFlowModel<SellerInfoWidget> {
  ///  Local state fields for this component.

  double? averageRating = 0.0;

  bool isLoading = true;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Read Document] action in SellerInfo widget.
  UsersRecord? sellerDocument;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
