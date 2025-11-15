import 'package:flutter/material.dart';
import 'package:parkar/constant/app_colors.dart';
import 'package:parkar/constant/app_images.dart';

class NavigationPanelWidget extends StatelessWidget {
  final Axis axis;

  const NavigationPanelWidget({super.key, required this.axis});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: axis == Axis.vertical ? 150 : double.infinity,
      height: axis == Axis.vertical ? double.infinity : 90,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: axis == Axis.vertical
            ? BorderRadius.circular(20)
            : BorderRadius.zero,
        boxShadow: axis == Axis.horizontal
            ? [
                BoxShadow(
                  color: Colors.black.withValues(alpha: .1),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, -6),
                ),
              ]
            : [],
      ),
      child: axis == Axis.horizontal
          ? Row(
              children: [
                Container(
                  width: 100,
                  child: Column(
                    children: [
                      Image.asset(AppImages.discover),
                      Text("Discover"),
                    ],
                  ),
                ),
              ],
            )
          : Column(children: [
          
        ],
      ),
    );
  }
}
