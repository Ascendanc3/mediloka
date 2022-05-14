import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PageDarahWidget extends StatefulWidget {
  const PageDarahWidget({Key key}) : super(key: key);

  @override
  _PageDarahWidgetState createState() => _PageDarahWidgetState();
}

class _PageDarahWidgetState extends State<PageDarahWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryColor,
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
                        'Informasi Darah',
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
              Expanded(
                child: DefaultTabController(
                  length: 8,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      TabBar(
                        isScrollable: true,
                        labelColor: FlutterFlowTheme.of(context).alternate,
                        unselectedLabelColor:
                            FlutterFlowTheme.of(context).primaryText,
                        labelPadding:
                            EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                        labelStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Poppins',
                                  fontSize: 28,
                                ),
                        indicatorColor:
                            FlutterFlowTheme.of(context).primaryColor,
                        tabs: [
                          Tab(
                            text: 'A-',
                          ),
                          Tab(
                            text: 'A+',
                          ),
                          Tab(
                            text: 'B-',
                          ),
                          Tab(
                            text: 'B+',
                          ),
                          Tab(
                            text: 'O-',
                          ),
                          Tab(
                            text: 'O+',
                          ),
                          Tab(
                            text: 'AB-',
                          ),
                          Tab(
                            text: 'AB+',
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                              child: StreamBuilder<List<RumahSakitRecord>>(
                                stream: queryRumahSakitRecord(
                                  queryBuilder: (rumahSakitRecord) =>
                                      rumahSakitRecord.orderBy(
                                          'totalKantongDarah',
                                          descending: true),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50,
                                        height: 50,
                                        child: SpinKitRotatingCircle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          size: 50,
                                        ),
                                      ),
                                    );
                                  }
                                  List<RumahSakitRecord>
                                      columnRumahSakitRecordList =
                                      snapshot.data;
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        columnRumahSakitRecordList.length,
                                        (columnIndex) {
                                      final columnRumahSakitRecord =
                                          columnRumahSakitRecordList[
                                              columnIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 5, 10, 0),
                                        child: Container(
                                          width: 371,
                                          height: 83,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(5, 0, 0, 0),
                                                child: Container(
                                                  width: 70,
                                                  height: 70,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFEEEEEE),
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.network(
                                                        columnRumahSakitRecord
                                                            .photo,
                                                      ).image,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(5, 0, 0, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 10, 0, 0),
                                                      child: Text(
                                                        columnRumahSakitRecord
                                                            .nama,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 16,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 5, 0, 5),
                                                      child: Text(
                                                        columnRumahSakitRecord
                                                            .alamat,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 0, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        5,
                                                                        0,
                                                                        0),
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .handHoldingWater,
                                                              color: Color(
                                                                  0xFFBC1533),
                                                              size: 16,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5,
                                                                        5,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              'Stock: ${columnRumahSakitRecord.jumlahDarahAMin.toString()}',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    color: Color(
                                                                        0xFFBC1533),
                                                                    fontSize:
                                                                        10,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                              child: StreamBuilder<List<RumahSakitRecord>>(
                                stream: queryRumahSakitRecord(
                                  queryBuilder: (rumahSakitRecord) =>
                                      rumahSakitRecord.orderBy(
                                          'totalKantongDarah',
                                          descending: true),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50,
                                        height: 50,
                                        child: SpinKitRotatingCircle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          size: 50,
                                        ),
                                      ),
                                    );
                                  }
                                  List<RumahSakitRecord>
                                      columnRumahSakitRecordList =
                                      snapshot.data;
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        columnRumahSakitRecordList.length,
                                        (columnIndex) {
                                      final columnRumahSakitRecord =
                                          columnRumahSakitRecordList[
                                              columnIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 5, 10, 0),
                                        child: Container(
                                          width: 371,
                                          height: 83,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(5, 0, 0, 0),
                                                child: Container(
                                                  width: 70,
                                                  height: 70,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFEEEEEE),
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.network(
                                                        columnRumahSakitRecord
                                                            .photo,
                                                      ).image,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(5, 0, 0, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 10, 0, 0),
                                                      child: Text(
                                                        columnRumahSakitRecord
                                                            .nama,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 16,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 5, 0, 5),
                                                      child: Text(
                                                        columnRumahSakitRecord
                                                            .alamat,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 0, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        5,
                                                                        0,
                                                                        0),
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .handHoldingWater,
                                                              color: Color(
                                                                  0xFFBC1533),
                                                              size: 16,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5,
                                                                        5,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              'Stock: ${columnRumahSakitRecord.jumlahDarahAPlus.toString()}',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    color: Color(
                                                                        0xFFBC1533),
                                                                    fontSize:
                                                                        10,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                              child: StreamBuilder<List<RumahSakitRecord>>(
                                stream: queryRumahSakitRecord(
                                  queryBuilder: (rumahSakitRecord) =>
                                      rumahSakitRecord.orderBy(
                                          'totalKantongDarah',
                                          descending: true),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50,
                                        height: 50,
                                        child: SpinKitRotatingCircle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          size: 50,
                                        ),
                                      ),
                                    );
                                  }
                                  List<RumahSakitRecord>
                                      columnRumahSakitRecordList =
                                      snapshot.data;
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        columnRumahSakitRecordList.length,
                                        (columnIndex) {
                                      final columnRumahSakitRecord =
                                          columnRumahSakitRecordList[
                                              columnIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 5, 10, 0),
                                        child: Container(
                                          width: 371,
                                          height: 83,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(5, 0, 0, 0),
                                                child: Container(
                                                  width: 70,
                                                  height: 70,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFEEEEEE),
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.network(
                                                        columnRumahSakitRecord
                                                            .photo,
                                                      ).image,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(5, 0, 0, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 10, 0, 0),
                                                      child: Text(
                                                        columnRumahSakitRecord
                                                            .nama,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 16,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 5, 0, 5),
                                                      child: Text(
                                                        columnRumahSakitRecord
                                                            .alamat,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 0, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        5,
                                                                        0,
                                                                        0),
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .handHoldingWater,
                                                              color: Color(
                                                                  0xFFBC1533),
                                                              size: 16,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5,
                                                                        5,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              'Stock: ${columnRumahSakitRecord.jumlahDarahBMin.toString()}',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    color: Color(
                                                                        0xFFBC1533),
                                                                    fontSize:
                                                                        10,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                              child: StreamBuilder<List<RumahSakitRecord>>(
                                stream: queryRumahSakitRecord(
                                  queryBuilder: (rumahSakitRecord) =>
                                      rumahSakitRecord.orderBy(
                                          'totalKantongDarah',
                                          descending: true),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50,
                                        height: 50,
                                        child: SpinKitRotatingCircle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          size: 50,
                                        ),
                                      ),
                                    );
                                  }
                                  List<RumahSakitRecord>
                                      columnRumahSakitRecordList =
                                      snapshot.data;
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        columnRumahSakitRecordList.length,
                                        (columnIndex) {
                                      final columnRumahSakitRecord =
                                          columnRumahSakitRecordList[
                                              columnIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 5, 10, 0),
                                        child: Container(
                                          width: 371,
                                          height: 83,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(5, 0, 0, 0),
                                                child: Container(
                                                  width: 70,
                                                  height: 70,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFEEEEEE),
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.network(
                                                        columnRumahSakitRecord
                                                            .photo,
                                                      ).image,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(5, 0, 0, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 10, 0, 0),
                                                      child: Text(
                                                        columnRumahSakitRecord
                                                            .nama,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 16,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 5, 0, 5),
                                                      child: Text(
                                                        columnRumahSakitRecord
                                                            .alamat,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 0, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        5,
                                                                        0,
                                                                        0),
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .handHoldingWater,
                                                              color: Color(
                                                                  0xFFBC1533),
                                                              size: 16,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5,
                                                                        5,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              'Stock: ${columnRumahSakitRecord.jumlahDarahBPlus.toString()}',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    color: Color(
                                                                        0xFFBC1533),
                                                                    fontSize:
                                                                        10,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                              child: StreamBuilder<List<RumahSakitRecord>>(
                                stream: queryRumahSakitRecord(
                                  queryBuilder: (rumahSakitRecord) =>
                                      rumahSakitRecord.orderBy(
                                          'totalKantongDarah',
                                          descending: true),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50,
                                        height: 50,
                                        child: SpinKitRotatingCircle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          size: 50,
                                        ),
                                      ),
                                    );
                                  }
                                  List<RumahSakitRecord>
                                      columnRumahSakitRecordList =
                                      snapshot.data;
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        columnRumahSakitRecordList.length,
                                        (columnIndex) {
                                      final columnRumahSakitRecord =
                                          columnRumahSakitRecordList[
                                              columnIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 5, 10, 0),
                                        child: Container(
                                          width: 371,
                                          height: 83,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(5, 0, 0, 0),
                                                child: Container(
                                                  width: 70,
                                                  height: 70,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFEEEEEE),
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.network(
                                                        columnRumahSakitRecord
                                                            .photo,
                                                      ).image,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(5, 0, 0, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 10, 0, 0),
                                                      child: Text(
                                                        columnRumahSakitRecord
                                                            .nama,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 16,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 5, 0, 5),
                                                      child: Text(
                                                        columnRumahSakitRecord
                                                            .alamat,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 0, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        5,
                                                                        0,
                                                                        0),
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .handHoldingWater,
                                                              color: Color(
                                                                  0xFFBC1533),
                                                              size: 16,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5,
                                                                        5,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              'Stock: ${columnRumahSakitRecord.jumlahDarahOMin.toString()}',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    color: Color(
                                                                        0xFFBC1533),
                                                                    fontSize:
                                                                        10,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                              child: StreamBuilder<List<RumahSakitRecord>>(
                                stream: queryRumahSakitRecord(
                                  queryBuilder: (rumahSakitRecord) =>
                                      rumahSakitRecord.orderBy(
                                          'totalKantongDarah',
                                          descending: true),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50,
                                        height: 50,
                                        child: SpinKitRotatingCircle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          size: 50,
                                        ),
                                      ),
                                    );
                                  }
                                  List<RumahSakitRecord>
                                      columnRumahSakitRecordList =
                                      snapshot.data;
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        columnRumahSakitRecordList.length,
                                        (columnIndex) {
                                      final columnRumahSakitRecord =
                                          columnRumahSakitRecordList[
                                              columnIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 5, 10, 0),
                                        child: Container(
                                          width: 371,
                                          height: 83,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(5, 0, 0, 0),
                                                child: Container(
                                                  width: 70,
                                                  height: 70,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFEEEEEE),
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.network(
                                                        columnRumahSakitRecord
                                                            .photo,
                                                      ).image,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(5, 0, 0, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 10, 0, 0),
                                                      child: Text(
                                                        columnRumahSakitRecord
                                                            .nama,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 16,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 5, 0, 5),
                                                      child: Text(
                                                        columnRumahSakitRecord
                                                            .alamat,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 0, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        5,
                                                                        0,
                                                                        0),
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .handHoldingWater,
                                                              color: Color(
                                                                  0xFFBC1533),
                                                              size: 16,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5,
                                                                        5,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              'Stock: ${columnRumahSakitRecord.jumlahDarahOPlus.toString()}',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    color: Color(
                                                                        0xFFBC1533),
                                                                    fontSize:
                                                                        10,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                              child: StreamBuilder<List<RumahSakitRecord>>(
                                stream: queryRumahSakitRecord(
                                  queryBuilder: (rumahSakitRecord) =>
                                      rumahSakitRecord.orderBy(
                                          'totalKantongDarah',
                                          descending: true),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50,
                                        height: 50,
                                        child: SpinKitRotatingCircle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          size: 50,
                                        ),
                                      ),
                                    );
                                  }
                                  List<RumahSakitRecord>
                                      columnRumahSakitRecordList =
                                      snapshot.data;
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        columnRumahSakitRecordList.length,
                                        (columnIndex) {
                                      final columnRumahSakitRecord =
                                          columnRumahSakitRecordList[
                                              columnIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 5, 10, 0),
                                        child: Container(
                                          width: 371,
                                          height: 83,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(5, 0, 0, 0),
                                                child: Container(
                                                  width: 70,
                                                  height: 70,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFEEEEEE),
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.network(
                                                        columnRumahSakitRecord
                                                            .photo,
                                                      ).image,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(5, 0, 0, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 10, 0, 0),
                                                      child: Text(
                                                        columnRumahSakitRecord
                                                            .nama,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 16,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 5, 0, 5),
                                                      child: Text(
                                                        columnRumahSakitRecord
                                                            .alamat,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 0, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        5,
                                                                        0,
                                                                        0),
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .handHoldingWater,
                                                              color: Color(
                                                                  0xFFBC1533),
                                                              size: 16,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5,
                                                                        5,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              'Stock: ${columnRumahSakitRecord.jumlahDarahABMin.toString()}',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    color: Color(
                                                                        0xFFBC1533),
                                                                    fontSize:
                                                                        10,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                              child: StreamBuilder<List<RumahSakitRecord>>(
                                stream: queryRumahSakitRecord(
                                  queryBuilder: (rumahSakitRecord) =>
                                      rumahSakitRecord.orderBy(
                                          'totalKantongDarah',
                                          descending: true),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50,
                                        height: 50,
                                        child: SpinKitRotatingCircle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          size: 50,
                                        ),
                                      ),
                                    );
                                  }
                                  List<RumahSakitRecord>
                                      columnRumahSakitRecordList =
                                      snapshot.data;
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        columnRumahSakitRecordList.length,
                                        (columnIndex) {
                                      final columnRumahSakitRecord =
                                          columnRumahSakitRecordList[
                                              columnIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 5, 10, 0),
                                        child: Container(
                                          width: 371,
                                          height: 83,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(5, 0, 0, 0),
                                                child: Container(
                                                  width: 70,
                                                  height: 70,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFEEEEEE),
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.network(
                                                        columnRumahSakitRecord
                                                            .photo,
                                                      ).image,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(5, 0, 0, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 10, 0, 0),
                                                      child: Text(
                                                        columnRumahSakitRecord
                                                            .nama,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 16,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 5, 0, 5),
                                                      child: Text(
                                                        columnRumahSakitRecord
                                                            .alamat,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 0, 0, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        5,
                                                                        0,
                                                                        0),
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .handHoldingWater,
                                                              color: Color(
                                                                  0xFFBC1533),
                                                              size: 16,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5,
                                                                        5,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              'Stock: ${columnRumahSakitRecord.jumlahDarahABPlus.toString()}',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Montserrat',
                                                                    color: Color(
                                                                        0xFFBC1533),
                                                                    fontSize:
                                                                        10,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
