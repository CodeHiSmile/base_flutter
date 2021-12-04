import 'package:demo/presentation/pages/core/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'domain/models/hive_obj/hive_register.dart';
import 'locator/locator.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configurationInjection();
  await Hive.initFlutter();
  registerHiveAdapters();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.white.withOpacity(0),
    ),
  );
  runApp(const MyApp());
}
