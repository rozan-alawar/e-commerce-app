import 'package:ecommerce_app/core/constants/app_assets.dart';
import 'package:ecommerce_app/core/constants/app_colors.dart';
import 'package:ecommerce_app/core/extentions/space_extention.dart';
import 'package:ecommerce_app/core/widgets/primary_rating.dart';
import 'package:ecommerce_app/core/widgets/primary_text_widget.dart';
import 'package:flutter/material.dart';

class BestBooking extends StatelessWidget {
  BestBooking({super.key});

  final books = [ImageAssets.book1, ImageAssets.book2];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => 20.height,
        shrinkWrap: true,
        itemCount: books.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 16),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  books[index],
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.fill,
                ),
              ),
              12.height,
              Row(
                children: [
                  Image.asset(
                    ImageAssets.profilePic,
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                  16.width,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          PrimaryText(
                            'Miss Zachary Will',
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                          8.width,
                          PrimaryText(
                            'Beautician',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryLight,
                          ),
                        ],
                      ),

                      SizedBox(
                        width: 180,
                        child: PrimaryText(
                          'Eum libero eligendi molestia',
                          fontSize: 14,
                          maxLines: 2,
                          overflow: TextOverflow.clip,
                          color: AppColors.textLight,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  RatingWidget(rating: "4.9"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
