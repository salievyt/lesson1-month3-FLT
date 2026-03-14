import 'package:flutter/material.dart';
import 'package:month3_lesson1/router/app_router.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: AppRouter().config(), debugShowCheckedModeBanner: false,);
  }
}
