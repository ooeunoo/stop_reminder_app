import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:stop_reminder/app/app.module.dart';
import 'package:stop_reminder/app/app.page.dart';

void main() {
  return runApp(ModularApp(module: AppModule(), child: const AppPage()));
}
