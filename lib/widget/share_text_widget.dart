import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:share_example/utils.dart';
import 'package:share_example/widget/share_button_widget.dart';
import 'package:share_example/widget/textfield_widget.dart';

class ShareTextWidget extends StatefulWidget {
  @override
  _ShareTextWidgetState createState() => _ShareTextWidgetState();
}

class _ShareTextWidgetState extends State<ShareTextWidget> {
  final controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.all(24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextfieldWidget(controller: controller),
              SizedBox(height: 32),
              ShareButtonWidget(
                onClicked: () {
                  if (controller.text.isEmpty) {
                    Utils.showSnackbar(context, message: 'Enter a caption!');
                  } else {
                    Share.share(controller.text);
                  }
                },
              ),
            ],
          ),
        ),
      );
}
