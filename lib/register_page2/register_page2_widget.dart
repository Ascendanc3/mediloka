import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage2Widget extends StatefulWidget {
  const RegisterPage2Widget({Key key}) : super(key: key);

  @override
  _RegisterPage2WidgetState createState() => _RegisterPage2WidgetState();
}

class _RegisterPage2WidgetState extends State<RegisterPage2Widget> {
  String dropDownKotaValue;
  TextEditingController textFieldBPJSController;
  TextEditingController textFieldNomorController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textFieldBPJSController = TextEditingController();
    textFieldNomorController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryColor,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryColor,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
              child: SingleChildScrollView(
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
                            padding:
                                EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                            child: Text(
                              'Register',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Ayo Selesaikan',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        Text(
                          'Step terakhir sebelum masuk aplikasi',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF4D4D4D),
                                    fontSize: 12,
                                  ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-0.97, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                              child: Text(
                                'Asal Kota',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ),
                          FlutterFlowDropDown(
                            options: FFAppState().asalKota.toList(),
                            onChanged: (val) =>
                                setState(() => dropDownKotaValue = val),
                            width: 364,
                            height: 50,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                            hintText: 'Pilih Kota',
                            fillColor: Colors.white,
                            elevation: 2,
                            borderColor: Color(0xFF4D4D4D),
                            borderWidth: 0,
                            borderRadius: 10,
                            margin:
                                EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                            hidesUnderline: true,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-0.97, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                              child: Text(
                                'Nomor BPJS (Optional)',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ),
                          TextFormField(
                            controller: textFieldBPJSController,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF4D4D4D),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF4D4D4D),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 25),
                              suffixIcon: Icon(
                                Icons.format_list_numbered_rtl_rounded,
                                color: Color(0xFF757575),
                                size: 22,
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-0.97, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                              child: Text(
                                'Nomor Telepon (Optional)',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ),
                          TextFormField(
                            controller: textFieldNomorController,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: true,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF4D4D4D),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF4D4D4D),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 25),
                              suffixIcon: Icon(
                                Icons.phone,
                                color: Color(0xFF757575),
                                size: 22,
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 300, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              final usersUpdateData = createUsersRecordData(
                                asalKota: dropDownKotaValue,
                                nomorBPJS:
                                    int.parse(textFieldBPJSController.text),
                                nomorHP:
                                    int.parse(textFieldNomorController.text),
                              );
                              await currentUserReference
                                  .update(usersUpdateData);
                              await Navigator.pushAndRemoveUntil(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                  reverseDuration: Duration(milliseconds: 0),
                                  child: NavBarPage(initialPage: 'homePage'),
                                ),
                                (r) => false,
                              );
                            },
                            text: 'Next',
                            options: FFButtonOptions(
                              width: 360,
                              height: 43,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 12,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                            child: InkWell(
                              onTap: () async {
                                await launchURL(
                                    'http://linktr.ee/siswadigital');
                              },
                              child: Text(
                                'Pusat Bantuan',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
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
          ),
        ),
      ),
    );
  }
}
