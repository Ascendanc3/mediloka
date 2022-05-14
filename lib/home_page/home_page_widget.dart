import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../main.dart';
import '../page_ambulance/page_ambulance_widget.dart';
import '../page_ruangan/page_ruangan_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryColor,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 15, 10, 15),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AuthUserStreamWidget(
                          child: Text(
                            'Hi, ${currentUserDocument?.nama}'
                                .maybeHandleOverflow(
                              maxChars: 12,
                              replacement: '…',
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(170, 0, 0, 0),
                          child: Image.asset(
                            'assets/images/Vector.png',
                            width: 16,
                            height: 19,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: AuthUserStreamWidget(
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.network(
                                    valueOrDefault<String>(
                                      currentUserPhoto,
                                      'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
                                    ),
                                  ).image,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 15, 10, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 360,
                          height: 140,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/Group_1126_(4).png',
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 15, 10, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Layanan Informasi',
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 15, 16, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                    reverseDuration: Duration(milliseconds: 0),
                                    child: PageRuanganWidget(),
                                  ),
                                );
                              },
                              child: Container(
                                width: 71.41,
                                height: 71.41,
                                decoration: BoxDecoration(
                                  color: Color(0xFF5676F1),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x3B000000),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4, 4, 4, 4),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/Vector.svg',
                                        width: 40,
                                        height: 40,
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: Text(
                                'Ruangan',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Nunito Sans',
                                      fontSize: 12,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                    reverseDuration: Duration(milliseconds: 0),
                                    child: NavBarPage(initialPage: 'pageDarah'),
                                  ),
                                );
                              },
                              child: Container(
                                width: 71.41,
                                height: 71.41,
                                decoration: BoxDecoration(
                                  color: Color(0xFF3BC4F7),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x3B000000),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4, 4, 4, 4),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/Vector_(1).svg',
                                        width: 35,
                                        height: 42,
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: Text(
                                'Darah',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Nunito Sans',
                                      fontSize: 12,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                    reverseDuration: Duration(milliseconds: 0),
                                    child: PageAmbulanceWidget(),
                                  ),
                                );
                              },
                              child: Container(
                                width: 71.41,
                                height: 71.41,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFAF5F),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x3B000000),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4, 4, 4, 4),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/Vector_(2).svg',
                                        width: 45,
                                        height: 35,
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: Text(
                                'Ambulance',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Nunito Sans',
                                      fontSize: 12,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 35, 10, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Rekomendasi Ruangan',
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 15, 0, 0),
                    child: StreamBuilder<List<RumahSakitRecord>>(
                      stream: queryRumahSakitRecord(),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: SpinKitRotatingCircle(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                size: 50,
                              ),
                            ),
                          );
                        }
                        List<RumahSakitRecord> rowRumahSakitRecordList =
                            snapshot.data;
                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                rowRumahSakitRecordList.length, (rowIndex) {
                              final rowRumahSakitRecord =
                                  rowRumahSakitRecordList[rowIndex];
                              return Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                child: Container(
                                  width: 110,
                                  height: 173,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEEEEEE),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4,
                                        color: Color(0xFFF0F0F0),
                                        offset: Offset(0, 4),
                                      )
                                    ],
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5),
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10),
                                            ),
                                            child: Image.network(
                                              'https://img.lovepik.com/element/45001/7818.png_860.png',
                                              width: 110,
                                              height: 104,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 5, 20, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 5, 0, 0),
                                              child: Text(
                                                rowRumahSakitRecord.tipeKamar1
                                                    .maybeHandleOverflow(
                                                  maxChars: 14,
                                                  replacement: '…',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 5, 0, 0),
                                              child: Text(
                                                'Rp. ${formatNumber(
                                                  rowRumahSakitRecord
                                                      .hargaKamar1,
                                                  formatType:
                                                      FormatType.decimal,
                                                  decimalType:
                                                      DecimalType.periodDecimal,
                                                )}'
                                                    .maybeHandleOverflow(
                                                  maxChars: 15,
                                                  replacement: '…',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 5, 0, 0),
                                              child: Text(
                                                rowRumahSakitRecord.nama
                                                    .maybeHandleOverflow(
                                                  maxChars: 15,
                                                  replacement: '…',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 9,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
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
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 35, 10, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Penawaran Terbaik',
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 15, 0, 0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                            child: Container(
                              width: 110,
                              height: 173,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0xFFF0F0F0),
                                    offset: Offset(0, 4),
                                  )
                                ],
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5),
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        ),
                                        child: Image.asset(
                                          'assets/images/manfaat_cuci_darah_1.png',
                                          width: 110,
                                          height: 104,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 20, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 5, 0, 0),
                                          child: Text(
                                            'Cuci Darah',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 5, 0, 0),
                                          child: Text(
                                            'Rp. 490.000',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 5, 0, 0),
                                          child: Text(
                                            'Rumah Sakit A',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 9,
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
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                            child: Container(
                              width: 110,
                              height: 173,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0xFFF0F0F0),
                                    offset: Offset(0, 4),
                                  )
                                ],
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5),
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        ),
                                        child: Image.asset(
                                          'assets/images/301377_20-10-2020_12-10-34_1.png',
                                          width: 110,
                                          height: 104,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 20, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 5, 0, 0),
                                          child: Text(
                                            'Test PCR',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 5, 0, 0),
                                          child: Text(
                                            'Rp. 150.000',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 5, 0, 0),
                                          child: Text(
                                            'Rumah Sakit B',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 9,
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
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                            child: Container(
                              width: 110,
                              height: 173,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0xFFF0F0F0),
                                    offset: Offset(0, 4),
                                  )
                                ],
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5),
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        ),
                                        child: Image.asset(
                                          'assets/images/Foto_Rontgen_Periapikal_1_kali_dengan_Digital_Sensor_di_Dentalogy_Dental_Care_1.png',
                                          width: 110,
                                          height: 104,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 20, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 5, 0, 0),
                                          child: Text(
                                            'Rontgen Gigi',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 5, 0, 0),
                                          child: Text(
                                            'Rp. 49.000',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 5, 0, 0),
                                          child: Text(
                                            'Rumah Sakit B',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 9,
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
