import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        list(txtAction: () {}, txtIcon: const Icon(Icons.person), txt: 'About'),
        list(
            txtAction: () {},
            txtIcon: const Icon(Icons.edit_document),
            txt: 'Terms'),
        list(
            txtAction: () {},
            txtIcon: const Icon(Icons.feedback),
            txt: 'Feedback'),
        list(
            txtAction: () {},
            txtIcon: const Icon(Icons.help_center),
            txt: 'Help Center'),
        list(
            txtAction: () {},
            txtIcon: const Icon(Icons.settings),
            txt: 'Settings'),
        list(
            txtAction: () {}, txtIcon: const Icon(Icons.logout), txt: 'Logout'),
      ],
    );
  }
}

Widget list({
  required void Function() txtAction,
  required Icon txtIcon,
  required txt,
}) {
  return TextButton.icon(
    style: ButtonStyle(iconColor: MaterialStateProperty.all(Colors.white)),
    onPressed: txtAction,
    icon: txtIcon,
    label: Text(
      txt,
      style: const TextStyle(fontSize: 20, color: Colors.white),
    ),
  );
}
