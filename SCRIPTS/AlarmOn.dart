import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'alarm_on_model.dart';
export 'alarm_on_model.dart';

class AlarmOnWidget extends StatefulWidget {
  const AlarmOnWidget({super.key});

  @override
  State<AlarmOnWidget> createState() => _AlarmOnWidgetState();
}

class _AlarmOnWidgetState extends State<AlarmOnWidget> {
  late AlarmOnModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AlarmOnModel());

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
                opacity: 0.6,
                child: Align(
                  alignment: AlignmentDirectional(0, -3.6),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/4-removebg-preview.png',
                      width: 421,
                      height: 639,
                      fit: BoxFit.cover,
                      alignment: Alignment(-1, -1),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.34, -0.9),
                child: Text(
                  'Alarm Set Up',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 30,
                        letterSpacing: 0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.04, 0.01),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/Captura_de_pantalla_2024-06-02_a_las_10.30.27.png',
                    width: 331,
                    height: 310,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.01, 0.71),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('FeedingSystem');
                  },
                  text: 'Alarm Connected ',
                  options: FFButtonOptions(
                    width: 200,
                    height: 100,
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 35),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: Color(0xFF77BF0D),
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
                alignment: AlignmentDirectional(-0.86, -0.93),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('Security');
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
                alignment: AlignmentDirectional(0.03, 0.71),
                child: Switch.adaptive(
                  value: _model.switchValue!,
                  onChanged: (newValue) async {
                    setState(() => _model.switchValue = newValue!);

                    if (!newValue!) {
                      context.pushNamed('AlarmOff');
                    }
                  },
                  activeColor: FlutterFlowTheme.of(context).primary,
                  activeTrackColor: FlutterFlowTheme.of(context).accent1,
                  inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
                  inactiveThumbColor:
                      FlutterFlowTheme.of(context).secondaryText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
