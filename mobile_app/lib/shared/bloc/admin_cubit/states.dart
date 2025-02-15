import 'package:mobile_app/models/addpatient_model.dart';
import 'package:mobile_app/models/analysis_model.dart';
import 'package:mobile_app/models/diagnoses_model.dart';
import 'package:mobile_app/models/drugs_model.dart';
import 'package:mobile_app/models/drug2_model.dart';

abstract class CreateAdminStates {}

class AppInitialStates extends CreateAdminStates {}

// ______________________________________ Admin States ______________________________________________________
class AppCreateAdminLoadingStates extends CreateAdminStates {}

class AppCreateAdminSuccessStates extends CreateAdminStates {
  final AddPatientModel addPatientModel;
  AppCreateAdminSuccessStates(
    this.addPatientModel,
  );
}

class AppCreateAdminErrorStates extends CreateAdminStates {
  final String error;

  AppCreateAdminErrorStates(this.error);
}

class AppDeleteAdminLoadingStates extends CreateAdminStates {}

class AppDeleteAdminSuccessStates extends CreateAdminStates {}

class AppDeleteAdminErrorStates extends CreateAdminStates {
  final String error;

  AppDeleteAdminErrorStates(this.error);
}

class AppUpdateAdminLoadingStates extends CreateAdminStates {}

class AppUpdateAdminSuccessStates extends CreateAdminStates {
  final AddPatientModel upDataAdminModel;
  AppUpdateAdminSuccessStates(
    this.upDataAdminModel,
  );
}

class AppUpdateAdminErrorStates extends CreateAdminStates {
  final String error;

  AppUpdateAdminErrorStates(this.error);
}

class AppGetAdminLoadingStates extends CreateAdminStates {}

class AppGetAdminSuccessStates extends CreateAdminStates {
  final AddPatientModel addPatientModel;
  AppGetAdminSuccessStates(
    this.addPatientModel,
  );
}

class AppGetAdminErrorStates extends CreateAdminStates {
  final String error;

  AppGetAdminErrorStates(this.error);
}

// ______________________________________ Doctor States ______________________________________________________
class AppCreateDoctorLoadingStates extends CreateAdminStates {}

class AppCreateDoctorSuccessStates extends CreateAdminStates {
  final AddPatientModel doctorModel;
  AppCreateDoctorSuccessStates(
    this.doctorModel,
  );
}

class AppCreateDoctorErrorStates extends CreateAdminStates {
  final String error;

  AppCreateDoctorErrorStates(this.error);
}

class AppDeleteDoctorLoadingStates extends CreateAdminStates {}

class AppDeleteDoctorSuccessStates extends CreateAdminStates {}

class AppDeleteDoctorErrorStates extends CreateAdminStates {
  final String error;

  AppDeleteDoctorErrorStates(this.error);
}

class AppUpdateDoctorLoadingStates extends CreateAdminStates {}

class AppUpdateDoctorSuccessStates extends CreateAdminStates {
  final AddPatientModel doctorModel;
  AppUpdateDoctorSuccessStates(
    this.doctorModel,
  );
}

class AppUpdateDoctorErrorStates extends CreateAdminStates {
  final String error;

  AppUpdateDoctorErrorStates(this.error);
}

class AppGetDoctorLoadingStates extends CreateAdminStates {}

class AppGetDoctorSuccessStates extends CreateAdminStates {
  final AddPatientModel addPatientModel;
  AppGetDoctorSuccessStates(
    this.addPatientModel,
  );
}

class AppGetDoctorErrorStates extends CreateAdminStates {
  final String error;

  AppGetDoctorErrorStates(this.error);
}

// ______________________________________ Patient States ______________________________________________________
class AppCreatePatientLoadingStates extends CreateAdminStates {}

class AppCreatePatientSuccessStates extends CreateAdminStates {
  final AddPatientModel addPatientModel;
  AppCreatePatientSuccessStates(
    this.addPatientModel,
  );
}

class AppCreatePatientErrorStates extends CreateAdminStates {
  final String error;

  AppCreatePatientErrorStates(this.error);
}

class AppDeletePatientLoadingStates extends CreateAdminStates {}

class AppDeletePatientSuccessStates extends CreateAdminStates {}

class AppDeletePatientErrorStates extends CreateAdminStates {
  final String error;

  AppDeletePatientErrorStates(this.error);
}

class AppUpdatePatientLoadingStates extends CreateAdminStates {}

class AppUpdatePatientSuccessStates extends CreateAdminStates {
  final AddPatientModel upDataAdminModel;
  AppUpdatePatientSuccessStates(
    this.upDataAdminModel,
  );
}

class AppUpdatePatientErrorStates extends CreateAdminStates {
  final String error;

  AppUpdatePatientErrorStates(this.error);
}

class AppGetPatientLoadingStates extends CreateAdminStates {}

