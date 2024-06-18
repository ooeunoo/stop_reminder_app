import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:stop_reminder/common/color.dart';
import 'package:stop_reminder/common/dimen.dart';
import 'package:stop_reminder/common/font.dart';
import 'package:stop_reminder/common/widgets/gradient_text.dart';
import 'package:stop_reminder/common/widgets/spacer.dart';
import 'package:stop_reminder/transport/transport.enum.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppDimens.width(20), vertical: AppDimens.height(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSpacer(v: AppDimens.height(50)),
              GradientText(
                "교통편",
                style: TextStyle(
                    fontSize: AppDimens.size(25),
                    fontWeight: AppFontWeight.semibold),
                gradient: const LinearGradient(colors: [
                  AppColor.greenpure100,
                  AppColor.greenpure200,
                ]),
              ),
              AppSpacer(v: AppDimens.height(10)),
              Text("원하는 교통편을\n선택해주세요.",
                  style: TextStyle(
                      color: AppColor.white,
                      fontSize: AppDimens.size(35),
                      fontWeight: AppFontWeight.semibold)),
              AppSpacer(v: AppDimens.height(30)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(child: _transportCard(Transport.cityBus)),
                  AppSpacer(h: AppDimens.width(20)),
                  Expanded(child: _transportCard(Transport.expressBus)),
                ],
              ),
              AppSpacer(v: AppDimens.height(30)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(child: _transportCard(Transport.subway)),
                  AppSpacer(h: AppDimens.width(20)),
                  Expanded(child: _transportCard(Transport.train)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _transportCard(Transport transport) {
    return Container(
      height: AppDimens.height(120),
      decoration: BoxDecoration(
          color: AppColor.brand900,
          // border: Border.all(color: AppColor.black, width: 1),
          borderRadius: BorderRadius.circular(AppDimens.size(16))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(AppDimens.size(20)),
            child: Text(transport.ko,
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: AppColor.gray600, fontSize: AppFontSize.textMD)),
          )
        ],
      ),
    );
  }
}
