import 'package:ecommerce_app/core/constants/app_colors.dart';
import 'package:ecommerce_app/core/extentions/space_extention.dart';
import 'package:ecommerce_app/core/widgets/primary_text_widget.dart';
import 'package:ecommerce_app/models/user.dart';
import 'package:flutter/material.dart';

class FreelancerDeatils extends StatelessWidget {
  const FreelancerDeatils({super.key, required this.user});
  final User user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: PrimaryText(
          "${user.name} Profile",
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            25.height,
            Image.asset(user.image, width: 90, height: 90, fit: BoxFit.cover),
            16.height,
            PrimaryText(user.name, fontWeight: FontWeight.bold),
            4.height,
            PrimaryText(
              user.jobTitle,
              fontWeight: FontWeight.w400,
              color: AppColors.primary,
            ),
          ],
        ),
      ),
    );
  }
}
