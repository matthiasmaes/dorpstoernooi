import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'calculations_model.dart';
export 'calculations_model.dart';

class CalculationsWidget extends StatefulWidget {
  const CalculationsWidget({Key? key}) : super(key: key);

  @override
  _CalculationsWidgetState createState() => _CalculationsWidgetState();
}

class _CalculationsWidgetState extends State<CalculationsWidget> {
  late CalculationsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalculationsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.sizeOf(context).height * 0.08),
          child: AppBar(
            backgroundColor: Color(0xFFA42431),
            automaticallyImplyLeading: false,
            title: Text(
              'Kassa Dorpstoernooi',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Outfit',
                    color: Colors.white,
                    fontSize: 22.0,
                  ),
            ),
            actions: [],
            centerTitle: false,
            toolbarHeight: MediaQuery.sizeOf(context).height * 0.08,
            elevation: 2.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 0.75,
                decoration: BoxDecoration(),
                child: ListView(
                  padding: EdgeInsets.fromLTRB(
                    0,
                    10.0,
                    0,
                    0,
                  ),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    if (FFAppState().nrOfPlatWater > 0)
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 35.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: Color(0xFFD4D4D4),
                              width: 0.5,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    25.0, 0.0, 0.0, 0.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.7,
                                  height: 90.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Text(
                                      'Plat Water',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                FFAppState().nrOfPlatWater.toString(),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ],
                          ),
                        ),
                      ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFFD4D4D4),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height: 90.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Bruis Water',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              FFAppState().nrOfBruisWater.toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFFD4D4D4),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height: 90.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Limonade',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              FFAppState().nrOfLimonade.toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFFD4D4D4),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height: 90.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Coca Cola',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              FFAppState().nrOfCocaCola.toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFFD4D4D4),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height: 90.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Coca Cola Zero',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              FFAppState().nrOfCocaColaZero.toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFFD4D4D4),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height: 90.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Ice Tea',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              FFAppState().nrOfIceTea.toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFFD4D4D4),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height: 90.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Aquarius Rood',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              FFAppState().nrOfAquariusRood.toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFFD4D4D4),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height: 90.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Aquarius Wit',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              FFAppState().nrOfAquariusWit.toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFFD4D4D4),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height: 90.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Aquarius Geel',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              FFAppState().nrOfAquariusGeel.toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFFD4D4D4),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height: 90.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Jupiler',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              FFAppState().nrOfJupiler.toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFFD4D4D4),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height: 90.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Jupiler 0,0',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              FFAppState().nrOfJupiler00.toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFFD4D4D4),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height: 90.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Kriek',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              FFAppState().nrOfKriek.toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFFD4D4D4),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height: 90.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Malheur',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              FFAppState().nrOfMalheur.toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFFD4D4D4),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height: 90.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Duvel',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              FFAppState().nrOfDuvel.toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFFD4D4D4),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height: 90.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Karmeliet',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              FFAppState().nrOfKarmeliet.toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFFD4D4D4),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height: 90.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Chimay Blue',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              FFAppState().nrOfChimay.toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFFD4D4D4),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height: 90.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Cornet',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              FFAppState().nrOfCornet.toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFFD4D4D4),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height: 90.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Glas Cava',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              FFAppState().nrOfGlasCava.toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFFD4D4D4),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height: 90.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Fles Cava',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              FFAppState().nrOfFlesCava.toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFFD4D4D4),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height: 90.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Glas Wijn Wit',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              FFAppState().nrOfGlasWijnWit.toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFFD4D4D4),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height: 90.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Fles Wijn Wit',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              FFAppState().nrOfFlesWijnWit.toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFFD4D4D4),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height: 90.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Glas Wijn Rose',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              FFAppState().nrOfGlasWijnRose.toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFFD4D4D4),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height: 90.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Fles Wijn Rose',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              FFAppState().nrOfFlesWijnRose.toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFFD4D4D4),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height: 90.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Glas Wijn Rood',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              FFAppState().nrOfGlasWijnRood.toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFFD4D4D4),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height: 90.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Fles Wijn Rood',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              FFAppState().nrOfFlesWijnRood.toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFFD4D4D4),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height: 90.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Koffie',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              FFAppState().nrOfKoffie.toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFFD4D4D4),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height: 90.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Thee',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              FFAppState().nrOfThee.toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFFD4D4D4),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height: 90.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Soep',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              FFAppState().nrOfSoep.toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Color(0xFFD4D4D4),
                            width: 0.5,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.7,
                                height: 90.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Chips',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              FFAppState().nrOfChips.toString(),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 10.0)),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0, 0.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFA42431),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Totaal aantal bonnen: ',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).info,
                                ),
                          ),
                        ),
                      ),
                      Text(
                        FFAppState().nrOfBonnen.toString(),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).info,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('HomePage');

                    setState(() {
                      FFAppState().nrOfPlatWater = 0;
                    });
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        'Nieuwe Bestelling',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
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
