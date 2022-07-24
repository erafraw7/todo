import 'package:flutter/material.dart';
import 'package:todo/injection/injection.dart';

import 'bootstrap.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  bootstrap();
}