class AppGetPatientSuccessStates extends CreateAdminStates {
  final AddPatientModel addPatientModel;
  AppGetPatientSuccessStates(
    this.addPatientModel,
  );
}

class AppGetPatientErrorStates extends CreateAdminStates {
  final String error;

  AppGetPatientErrorStates(this.error);
}

//_________________________CreateDrugsStates_________________________________________________
class AppCreateDrugsLoadingStates extends CreateAdminStates {}

class AppCreateDrugsSuccessStates extends CreateAdminStates {}

class AppCreateDrugsErrorStates extends CreateAdminStates {
  final String error;

  AppCreateDrugsErrorStates(this.error);
}

class AppDeleteDrugsLoadingStates extends CreateAdminStates {}

class AppDeleteDrugsSuccessStates extends CreateAdminStates {}

class AppDeleteDrugsErrorStates extends CreateAdminStates {
  final String error;

  AppDeleteDrugsErrorStates(this.error);
}

class AppUpdateDrugsLoadingStates extends CreateAdminStates {}

class AppUpdateDrugsSuccessStates extends CreateAdminStates {
  final CreateCheckUpDrugs upDataAdminModel;
  AppUpdateDrugsSuccessStates(
    this.upDataAdminModel,
  );
}

class AppUpdateDrugsErrorStates extends CreateAdminStates {
  final String error;

  AppUpdateDrugsErrorStates(this.error);
}

class AppGetDrugsLoadingStates extends CreateAdminStates {}

class AppGetDrugsSuccessStates extends CreateAdminStates {
  final DrugsModel addPatientModel;
  AppGetDrugsSuccessStates(
    this.addPatientModel,
  );
}

class AppGetDrugsErrorStates extends CreateAdminStates {
  final String error;

  AppGetDrugsErrorStates(this.error);
}

//_________________________CreateAnalysisStates_________________________________________________
class AppCreateAnalysisLoadingStates extends CreateAdminStates {}

class AppCreateAnalysisSuccessStates extends CreateAdminStates {}

class AppCreateAnalysisErrorStates extends CreateAdminStates {
  final String error;

  AppCreateAnalysisErrorStates(this.error);
}

class AppDeleteAnalysisLoadingStates extends CreateAdminStates {}

class AppDeleteAnalysisSuccessStates extends CreateAdminStates {}

class AppDeleteAnalysisErrorStates extends CreateAdminStates {
  final String error;

  AppDeleteAnalysisErrorStates(this.error);
}

class AppUpdateAnalysisLoadingStates extends CreateAdminStates {}

class AppUpdateAnalysisSuccessStates extends CreateAdminStates {
  final AnalysisModel upDataModel;
  AppUpdateAnalysisSuccessStates(
    this.upDataModel,
  );
}

class AppUpdateAnalysisErrorStates extends CreateAdminStates {
  final String error;

  AppUpdateAnalysisErrorStates(this.error);
}

class AppGetAnalysisLoadingStates extends CreateAdminStates {}

class AppGetAnalysisSuccessStates extends CreateAdminStates {
  final AnalysisModel getModel;
  AppGetAnalysisSuccessStates(
    this.getModel,
  );
}

class AppGetAnalysisErrorStates extends CreateAdminStates {
  final String error;

  AppGetAnalysisErrorStates(this.error);
}

//_________________________CreateDiagnosesStates_________________________________________________
class AppCreateDiagnosesLoadingStates extends CreateAdminStates {}

class AppCreateDiagnosesSuccessStates extends CreateAdminStates {}

class AppCreateDiagnosesErrorStates extends CreateAdminStates {
  final String error;

  AppCreateDiagnosesErrorStates(this.error);
}

class AppDeleteDiagnosesLoadingStates extends CreateAdminStates {}

class AppDeleteDiagnosesSuccessStates extends CreateAdminStates {}

class AppDeleteDiagnosesErrorStates extends CreateAdminStates {
  final String error;

  AppDeleteDiagnosesErrorStates(this.error);
}

class AppUpdateDiagnosesLoadingStates extends CreateAdminStates {}

class AppUpdateDiagnosesSuccessStates extends CreateAdminStates {
  final DiagnosesModel upDataModel;
  AppUpdateDiagnosesSuccessStates(
    this.upDataModel,
  );
}

class AppUpdateDiagnosesErrorStates extends CreateAdminStates {
  final String error;

  AppUpdateDiagnosesErrorStates(this.error);
}

class AppGetDiagnosesLoadingStates extends CreateAdminStates {}

class AppGetDiagnosesSuccessStates extends CreateAdminStates {
  final DiagnosesModel getModel;
  AppGetDiagnosesSuccessStates(
    this.getModel,
  );
}

class AppGetDiagnosesErrorStates extends CreateAdminStates {
  final String error;

  AppGetDiagnosesErrorStates(this.error);
}
