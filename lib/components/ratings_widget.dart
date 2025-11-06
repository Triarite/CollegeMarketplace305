import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ratings_model.dart';
export 'ratings_model.dart';

/// Used for Item Listing page
class RatingsWidget extends StatefulWidget {
  const RatingsWidget({
    super.key,
    int? numRatings,
    double? averageRating,
  })  : this.numRatings = numRatings ?? 3,
        this.averageRating = averageRating ?? 2.78;

  final int numRatings;
  final double averageRating;

  @override
  State<RatingsWidget> createState() => _RatingsWidgetState();
}

class _RatingsWidgetState extends State<RatingsWidget> {
  late RatingsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RatingsModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('RATINGS_COMP_Ratings_ON_INIT_STATE');
      logFirebaseEvent('Ratings_rebuild_component');
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
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        if ((widget.averageRating > 0.0) && (widget.averageRating < 1.0))
          Icon(
            Icons.star_half,
            color: FlutterFlowTheme.of(context).warning,
            size: 24.0,
          ),
        if (widget.averageRating >= 1.0)
          Icon(
            Icons.star,
            color: FlutterFlowTheme.of(context).warning,
            size: 24.0,
          ),
        if ((widget.averageRating > 1.0) && (widget.averageRating < 2.0))
          Icon(
            Icons.star_half,
            color: FlutterFlowTheme.of(context).warning,
            size: 24.0,
          ),
        if (widget.averageRating >= 2.0)
          Icon(
            Icons.star,
            color: FlutterFlowTheme.of(context).warning,
            size: 24.0,
          ),
        if ((widget.averageRating > 2.0) && (widget.averageRating < 3.0))
          Icon(
            Icons.star_half,
            color: FlutterFlowTheme.of(context).warning,
            size: 24.0,
          ),
        if (widget.averageRating >= 3.0)
          Icon(
            Icons.star,
            color: FlutterFlowTheme.of(context).warning,
            size: 24.0,
          ),
        if ((widget.averageRating > 3.0) && (widget.averageRating < 1.0))
          Icon(
            Icons.star_half,
            color: FlutterFlowTheme.of(context).warning,
            size: 24.0,
          ),
        if (widget.averageRating >= 4.0)
          Icon(
            Icons.star,
            color: FlutterFlowTheme.of(context).warning,
            size: 24.0,
          ),
        if ((widget.averageRating > 4.0) && (widget.averageRating < 5.0))
          Icon(
            Icons.star_half,
            color: FlutterFlowTheme.of(context).warning,
            size: 24.0,
          ),
        if (widget.averageRating >= 5.0)
          Icon(
            Icons.star,
            color: FlutterFlowTheme.of(context).warning,
            size: 24.0,
          ),
        Text(
          '(${widget.numRatings.toString()})',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.inter(
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
        ),
      ],
    );
  }
}
