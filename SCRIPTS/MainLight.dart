import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'main_light_model.dart';
export 'main_light_model.dart';

class MainLightWidget extends StatefulWidget {
  const MainLightWidget({super.key});

  @override
  State<MainLightWidget> createState() => _MainLightWidgetState();
}

class _MainLightWidgetState extends State<MainLightWidget> {
  late MainLightModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainLightModel());

    _model.switchValue = true;
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryText,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Opacity(
                opacity: 0.4,
                child: Align(
                  alignment: AlignmentDirectional(0, -2.88),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/5-removebg-preview.png',
                      width: 421,
                      height: 639,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -2.24),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/Captura_de_pantalla_2024-06-02_a_las_13.00.27-removebg-preview.png',
                    width: 421,
                    height: 639,
                    fit: BoxFit.cover,
                    alignment: Alignment(-10, -1),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.34, -0.9),
                child: Text(
                  'Main Light',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 30,
                        letterSpacing: 0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 1.1),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'MainLightSchedule',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/Captura_de_pantalla_2024-06-02_a_las_13.25.39.png',
                      width: 397,
                      height: 114,
                      fit: BoxFit.cover,
                      alignment: Alignment(-10, -1),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.91, 1.05),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('User');
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    child: Image.asset(
                      'assets/images/1706090071554.JPEG',
                      width: 55,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.86, -0.93),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.safePop();
                  },
                  child: Text(
                    '<',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 40,
                          letterSpacing: 0,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.75, -0.32),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Main Light',
                  options: FFButtonOptions(
                    width: 123,
                    height: 120,
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 50),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: Color(0xFF3A4143),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w500,
                        ),
                    elevation: 3,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.58, -0.23),
                child: Switch.adaptive(
                  value: _model.switchValue!,
                  onChanged: (newValue) async {
                    setState(() => _model.switchValue = newValue!);
                  },
                  activeColor: Color(0xFF3FF63F),
                  activeTrackColor: Color(0xFF3FF63F),
                  inactiveTrackColor: FlutterFlowTheme.of(context).error,
                  inactiveThumbColor: FlutterFlowTheme.of(context).alternate,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
