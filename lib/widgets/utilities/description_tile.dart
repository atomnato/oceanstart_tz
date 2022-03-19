import 'package:flutter/material.dart';

class DescriptionTile extends StatelessWidget {
  final String title;
  final IconData icon;

  const DescriptionTile({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(
          width: 12.0,
        ),
        Expanded(
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ),
      ],
    );
  }
}
