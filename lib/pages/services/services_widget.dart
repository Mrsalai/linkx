import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'services_model.dart';
export 'services_model.dart';

class ServicesWidget extends StatefulWidget {
  const ServicesWidget({super.key});

  @override
  _ServicesWidgetState createState() => _ServicesWidgetState();
}

class _ServicesWidgetState extends State<ServicesWidget> {
  late ServicesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ServicesModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            automaticallyImplyLeading: false,
            actions: const [],
            flexibleSpace: FlexibleSpaceBar(
              title: Align(
                alignment: const AlignmentDirectional(0.00, 0.00),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/green_logo.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: const AlignmentDirectional(-0.70, 0.30),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Link X',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 50.0,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              centerTitle: false,
              expandedTitleScale: 1.0,
              titlePadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
            ),
            elevation: 0.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(0.00, -1.00),
                child: Text(
                  'Plan: Linkx M',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        fontSize: 40.0,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.00, -1.00),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 130.0, 0.0, 0.0),
                  child: LinearPercentIndicator(
                    percent: 0.76,
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    lineHeight: 50.0,
                    animation: true,
                    animateFromLastPercent: true,
                    progressColor: FlutterFlowTheme.of(context).primary,
                    backgroundColor: FlutterFlowTheme.of(context).secondary,
                    center: Text(
                      '7.6/10GB',
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Poppins',
                                fontSize: 30.0,
                              ),
                    ),
                    barRadius: const Radius.circular(30.0),
                    padding: EdgeInsets.zero,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.00, -1.00),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 80.0, 0.0, 0.0),
                  child: Text(
                    'Remaining Data:',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          fontSize: 30.0,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.00, 0.00),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 170.0),
                  child: Text(
                    'Remaining Minutes:',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          fontSize: 30.0,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.00, 0.00),
                child: LinearPercentIndicator(
                  percent: 0.42,
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  lineHeight: 50.0,
                  animation: true,
                  animateFromLastPercent: true,
                  progressColor: FlutterFlowTheme.of(context).primary,
                  backgroundColor: FlutterFlowTheme.of(context).secondary,
                  center: Text(
                    '42/100',
                    style: FlutterFlowTheme.of(context).headlineSmall,
                  ),
                  barRadius: const Radius.circular(30.0),
                  padding: EdgeInsets.zero,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.00, 0.03),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 200.0, 0.0, 0.0),
                  child: Text(
                    'You have 1 remaining bills to pay',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          fontSize: 25.0,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.00, 0.19),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 350.0, 0.0, 0.0),
                  child: Text(
                    'Amount Due:  13 € ',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          fontSize: 30.0,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.00, 1.12),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 60.0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Pay Now',
                    options: FFButtonOptions(
                      width: 180.0,
                      height: 60.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 35.0,
                                letterSpacing: 0.0,
                                lineHeight: 0.0,
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 0.0,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
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
