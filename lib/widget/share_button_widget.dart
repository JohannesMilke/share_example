import 'package:flutter/material.dart';

class ShareButtonWidget extends StatelessWidget {
  final VoidCallback onClicked;

  const ShareButtonWidget({
    Key key,
    @required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        ),
        label: Text('SHARE', style: TextStyle(fontSize: 20)),
        icon: Icon(Icons.share),
        onPressed: onClicked,
      );
}
