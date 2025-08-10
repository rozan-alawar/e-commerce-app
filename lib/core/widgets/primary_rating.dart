import 'package:ecommerce_app/core/constants/app_assets.dart';
import 'package:ecommerce_app/core/constants/app_colors.dart';
import 'package:ecommerce_app/core/extentions/space_extention.dart';
import 'package:ecommerce_app/core/widgets/primary_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key, required this.rating, this.color});

  final String rating;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: color ?? AppColors.primaryDark.withValues(alpha: 0.1),
      ),
      child: Row(
        children: [
          SvgPicture.asset(IconAssets.star),
          4.width,
          PrimaryText(rating, fontSize: 14, fontWeight: FontWeight.bold),
        ],
      ),
    );
  }
}
