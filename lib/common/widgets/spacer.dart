import 'package:flutter/material.dart';
import 'package:stop_reminder/common/dimen.dart';

class AppSpacer extends StatelessWidget {
  final double? h;
  final double? v;

  const AppSpacer({super.key, this.h, this.v});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // `h`와 `v`가 모두 null이면 기본적으로 `width`를 20으로 설정
      width: h ?? (v == null ? AppDimens.width(20) : null),
      height: v,
    );
  }
}
