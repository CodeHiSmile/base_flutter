import 'package:demo/commons/app_theme.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final TextInputType? keyboardType;
  final FormFieldSetter<String>? onSaved;
  final bool obscureText;
  final String hintText;
  final int maxLines;
  final FocusNode? focusNode;

  const AppTextField({
    Key? key,
    this.controller,
    this.onChanged,
    this.keyboardType,
    this.onSaved,
    this.obscureText = false,
    this.hintText = '',
    this.maxLines = 1,
    this.focusNode
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    return TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: const EdgeInsets.only(
            left: 8,
            right: 8,
            top: 12,
            bottom: 10,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: appTheme.borderColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: appTheme.borderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: appTheme.primaryColor),
          ),
          isDense: true,
          hintStyle: TextStyle(
            fontSize: 16,
            // color: appTheme.secondaryTextColor,
          ),
        ),
        keyboardType: keyboardType,
        onChanged: onChanged,
        maxLines: maxLines,
        style: TextStyle(
          fontSize: 16,
          // color: appTheme.primaryTextColor,
        ),
        onSaved: onSaved,
        obscureText: obscureText,
        focusNode: focusNode
    );
  }
}
