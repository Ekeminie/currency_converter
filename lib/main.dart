import 'package:currency_converter/routes/router.dart';
import 'package:currency_converter/ui/home/home.ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';

import 'constant/pallet.dart';
import 'core/services/navigation_service.dart';
import 'locator.dart';

void main() {
  dependenciesInjectorSetup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OKToast(
        child: ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => MaterialApp(
          debugShowCheckedModeBanner: false,
          navigatorKey: getIt<NavigationService>().navigatorKey,
          theme: ThemeData(
            primarySwatch: primaryswatch,
            primaryColor: primaryColor,
            fontFamily: 'TitilliumWeb',
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          onGenerateRoute: Routers.generateRoute,
          home: Home()
          ),
    ));
  }
}
