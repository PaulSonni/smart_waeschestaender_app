import 'package:flutter/material.dart';
import 'package:smart_waeschestaender_app/actionItem.dart';
import 'package:smart_waeschestaender_app/action_screen.dart';
import 'package:smart_waeschestaender_app/strings.dart';
import 'package:smart_waeschestaender_app/styling.dart';

ActionItem isClotheshoresEmptyAction = ActionItem(
    "", isClotheshoresEmpty, [didYouDoLaundryAction, isHangingLaundyWetAction]);

ActionItem didYouDoLaundryAction =
    ActionItem(yes, didYouDoLaundry, [hangLaundryAction, doLaundryAction]);

ActionItem hangLaundryAction = ActionItem(yes, hangLaundry, List.empty());
ActionItem doLaundryAction = ActionItem(no, doLaundry, List.empty());

ActionItem isHangingLaundyWetAction = ActionItem(
    no, isHangingLaundyWet, [keepLaundryHangingAction, unhangLundryAction]);

ActionItem keepLaundryHangingAction =
    ActionItem(yes, keepLaundryHanging, List.empty());
ActionItem unhangLundryAction = ActionItem(no, unhangLundry, List.empty());

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      home: ActionScreen(
        actionItem: isClotheshoresEmptyAction,
      ),
    );
  }
}
