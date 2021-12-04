import 'package:demo/application/blocs/app_cubit.dart';
import 'package:demo/commons/app_theme.dart';
import 'package:demo/configs/global_data.dart';
import 'package:demo/locator/locator.dart';
import 'package:demo/presentation/pages/bottom_bar/bottom_bar_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late AppLifecycleState state;

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.dark();
    return BlocProvider(
      create: (context) => getIt<AppCubit>(),
      child: InheritedAppTheme(
        theme: appTheme,
        child: MaterialApp(
          title: 'Demo App',
          navigatorKey: GlobalData.instance.navigatorKey,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            primarySwatch: Colors.blue,
            primaryColor: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: const BottomBarPage(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  void didChangeAppLifecycleState(AppLifecycleState state) {
    this.state = state;
  }
}
