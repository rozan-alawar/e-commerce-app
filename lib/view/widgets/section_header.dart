import 'package:ecommerce_app/core/constants/app_colors.dart';
import 'package:ecommerce_app/core/widgets/primary_text_widget.dart';
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({super.key, required this.title, this.onTap});

  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 35,
          decoration: BoxDecoration(gradient: AppColors.headerGradient),
          child: Padding(
            padding: const EdgeInsetsDirectional.only(start: 16),
            child: Center(
              child: PrimaryText(
                title,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsetsDirectional.only(end: 8.0),
          child: GestureDetector(
            onTap: onTap,
            child: PrimaryText(
              "View All",
              fontSize: 14,
              color: AppColors.primaryDark,
              // textDecoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
