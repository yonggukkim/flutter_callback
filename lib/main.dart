import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Flutter의 Callback'),
      ),
      body: const Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const TestWidget();
  }
}

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<StatefulWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Count : $value',
          style: const TextStyle(fontSize: 30),
        ),
        const TestButton(),
      ],
    );
  }
}

class TestButton extends StatelessWidget {
  const TestButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      child: GestureDetector(
        onTap: () => print('Tab!'),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          decoration: BoxDecoration(border: Border.all()),
          child: const Text(
            'Up counter',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
