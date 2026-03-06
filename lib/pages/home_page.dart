import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:month3_lesson1/router/app_router.gr.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          ElevatedButton(
            onPressed: (){
              context.pushRoute(CounterRoute(count: 0));
            },
             child: Text("Next")
            )
        ],
      ),
      )
    );
  }
}