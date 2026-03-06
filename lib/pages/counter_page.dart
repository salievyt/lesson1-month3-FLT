import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CounterPage extends StatefulWidget {
  int count;
  CounterPage({super.key, required this.count});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Center(
        child: Column(
          children: [
            Text("${widget.count}"),
            ElevatedButton(
              child: Icon(Icons.add),
              onPressed: () async {
                await Future.delayed(Duration(seconds: 1));
                setState(() {
                  widget.count++;
                });
              },
            ),
            ElevatedButton(
              child: Text("Save"),
              onPressed: (){

              }
            )
          ],
        ),
      ),
      )
    );
  }
}