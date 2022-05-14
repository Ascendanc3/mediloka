import '../backend/backend.dart';
import '../components/ambulance_card_widget.dart';
import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PageAmbulanceWidget extends StatefulWidget {
  const PageAmbulanceWidget({Key key}) : super(key: key);

  @override
  _PageAmbulanceWidgetState createState() => _PageAmbulanceWidgetState();
}

class _PageAmbulanceWidgetState extends State<PageAmbulanceWidget> {
  LatLng currentUserLocationValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState() {
    super.initState();
    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
  }

  @override
  Widget build(BuildContext context) {
    if (currentUserLocationValue == null) {
      return Center(
        child: SizedBox(
          width: 50,
          height: 50,
          child: SpinKitRotatingCircle(
            color: FlutterFlowTheme.of(context).primaryColor,
            size: 50,
          ),
        ),
      );
    }
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: DefaultTabController(
                  length: 1,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      TabBar(
                        labelColor: FlutterFlowTheme.of(context).primaryColor,
                        labelStyle: FlutterFlowTheme.of(context).bodyText1,
                        indicatorColor:
                            FlutterFlowTheme.of(context).secondaryColor,
                        tabs: [
                          Tab(
                            text: 'Ambulance Terdekat',
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            StreamBuilder<List<AmbulanceRecord>>(
                              stream: queryAmbulanceRecord(),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: SpinKitRotatingCircle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        size: 50,
                                      ),
                                    ),
                                  );
                                }
                                List<AmbulanceRecord>
                                    googleMapAmbulanceRecordList =
                                    snapshot.data;
                                return FlutterFlowGoogleMap(
                                  controller: googleMapsController,
                                  onCameraIdle: (latLng) =>
                                      googleMapsCenter = latLng,
                                  initialLocation: googleMapsCenter ??=
                                      currentUserLocationValue,
                                  markers: (googleMapAmbulanceRecordList ?? [])
                                      .map(
                                        (googleMapAmbulanceRecord) =>
                                            FlutterFlowMarker(
                                          googleMapAmbulanceRecord
                                              .reference.path,
                                          googleMapAmbulanceRecord.lokasi,
                                          () async {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              context: context,
                                              builder: (context) {
                                                return Padding(
                                                  padding:
                                                      MediaQuery.of(context)
                                                          .viewInsets,
                                                  child: AmbulanceCardWidget(
                                                    ambulanceMarker:
                                                        googleMapAmbulanceRecord,
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      )
                                      .toList(),
                                  markerColor: GoogleMarkerColor.green,
                                  mapType: MapType.normal,
                                  style: GoogleMapStyle.aubergine,
                                  initialZoom: 13,
                                  allowInteraction: true,
                                  allowZoom: true,
                                  showZoomControls: true,
                                  showLocation: true,
                                  showCompass: false,
                                  showMapToolbar: false,
                                  showTraffic: false,
                                  centerMapOnMarkerTap: true,
                                );
                              },
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
    );
  }
}
