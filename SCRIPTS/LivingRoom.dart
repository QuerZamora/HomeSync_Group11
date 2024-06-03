import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'living_room_model.dart';
export 'living_room_model.dart';

class LivingRoomWidget extends StatefulWidget {
  const LivingRoomWidget({super.key});

  @override
  State<LivingRoomWidget> createState() => _LivingRoomWidgetState();
}

class _LivingRoomWidgetState extends State<LivingRoomWidget> {
  late LivingRoomModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LivingRoomModel());

    _model.switchValue1 = true;
    _model.switchValue2 = false;
    _model.switchValue3 = false;
    _model.switchValue4 = false;
    _model.switchValue5 = true;
    _model.switchValue6 = true;
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
                alignment: AlignmentDirectional(-0.34, -0.9),
                child: Text(
                  'Living Room',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 30,
                        letterSpacing: 0,
                        fontWeight: FontWeight.bold,
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
                alignment: AlignmentDirectional(-0.7, 0.4),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Smart TV',
                  options: FFButtonOptions(
                    width: 150,
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
                alignment: AlignmentDirectional(-0.7, 0.8),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Blinds',
                  options: FFButtonOptions(
                    width: 150,
                    height: 120,
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 50),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: Color(0xFF3A4143),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 16,
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
                alignment: AlignmentDirectional(0.7, 0.8),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('Temperature');
                  },
                  text: 'Temperature',
                  options: FFButtonOptions(
                    width: 150,
                    height: 120,
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 50),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: Color(0xFF3A4143),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                          fontSize: 16,
                          letterSpacing: 0,
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
                alignment: AlignmentDirectional(0.7, 0.4),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Smart Fan',
                  options: FFButtonOptions(
                    width: 150,
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
                alignment: AlignmentDirectional(-0.7, -0.4),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('MainLight');
                  },
                  text: 'Main Light',
                  options: FFButtonOptions(
                    width: 150,
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
                alignment: AlignmentDirectional(0.7, -0.4),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Air Conditioner',
                  options: FFButtonOptions(
                    width: 150,
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
                alignment: AlignmentDirectional(0, 0),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Home Speaker',
                  options: FFButtonOptions(
                    width: 320,
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
                alignment: AlignmentDirectional(-0.49, -0.31),
                child: Switch.adaptive(
                  value: _model.switchValue1!,
                  onChanged: (newValue) async {
                    setState(() => _model.switchValue1 = newValue!);
                  },
                  activeColor: Color(0xFF3FF63F),
                  activeTrackColor: Color(0xFF3FF63F),
                  inactiveTrackColor: FlutterFlowTheme.of(context).error,
                  inactiveThumbColor: FlutterFlowTheme.of(context).alternate,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.49, 0.42),
                child: Switch.adaptive(
                  value: _model.switchValue2!,
                  onChanged: (newValue) async {
                    setState(() => _model.switchValue2 = newValue!);
                  },
                  activeColor: Color(0xFF3FF63F),
                  activeTrackColor: Color(0xFF3FF63F),
                  inactiveTrackColor: FlutterFlowTheme.of(context).error,
                  inactiveThumbColor: FlutterFlowTheme.of(context).alternate,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.52, 0.41),
                child: Switch.adaptive(
                  value: _model.switchValue3!,
                  onChanged: (newValue) async {
                    setState(() => _model.switchValue3 = newValue!);
                  },
                  activeColor: Color(0xFF3FF63F),
                  activeTrackColor: Color(0xFF3FF63F),
                  inactiveTrackColor: FlutterFlowTheme.of(context).error,
                  inactiveThumbColor: FlutterFlowTheme.of(context).alternate,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.5, 0.78),
                child: Switch.adaptive(
                  value: _model.switchValue4!,
                  onChanged: (newValue) async {
                    setState(() => _model.switchValue4 = newValue!);
                  },
                  activeColor: Color(0xFF3FF63F),
                  activeTrackColor: Color(0xFF3FF63F),
                  inactiveTrackColor: FlutterFlowTheme.of(context).error,
                  inactiveThumbColor: FlutterFlowTheme.of(context).alternate,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.72, -0.3),
                child: Switch.adaptive(
                  value: _model.switchValue5!,
                  onChanged: (newValue) async {
                    setState(() => _model.switchValue5 = newValue!);
                  },
                  activeColor: Color(0xFF3FF63F),
                  activeTrackColor: Color(0xFF3FF63F),
                  inactiveTrackColor: FlutterFlowTheme.of(context).error,
                  inactiveThumbColor: FlutterFlowTheme.of(context).alternate,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.7, -0.05),
                child: Switch.adaptive(
                  value: _model.switchValue6!,
                  onChanged: (newValue) async {
                    setState(() => _model.switchValue6 = newValue!);
                  },
                  activeColor: Color(0xFF3FF63F),
                  activeTrackColor: Color(0xFF3FF63F),
                  inactiveTrackColor: FlutterFlowTheme.of(context).error,
                  inactiveThumbColor: FlutterFlowTheme.of(context).alternate,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.3, -0.3),
                child: Text(
                  '22ºC',
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 25,
                        letterSpacing: 0,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.51, 0.74),
                child: Text(
                  '21ºC',
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 25,
                        letterSpacing: 0,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.28, 0.06),
                child: Text(
                  'Martina\'s Spotify\nViva la Vida - Coldplay            | |',
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 16,
                        letterSpacing: 0,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.7),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'All Devices',
                  options: FFButtonOptions(
                    width: 320,
                    height: 45,
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: Color(0xFF7E8D92),
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
            ],
          ),
        ),
      ),
    );
  }
}
