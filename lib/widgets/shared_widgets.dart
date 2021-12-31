import 'package:flutter/material.dart';

Widget defText(String text,
        {double fontSize = 15, color = Colors.black, padding = 8.0}) =>
    Padding(
      padding: EdgeInsets.all(padding),
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: fontSize, color: color),
      ),
    );

Widget separator() => Container(
    padding: const EdgeInsets.symmetric(horizontal: 15.0),
    width: double.infinity,
    height: 1.0,
    color: Colors.grey.shade300);

// ignore: must_be_immutable
class DefaultTextButton extends StatelessWidget {
  String btnText;
  double width;
  double fontSize;
  Function? onPressed;
  MaterialColor color;

  double height;

  double borderRadius;

  DefaultTextButton(
      {Key? key,
      required this.btnText,
      this.width = double.infinity,
      this.fontSize = 20,
      this.onPressed,
      this.borderRadius = 1.0,
      this.color = Colors.red,
      this.height = 80.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: color,
      ),
      height: height,
      width: width,
      child: TextButton(
        onPressed: () {
          onPressed!;
        },
        child: Text(
          btnText,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: fontSize),
        ),
      ),
    );
  }
}

class DefaultTextFormField extends StatelessWidget {
  TextEditingController? controller;
  TextInputType inputType;
  Function? fieldSubmitted;
  Function? validate;
  String labelText;
  Function? onChanged;
  IconData? prefix;
  Function? onTappedTextForm;
  double height;
  dynamic color;
  double? padding;
  IconData? suffix;
  bool isPassword;

  Function? showPassword;

  DefaultTextFormField({
    Key? key,
    this.controller,
    this.padding = 15.0,
    required this.inputType,
    this.fieldSubmitted,
    this.validate,
    required this.labelText,
    this.onChanged,
    this.prefix,
    this.color,
    this.onTappedTextForm,
    this.height = 50.0,
    this.suffix,
    this.isPassword = false,
    this.showPassword,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: height,
      padding: EdgeInsets.symmetric(horizontal: padding!),
      child: TextFormField(
        keyboardType: inputType,
        //controller: controller!,
        onChanged: (val) {
          onChanged;
        },
        onFieldSubmitted: (val) {
          fieldSubmitted;
        },
        validator: (val) {
          validate!;
        },
        onTap: () {
          onTappedTextForm;
        },
        obscureText: isPassword,

        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          contentPadding: EdgeInsets.symmetric(vertical: height),
          labelText: labelText,
          prefixIcon: prefix != null
              ? IconButton(
                  icon: Icon(prefix),
                  onPressed: () {
                    showPassword;
                  },
                )
              : null,
          suffixIcon: suffix != null
              ? IconButton(
                  icon: Icon(suffix),
                  onPressed: () {
                    showPassword;
                  },
                )
              : null,
        ),
      ),
    );
  }
}
