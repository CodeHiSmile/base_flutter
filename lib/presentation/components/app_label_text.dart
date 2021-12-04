import 'package:demo/commons/app_theme.dart';
import 'package:flutter/material.dart';

class AppLabelText extends StatelessWidget {
  final String labelText;
  final TextStyle? labelStyle;
  final bool? isRequire;

  const AppLabelText({
    Key? key,
    required this.labelText,
    this.labelStyle,
    this.isRequire = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle? defaultStyle = AppTheme.of(context)
        .textTheme
        .subtitle1
        ?.copyWith(
        color: AppTheme.of(context).primaryTextColor,
        fontWeight: FontWeight.w700);
    return RichText(
      text: TextSpan(
        text: labelText,
        style: labelStyle ?? defaultStyle,
        children: <TextSpan>[
          TextSpan(
            text: (isRequire ?? false) ? '*' : '',
            style: (labelStyle ?? defaultStyle)?.copyWith(color: Colors.red),
          ),
        ],
      ),
    );
  }
}
