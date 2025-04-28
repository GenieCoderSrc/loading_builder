import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoading extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? baseColor, highlightColor;

  const ShimmerLoading(
      {super.key,
      this.height,
      this.width,
      this.baseColor,
      this.highlightColor});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: baseColor ?? Theme.of(context).hoverColor,
        highlightColor: highlightColor ?? Theme.of(context).highlightColor,
        child: Container(
          height: height,
          width: width,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ));
  }
}
