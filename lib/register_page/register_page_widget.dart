import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../register_page2/register_page2_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPageWidget extends StatefulWidget {
  const RegisterPageWidget({Key key}) : super(key: key);

  @override
  _RegisterPageWidgetState createState() => _RegisterPageWidgetState();
}

class _RegisterPageWidgetState extends State<RegisterPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController textFieldCPasswordController;
  bool textFieldCPasswordVisibility;
  TextEditingController textFieldEmailController;
  TextEditingController textFieldNameController;
  TextEditingController textFieldPasswordController;
  bool textFieldPasswordVisibility;

  @override
  void initState() {
    super.initState();
    textFieldCPasswordController = TextEditingController();
    textFieldCPasswordVisibility = false;
    textFieldEmailController = TextEditingController();
    textFieldNameController = TextEditingController();
    textFieldPasswordController = TextEditingController();
    textFieldPasswordVisibility = false;
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
            height: MediaQuery.of(context).size.height * 1,
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
                          'Ayo buat akun kamu!',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        Text(
                          'Sedikit lagi loh',
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
                                'Email',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ),
                          TextFormField(
                            controller: textFieldEmailController,
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
                                Icons.email,
                                color: Color(0xFF757575),
                                size: 22,
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                            textAlign: TextAlign.start,
                            keyboardType: TextInputType.emailAddress,
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
                                'Full Name',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ),
                          TextFormField(
                            controller: textFieldNameController,
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
                                Icons.people,
                                color: Color(0xFF757575),
                                size: 22,
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                            textAlign: TextAlign.start,
                            keyboardType: TextInputType.name,
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
                                'Password',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ),
                          TextFormField(
                            controller: textFieldPasswordController,
                            obscureText: !textFieldPasswordVisibility,
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
                              suffixIcon: InkWell(
                                onTap: () => setState(
                                  () => textFieldPasswordVisibility =
                                      !textFieldPasswordVisibility,
                                ),
                                child: Icon(
                                  textFieldPasswordVisibility
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: Color(0xFF757575),
                                  size: 22,
                                ),
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
                                'Konfirmasi Password',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ),
                          ),
                          TextFormField(
                            controller: textFieldCPasswordController,
                            obscureText: !textFieldCPasswordVisibility,
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
                              suffixIcon: InkWell(
                                onTap: () => setState(
                                  () => textFieldCPasswordVisibility =
                                      !textFieldCPasswordVisibility,
                                ),
                                child: Icon(
                                  textFieldCPasswordVisibility
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: Color(0xFF757575),
                                  size: 22,
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 230, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              if (textFieldPasswordController.text !=
                                  textFieldCPasswordController.text) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Passwords don\'t match!',
                                    ),
                                  ),
                                );
                                return;
                              }

                              final user = await createAccountWithEmail(
                                context,
                                textFieldEmailController.text,
                                textFieldPasswordController.text,
                              );
                              if (user == null) {
                                return;
                              }

                              final usersCreateData = createUsersRecordData(
                                nama: textFieldNameController.text,
                              );
                              await UsersRecord.collection
                                  .doc(user.uid)
                                  .update(usersCreateData);

                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  duration: Duration(milliseconds: 300),
                                  reverseDuration: Duration(milliseconds: 300),
                                  child: RegisterPage2Widget(),
                                ),
                              );
                            },
                            text: 'Berikutnya',
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
