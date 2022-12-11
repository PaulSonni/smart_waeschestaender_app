import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_waeschestaender_app/actionItem.dart';
import 'package:smart_waeschestaender_app/strings.dart';

class ActionScreen extends StatelessWidget {
  const ActionScreen({
    super.key,
    required this.actionItem,
  });

  final ActionItem actionItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 37,
        centerTitle: true,
        title: const Text(title),
        titleTextStyle: GoogleFonts.raleway(fontSize: 28),
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(8.0),
          color: Colors.blueGrey.shade50,
          child: UnconstrainedBox(
            child: Container(
              margin: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Text(
                    actionItem.title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.spaceEvenly,
                    children: getButtons(context),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> getButtons(BuildContext context) {
    if (actionItem.actions.isNotEmpty) {
      debugPrint("action item not empty");
      return actionItem.actions
          .map(
            (e) => ElevatedButton(
              onPressed: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ActionScreen(
                      actionItem: e,
                    ),
                  ),
                );
              }),
              child: Text(e.answer),
            ),
          )
          .toList();
    }
    return [
      ElevatedButton(
        onPressed: (() {
          Navigator.popUntil(context, ModalRoute.withName('/'));
        }),
        child: const Text(backToStart),
      ),
    ];
  }
}
