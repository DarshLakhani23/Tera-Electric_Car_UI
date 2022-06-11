import 'package:carapp/MaterialApp.dart';
import 'package:carapp/utils/navigation_utils/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
      const MyApp()
  );
}

