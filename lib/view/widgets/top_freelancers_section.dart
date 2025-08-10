import 'package:ecommerce_app/core/constants/app_assets.dart';
import 'package:ecommerce_app/core/extentions/space_extention.dart';
import 'package:ecommerce_app/core/widgets/primary_rating.dart';
import 'package:ecommerce_app/core/widgets/primary_text_widget.dart';
import 'package:flutter/material.dart';

class TopFreelancersSection extends StatelessWidget {
  const TopFreelancersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: ListView.separated(
        separatorBuilder: (context, index) => 20.width,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsetsDirectional.only(
            start: index == 0 ? 16 : 0,
            end: index == 4 ? 16 : 0,
          ),
          child: SizedBox(
            width: 110,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                CircleAvatar(
                  radius: 50,
                  child: Image.asset(ImageAssets.girl, fit: BoxFit.contain),
                ),
                Positioned(
                  bottom: 10,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(16),
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
                        child: Column(
                          children: [
                            PrimaryText(
                              'Wade Warren',
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                            ),
                            PrimaryText(
                              'Beautician',
                              fontWeight: FontWeight.bold,
                            ),
                            2.height,
                            RatingWidget(rating: "4.9"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
