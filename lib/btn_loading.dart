import 'package:flutter/material.dart';

Widget btnLoading({
  bool loading = false,
  Color bgColor = Colors.white,
  double strokeWidth = 2,
  double width = 14,
  double height = 14,
}) {
  return !loading
      ? const SizedBox()
      : Container(
          margin: const EdgeInsets.only(left: 10, right: 10),
          width: width,
          height: height,
          child: CircularProgressIndicator(
            strokeWidth: strokeWidth,
            backgroundColor: bgColor,
          ),
        );
}
