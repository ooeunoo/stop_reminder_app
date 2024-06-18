import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stop_reminder/common/color.dart';
import 'package:stop_reminder/common/dimen.dart';

ThemeData theme(BuildContext context) => ThemeData(
      fontFamily: 'PretendardVariable',
      useMaterial3: true,
      highlightColor: Colors.transparent,
      splashColor: const Color.fromRGBO(0, 0, 0, 0),
      scaffoldBackgroundColor: AppColor.brand800,
      appBarTheme: const AppBarTheme(
          backgroundColor: AppColor.graymodern950,
          surfaceTintColor: AppColor.graymodern950),
    );
