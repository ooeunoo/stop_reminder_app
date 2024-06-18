import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stop_reminder/common/theme.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, _) {
      return MaterialApp.router(
        title: 'My Smart App',
        theme: theme(context),
        routerConfig: Modular.routerConfig,
      );
    });
  }
}
