import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:liveasy_project_01/splash.dart';
import 'package:liveasy_project_01/utils/services/global.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  // Todo: Firebase Start
  await Firebase.initializeApp();
  // Todo: Firebase End

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.light.copyWith(
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarColor: const Color(0xFF26063F),
      systemNavigationBarDividerColor: const Color(0xFF1A2A6C),
      systemNavigationBarContrastEnforced: true,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
      statusBarColor: const Color(0xFF26063F),
      systemStatusBarContrastEnforced: true,
    ),
  );


  runApp(MaterialApp(
    navigatorKey: GlobalVariable.navState,
    debugShowCheckedModeBanner: false,
    home: const MySplash(),

  ));
}
