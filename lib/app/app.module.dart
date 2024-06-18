import 'package:flutter_modular/flutter_modular.dart';
import 'package:stop_reminder/home/home.page.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => const HomePage());
  }
}
