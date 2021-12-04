import 'package:demo/commons/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_label_text.dart';
import 'app_text_field.dart';

class AppLabelTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final TextInputType keyboardType;
  final FormFieldValidator<String>? validator;
  final FormFieldSetter<String>? onSaved;
  final bool? isRequire;
  final TextStyle? labelStyle;
  final int maxLines;

  const AppLabelTextField({
    Key? key,
    this.labelText = '',
    this.hintText = '',
    this.controller,
    this.onChanged,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.onSaved,
    this.isRequire,
    this.labelStyle,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppLabelText(labelText: labelText, isRequire: isRequire, labelStyle: labelStyle),
        const SizedBox(height: 8),
        AppTextField(
          onSaved: onSaved,
          onChanged: onChanged,
          controller: controller,
          keyboardType: keyboardType,
          hintText: hintText,
          maxLines: maxLines,
        ),
        validator != null
            ? ValueListenableBuilder(
          valueListenable: controller!,
          builder: (context, TextEditingValue controller, child) {
            final isValid = validator?.call(controller.text) ?? "";
            return Container(
              padding: const EdgeInsets.only(top: 2, bottom: 4),
              child: Text(
                isValid,
                style: appTheme.textTheme.bodyText2?.copyWith(color: appTheme.errorColor),
              ),
            );
          },
        )
            : Container(),
      ],
    );
  }
}
