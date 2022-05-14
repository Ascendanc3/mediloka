import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../lupa_password/lupa_password_widget.dart';
import '../main.dart';
import '../register_page/register_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget>
    with TickerProviderStateMixin {
  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 300,
      fadeIn: true,
      initialState: AnimationState(
        opacity: 0,
      ),
      finalState: AnimationState(
        opacity: 1,
      ),
    ),
    'buttonOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      duration: 600,
      initialState: AnimationState(
        opacity: 0,
      ),
      finalState: AnimationState(
        opacity: 1,
      ),
    ),
  };
  final scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController textFieldEmailController;
  TextEditingController textFieldPasswordController;
  bool textFieldPasswordVisibility;

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
    setupTriggerAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onActionTrigger),
      this,
    );

    textFieldEmailController = TextEditingController();
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
              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 90),
                      child: Image.asset(
                        'assets/images/Group_1192.png',
                        width: 236,
                        height: 163,
                        fit: BoxFit.contain,
                      ).animated([animationsMap['imageOnPageLoadAnimation']]),
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
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-0.97, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 5),
                                    child: Text(
                                      'Password',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1,
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
                                        EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 25),
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
                        ],
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              final user = await signInWithEmail(
                                context,
                                textFieldEmailController.text,
                                textFieldPasswordController.text,
                              );
                              if (user == null) {
                                return;
                              }

                              await Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      NavBarPage(initialPage: 'homePage'),
                                ),
                                (r) => false,
                              );
                            },
                            text: 'Masuk',
                            options: FFButtonOptions(
                              width: 339,
                              height: 50,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 20,
                            ),
                          ).animated([
                            animationsMap['buttonOnActionTriggerAnimation']
                          ]),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                              child: InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      duration: Duration(milliseconds: 2),
                                      reverseDuration:
                                          Duration(milliseconds: 2),
                                      child: LupaPasswordWidget(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Lupa password?',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 75, 0, 0),
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 300),
                              reverseDuration: Duration(milliseconds: 300),
                              child: RegisterPageWidget(),
                            ),
                          );
                        },
                        child: Text(
                          'Tidak punya akun? 𝗕𝘂𝗮𝘁 𝗔𝗸𝘂𝗻',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(
                            'assets/images/Coat_of_arms_of_North_Sulawesi.svg',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            'assets/images/Lambang_Kota_Manado.png',
                            width: 105,
                            height: 125,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: InkWell(
                        onTap: () async {
                          await launchURL('https://www.manadokota.go.id/');
                        },
                        child: Text(
                          'Informasi Lebih Lanjut',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF2400FF),
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
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
