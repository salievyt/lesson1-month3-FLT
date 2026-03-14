import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:month3_lesson1/router/app_router.gr.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (_userName != null) ...[
                Text(
                  _userName!,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
              ],
              ElevatedButton(
                onPressed: () async {
                  final result = await context.pushRoute(CreateRoute());
                  if (result != null && result is String) {
                    setState(() {
                      _userName = result;
                    });
                  }
                },
                child: Text(_userName == null ? 'Создать' : 'Изменить'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}