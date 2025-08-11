import 'package:ecommerce_app/core/constants/app_assets.dart';
import 'package:ecommerce_app/core/extentions/space_extention.dart';
import 'package:ecommerce_app/core/widgets/primary_rating.dart';
import 'package:ecommerce_app/core/widgets/primary_text_widget.dart';
import 'package:flutter/material.dart';

class TopFreelancersSection extends StatelessWidget {
  TopFreelancersSection({super.key});

  final users = [
    ImageAssets.user1,
    ImageAssets.user2,
    ImageAssets.user3,
    ImageAssets.user4,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: ListView.separated(
        separatorBuilder: (context, index) => 20.width,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: users.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsetsDirectional.only(
            start: index == 0 ? 16 : 0,
            end: index == 4 ? 16 : 0,
          ),
          child: SizedBox(
            width: 120,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset(
                    users[index],
                    fit: BoxFit.cover,
                    height: 72,
                    width: 72,
                  ),
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
                              blurRadius: 12,
                              color: Colors.black.withValues(alpha: 0.16),
                              offset: Offset(-2, 2),
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
