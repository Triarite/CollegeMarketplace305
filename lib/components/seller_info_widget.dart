import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'seller_info_model.dart';
export 'seller_info_model.dart';

/// Seller Info for Item listing
class SellerInfoWidget extends StatefulWidget {
  const SellerInfoWidget({
    super.key,
    required this.sellerDocumentReference,
  });

  final DocumentReference? sellerDocumentReference;

  @override
  State<SellerInfoWidget> createState() => _SellerInfoWidgetState();
}

class _SellerInfoWidgetState extends State<SellerInfoWidget> {
  late SellerInfoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SellerInfoModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('SELLER_INFO_SellerInfo_ON_INIT_STATE');
      // Get Seller Doc from Reference
      logFirebaseEvent('SellerInfo_GetSellerDocfromReference');
      _model.sellerDocument =
          await UsersRecord.getDocumentOnce(widget.sellerDocumentReference!);
      logFirebaseEvent('SellerInfo_update_component_state');
      _model.averageRating = functions
          .getAverageFromIntList(_model.sellerDocument?.ratings.toList());
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(-1.0, -1.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          logFirebaseEvent('SELLER_INFO_COMP_SellerInfoRow_ON_TAP');
          logFirebaseEvent('SellerInfoRow_navigate_to');

          context.pushNamed(
            ProfileViewerWidget.routeName,
            queryParameters: {
              'userDocumentReference': serializeParam(
                widget.sellerDocumentReference,
                ParamType.DocumentReference,
              ),
            }.withoutNulls,
          );
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
              child: Container(
                width: 48.0,
                height: 48.0,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  _model.sellerDocument?.photoUrl != null &&
                          _model.sellerDocument?.photoUrl != ''
                      ? _model.sellerDocument!.photoUrl
                      : 'https://picsum.photos/seed/70/600',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1.0, -1.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    valueOrDefault<String>(
                      'Seller: ${_model.sellerDocument?.displayName}',
                      'Seller: Seller Name',
                    ),
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          font: GoogleFonts.interTight(
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleLarge
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleLarge.fontStyle,
                        ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if ((_model.averageRating! > 0.0) &&
                          (_model.averageRating! < 1.0))
                        Icon(
                          Icons.star_half,
                          color: FlutterFlowTheme.of(context).warning,
                          size: 24.0,
                        ),
                      if (_model.averageRating! >= 1.0)
                        Icon(
                          Icons.star,
                          color: FlutterFlowTheme.of(context).warning,
                          size: 24.0,
                        ),
                      if ((_model.averageRating! > 1.0) &&
                          (_model.averageRating! < 2.0))
                        Icon(
                          Icons.star_half,
                          color: FlutterFlowTheme.of(context).warning,
                          size: 24.0,
                        ),
                      if (_model.averageRating! >= 2.0)
                        Icon(
                          Icons.star,
                          color: FlutterFlowTheme.of(context).warning,
                          size: 24.0,
                        ),
                      if ((_model.averageRating! > 2.0) &&
                          (_model.averageRating! < 3.0))
                        Icon(
                          Icons.star_half,
                          color: FlutterFlowTheme.of(context).warning,
                          size: 24.0,
                        ),
                      if (_model.averageRating! >= 3.0)
                        Icon(
                          Icons.star,
                          color: FlutterFlowTheme.of(context).warning,
                          size: 24.0,
                        ),
                      if ((_model.averageRating! > 3.0) &&
                          (_model.averageRating! < 1.0))
                        Icon(
                          Icons.star_half,
                          color: FlutterFlowTheme.of(context).warning,
                          size: 24.0,
                        ),
                      if (_model.averageRating! >= 4.0)
                        Icon(
                          Icons.star,
                          color: FlutterFlowTheme.of(context).warning,
                          size: 24.0,
                        ),
                      if ((_model.averageRating! > 4.0) &&
                          (_model.averageRating! < 5.0))
                        Icon(
                          Icons.star_half,
                          color: FlutterFlowTheme.of(context).warning,
                          size: 24.0,
                        ),
                      if (_model.averageRating! >= 5.0)
                        Icon(
                          Icons.star,
                          color: FlutterFlowTheme.of(context).warning,
                          size: 24.0,
                        ),
                      Text(
                        '(${_model.sellerDocument!.ratings.isNotEmpty ? _model.sellerDocument?.ratings.length.toString() : 'No Ratings'})',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ],
                  ),
                ].divide(SizedBox(height: 5.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
