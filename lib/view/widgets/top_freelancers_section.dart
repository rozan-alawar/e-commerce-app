import 'package:ecommerce_app/core/extentions/space_extention.dart';
import 'package:ecommerce_app/core/routes/routes.dart';
import 'package:ecommerce_app/core/widgets/primary_rating.dart';
import 'package:ecommerce_app/core/widgets/primary_text_widget.dart';
import 'package:ecommerce_app/models/user.dart';
import 'package:flutter/material.dart';

class TopFreelancersSection extends StatelessWidget {
  const TopFreelancersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: ListView.separated(
        separatorBuilder: (context, index) => 16.width,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: users.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            Routes.freelancerDetails,
            arguments: users[index],
          ),

          child: Padding(
            padding: EdgeInsetsDirectional.only(
              start: index == 0 ? 16 : 0,
              end: index == users.length - 1 ? 16 : 0,
            ),
            child: SizedBox(
              width: 120,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset(users[index].image, fit: BoxFit.cover),
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
                              SizedBox(
                                width: 100,
                                child: PrimaryText(
                                  users[index].name,
                                  fontWeight: FontWeight.w300,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 14,
                                ),
                              ),
                              PrimaryText(
                                users[index].jobTitle,
                                fontWeight: FontWeight.bold,
                              ),
                              2.height,
                              RatingWidget(rating: users[index].rating),
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
      ),
    );
  }
}
