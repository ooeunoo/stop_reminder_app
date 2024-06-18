import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppDimens {
  AppDimens._();

  static size(int s) => s.r;
  static width(int s) => s.w;
  static height(int s) => s.h;
}
