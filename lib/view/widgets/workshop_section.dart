import 'package:ecommerce_app/core/constants/app_assets.dart';
import 'package:ecommerce_app/core/constants/app_colors.dart';
import 'package:ecommerce_app/core/extentions/space_extention.dart';
import 'package:ecommerce_app/core/widgets/primary_button.dart';
import 'package:ecommerce_app/core/widgets/primary_rating.dart';
import 'package:ecommerce_app/core/widgets/primary_text_widget.dart';
import 'package:flutter/material.dart';

class WorkshopSection extends StatelessWidget {
  const WorkshopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.5,
        ),
        itemBuilder: (context, index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    ImageAssets.service2,
                    height: 200,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  right: 8,
                  top: 8,
                  child: RatingWidget(
                    rating: "4.9",
                    color: Colors.white.withValues(alpha: 0.7),
                  ),
                ),
              ],
            ),
            8.height,
            PrimaryText(
              'Miss Zachary Will',
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
            PrimaryText(
              'Beautician',
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColors.primaryLight,
            ),
            PrimaryText(
              'Eum libero eligendi molestia',
              fontSize: 14,
              maxLines: 2,
              overflow: TextOverflow.clip,
              color: AppColors.textLight,
            ),
            8.height,
            PrimaryButton(
              text: "Book Workshop",
              height: 40,
              borderRadius: 12,
              textColor: AppColors.iconWhite,
              backgroundColor: AppColors.primaryLight,
            ),
          ],
        ),
        itemCount: 6,
      ),
    );
  }
}
