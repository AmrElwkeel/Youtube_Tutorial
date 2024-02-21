import 'package:flutter/material.dart';
import 'package:upgrader/upgrader.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue, centerTitle: true, title: const Text("Tutorial App")),
      body: UpgradeAlert(
          // dialogStyle: UpgradeDialogStyle.cupertino,
          dialogStyle: UpgradeDialogStyle.material,
          showLater: true,
          upgrader: Upgrader(
            debugLogging: true,
            debugDisplayAlways: true,
            languageCode: "ar",
            messages: UpgraderMessages(code: "ar"),
            countryCode: "EG",
            minAppVersion: "1.0.0",
            // durationUntilAlertAgain: const Duration(days: 1),
          ),
          child: Container()),
    );
  }
}
