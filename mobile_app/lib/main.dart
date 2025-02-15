import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_app/layout/home_screen.dart';
import 'package:mobile_app/modules/admin/admin_screen.dart';
import 'package:mobile_app/modules/doctor/doctor_home_screen.dart';
import 'package:mobile_app/modules/loginscreen.dart';
import 'package:mobile_app/modules/patient/patient_screen.dart';
import 'package:mobile_app/shared/bloc/admin_cubit/cubit.dart';
import 'package:mobile_app/shared/bloc/bloc_observer.dart';
import 'package:mobile_app/shared/bloc/create_patient/cubit.dart';
import 'package:mobile_app/shared/bloc/doctor_cubit/cubit.dart';
import 'package:mobile_app/shared/bloc/login_cubit/cubit.dart';
import 'package:mobile_app/shared/bloc/login_cubit/states.dart';
import 'package:mobile_app/shared/bloc/patient_data/cubit.dart';
import 'package:mobile_app/shared/bloc/profile/cubit.dart';
import 'package:mobile_app/shared/components/components.dart';
import 'package:mobile_app/shared/network/local/cache_helper.dart';
import 'package:mobile_app/shared/network/remote/dio.dart';
import 'package:mobile_app/shared/styles/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await CacheHelper.init();
  Widget? widget;

  bool? homeScreen;

  homeScreen = CacheHelper.getData(key: 'home');
  token = CacheHelper.getData(key: 'token');
  var userLevelId = CacheHelper.getData(key: 'userLevelId');
  idStart = CacheHelper.getData(key: 'id');
  statuscode = CacheHelper.getData(key: 'StatusCode');
  print("statuscode: $statuscode");

  if (homeScreen != null) {
    if (userLevelId.toString() == '3') {
      widget = const HomePatientScreen();
    } else if (userLevelId.toString() == '2') {
      widget = const DoctorScreen();
    } else if (userLevelId.toString() == '1') {
      widget = const AdminScreen();
    } else {
      widget = const LoginScreen();
    }
  } else {
    widget = const HomeScreen();
  }
  Bloc.observer = MyBlocObserver();

  runApp(MyApp(
    startwidget: widget,
  ));
}

class MyApp extends StatelessWidget {
  Widget startwidget;
  MyApp({
    required this.startwidget,
  });
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppCubit(),
        ),
        BlocProvider(
          create: (context) => AppDoctorCubit()
            ..getDoctorData(idStart)
            ..getCheckUpForDoctor(),
        ),
        BlocProvider(
          create: (context) => AppPatientCubit()..getPatients(),
        ),
        BlocProvider(
          create: (context) => AppDoctorProfileCubit()..upLoadImageProfile(),
        ),
        BlocProvider(
          create: (context) => AppAddPatientCubit(),
        ),
        BlocProvider(
          create: (context) => AppAdminCubit(),
        ),
      ],
      child: BlocConsumer<AppCubit, DoctorLoginStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            theme: themes(),
            debugShowCheckedModeBanner: false,
            home: startwidget,
          );
        },
      ),
    );
  }
}
