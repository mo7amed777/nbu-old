import 'package:flutter/material.dart';

class ListItems extends StatelessWidget {
  final String title, subtitle;
  final List<String> items;
  final IconData icon;

  const ListItems(
      {required this.title,
      required this.items,
      this.icon = Icons.circle,
      this.subtitle = ''});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(4.0),
      child: ListTile(
        title: Padding(
          padding: EdgeInsets.symmetric(vertical: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green[800],
                      fontSize: 16)),
              subtitle == ''
                  ? Container()
                  : Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(subtitle, style: TextStyle(height: 1.5)),
                    ),
            ],
          ),
        ),
        subtitle: Column(
          children: items.map((item) => goal(item)).toList(),
        ),
      ),
    );
  }

  Widget goal(String itemText) => Padding(
        padding: const EdgeInsets.only(
          top: 4.0,
          left: 4.0,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            icon == Icons.circle
                ? Icon(
                    icon,
                    size: 6,
                  )
                : Icon(icon, size: 18, color: Colors.green[800]),
            SizedBox(width: 6),
            Flexible(
              child: Text(
                itemText,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                softWrap: false,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                ),
              ),
            ),
          ],
        ),
      );
}
