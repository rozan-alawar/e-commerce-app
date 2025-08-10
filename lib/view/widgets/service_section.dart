import 'package:ecommerce_app/core/constants/app_assets.dart';
import 'package:ecommerce_app/core/constants/app_colors.dart';
import 'package:ecommerce_app/core/extentions/space_extention.dart';
import 'package:ecommerce_app/core/widgets/primary_button.dart';
import 'package:ecommerce_app/core/widgets/primary_rating.dart';
import 'package:ecommerce_app/core/widgets/primary_text_widget.dart';
import 'package:flutter/material.dart';

class ServiceSection extends StatelessWidget {
  ServiceSection({super.key});

  final services = [
    ImageAssets.service1,
    ImageAssets.service2,
    ImageAssets.service3,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => 16.height,
        shrinkWrap: true,
        itemCount: services.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 16),
          child: Stack(
            alignment: AlignmentDirectional.centerStart,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  services[index],
                  width: 230,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                right: 0,
                child: Container(
                  padding: EdgeInsetsDirectional.only(
                    start: 16,
                    top: 16,
                    bottom: 16,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 1,
                        color: Colors.black.withValues(alpha: 0.16),
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(radius: 25),
                      8.width,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                          2.height,

                          Row(
                            children: [
                              RatingWidget(rating: "4.9"),
                              12.width,
                              PrimaryButton(
                                text: "Buy Now",
                                width: 100,
                                height: 40,
                                borderRadius: 12,
                                textColor: AppColors.iconWhite,
                                backgroundColor: AppColors.primaryLight,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
