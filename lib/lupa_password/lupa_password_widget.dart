import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class LupaPasswordWidget extends StatefulWidget {
  const LupaPasswordWidget({Key key}) : super(key: key);

  @override
  _LupaPasswordWidgetState createState() => _LupaPasswordWidgetState();
}

class _LupaPasswordWidgetState extends State<LupaPasswordWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController textFieldEmailController;

  @override
  void initState() {
    super.initState();
    textFieldEmailController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Color(0xFFF1F4F8),
          automaticallyImplyLeading: false,
          flexibleSpace: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 50,
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          color: Color(0xFF0F1113),
                          size: 24,
                        ),
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                      child: Text(
                        'Kembali',
                        style: FlutterFlowTheme.of(context).title1.override(
                              fontFamily: 'Roboto',
                              color: Color(0xFF0F1113),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(18, 0, 0, 0),
                child: Text(
                  'Lupa Password',
                  style: FlutterFlowTheme.of(context).title1.override(
                        fontFamily: 'Roboto',
                        color: Color(0xFF0F1113),
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ],
          ),
          actions: [],
          elevation: 0,
        ),
      ),
      backgroundColor: Color(0xFFF1F4F8),
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 8),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                      child: Text(
                        'Masukan email anda agar dikirimkan link untuk mereset password',
                        style: FlutterFlowTheme.of(context).bodyText2.override(
                              fontFamily: 'Poppins',
                              color: Color(0xFF57636C),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                  ),
                ],
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
                contentPadding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 25),
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  if (textFieldEmailController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Email required!',
                        ),
                      ),
                    );
                    return;
                  }
                  await resetPassword(
                    email: textFieldEmailController.text,
                    context: context,
                  );
                },
                text: 'Kirim Link',
                options: FFButtonOptions(
                  width: 350,
                  height: 50,
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                  elevation: 3,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
