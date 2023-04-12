import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UpdateprofileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for yourSponsor widget.
  TextEditingController? yourSponsorController;
  String? Function(BuildContext, String?)? yourSponsorControllerValidator;
  // State field(s) for yourName widget.
  TextEditingController? yourNameController;
  String? Function(BuildContext, String?)? yourNameControllerValidator;
  // State field(s) for yourPhone widget.
  TextEditingController? yourPhoneController;
  String? Function(BuildContext, String?)? yourPhoneControllerValidator;
  // State field(s) for cityAddress widget.
  TextEditingController? cityAddressController;
  String? Function(BuildContext, String?)? cityAddressControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    yourSponsorController?.dispose();
    yourNameController?.dispose();
    yourPhoneController?.dispose();
    cityAddressController?.dispose();
  }

  /// Additional helper methods are added here.

}
