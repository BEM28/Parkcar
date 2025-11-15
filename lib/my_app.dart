import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parkar/widgets/navigation_panel_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text("Exit App"),
              content: const Text(
                "Are you sure you want to exit the application?",
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Cancel"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    SystemNavigator.pop();
                  },
                  child: const Text("Exit"),
                ),
              ],
            );
          },
        );
      },
      child: LayoutBuilder(
        builder: (context, constraints) {
          return constraints.maxWidth < 650
              ? Scaffold(
                  bottomNavigationBar: NavigationPanelWidget(
                    axis: Axis.horizontal,
                  ),
                  body: Center(
                    child: Text(
                      'Is mobile',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                )
              : Scaffold(
                  body: Row(
                    children: [
                      NavigationPanelWidget(axis: Axis.vertical),
                      Center(
                        child: Text(
                          'Is desktop',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                );
        },
      ),
    );
  }
}

class OnDeveloperScreen extends StatelessWidget {
  const OnDeveloperScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Coming Soon',
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
