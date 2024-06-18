import 'package:flutter/material.dart';
import 'package:flutter_scroll_issue/core/extensions/widget.extension.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyScrollableWidget(),
      ),
    );
  }
}

class MyScrollableWidget extends StatelessWidget {
  const MyScrollableWidget({super.key});

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: List.generate(
              500,
              (index) => MyRoundedWidget(
                    index: index,
                  )),
        ),
      );
}

class MyRoundedWidget extends StatelessWidget {
  MyRoundedWidget({
    required this.index,
  }) : super(key: Key('$index'));

  final int index;

  @override
  Widget build(BuildContext context) => Container(
        color: Colors.lime.withOpacity(0.75),
        width: 600,
        height: 400,
        child: Text('Index: $index'),
      ).roundedOpt2();
}
