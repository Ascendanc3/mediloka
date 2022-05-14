import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../page_ruangan/page_ruangan_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MarkerClickWidget extends StatefulWidget {
  const MarkerClickWidget({
    Key key,
    this.markerClickParameter,
  }) : super(key: key);

  final RumahSakitRecord markerClickParameter;

  @override
  _MarkerClickWidgetState createState() => _MarkerClickWidgetState();
}

class _MarkerClickWidgetState extends State<MarkerClickWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
      child: Container(
        width: double.infinity,
        height: 500,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 7,
              color: Color(0x32171717),
              offset: Offset(0, -4),
            )
          ],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 60,
                height: 4,
                decoration: BoxDecoration(
                  color: Color(0xFFDBE2E7),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      widget.markerClickParameter.nama,
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Roboto',
                            color: Color(0xFF090F13),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Text(
                        widget.markerClickParameter.deskripsi
                            .maybeHandleOverflow(
                          maxChars: 90,
                          replacement: '…',
                        ),
                        maxLines: 2,
                        style: FlutterFlowTheme.of(context).bodyText2.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF7C8791),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                child: Container(
                  width: double.infinity,
                  height: 140,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 1,
                        color: Color(0x32171717),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          widget.markerClickParameter.photo,
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                      child: FaIcon(
                        FontAwesomeIcons.handHoldingWater,
                        color: Color(0xFFBC1533),
                        size: 24,
                      ),
                    ),
                    Text(
                      widget.markerClickParameter.totalKantongDarah.toString(),
                      style: FlutterFlowTheme.of(context).bodyText2.override(
                            fontFamily: 'Outfit',
                            color: Color(0xFF7C8791),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                      child: Icon(
                        Icons.king_bed_rounded,
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                    Text(
                      widget.markerClickParameter.sisaKamar1.toString(),
                      style: FlutterFlowTheme.of(context).bodyText2.override(
                            fontFamily: 'Outfit',
                            color: Color(0xFF7C8791),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 44),
                child: FFButtonWidget(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PageRuanganWidget(),
                      ),
                    );
                  },
                  text: 'Check Tipe Kamar',
                  options: FFButtonOptions(
                    width: 350,
                    height: 60,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Outfit',
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                    elevation: 2,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
