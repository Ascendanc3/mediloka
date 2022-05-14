import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../page_detail_ruangan/page_detail_ruangan_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PageRuanganWidget extends StatefulWidget {
  const PageRuanganWidget({Key key}) : super(key: key);

  @override
  _PageRuanganWidgetState createState() => _PageRuanganWidgetState();
}

class _PageRuanganWidgetState extends State<PageRuanganWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 15, 0, 30),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      onTap: () async {
                        Navigator.pop(context);
                      },
                      child: FaIcon(
                        FontAwesomeIcons.angleLeft,
                        color: Color(0xFF636262),
                        size: 24,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                      child: Text(
                        'Ruangan',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              StreamBuilder<List<RumahSakitRecord>>(
                stream: queryRumahSakitRecord(),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: SpinKitRotatingCircle(
                          color: FlutterFlowTheme.of(context).primaryColor,
                          size: 50,
                        ),
                      ),
                    );
                  }
                  List<RumahSakitRecord> columnRumahSakitRecordList =
                      snapshot.data;
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate(columnRumahSakitRecordList.length,
                        (columnIndex) {
                      final columnRumahSakitRecord =
                          columnRumahSakitRecordList[columnIndex];
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 0),
                        child: InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                                reverseDuration: Duration(milliseconds: 0),
                                child: PageDetailRuanganWidget(
                                  ruanganReference: columnRumahSakitRecord,
                                ),
                              ),
                            );
                          },
                          child: Container(
                            width: 371,
                            height: 117,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).secondaryColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15, 0, 0, 0),
                                  child: Container(
                                    width: 75,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEEEEEE),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.network(
                                          columnRumahSakitRecord.photo,
                                        ).image,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 10, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 12, 0, 0),
                                        child: Text(
                                          columnRumahSakitRecord.nama,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 16,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 5, 0, 5),
                                        child: Text(
                                          columnRumahSakitRecord.alamat,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 5, 0, 5),
                                        child: Text(
                                          'Click untuk melihat kamar',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
