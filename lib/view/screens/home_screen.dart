import 'package:ecommerce_app/core/constants/app_assets.dart';
import 'package:ecommerce_app/core/constants/app_colors.dart';
import 'package:ecommerce_app/core/extentions/space_extention.dart';
import 'package:ecommerce_app/view/widgets/ad_section.dart';
import 'package:ecommerce_app/view/widgets/best_booking_section.dart';
import 'package:ecommerce_app/view/widgets/search_section.dart';
import 'package:ecommerce_app/view/widgets/section_header.dart';
import 'package:ecommerce_app/view/widgets/service_section.dart';
import 'package:ecommerce_app/view/widgets/top_freelancers_section.dart';
import 'package:ecommerce_app/view/widgets/workshop_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        leading: SvgPicture.asset(IconAssets.menu, fit: BoxFit.scaleDown),
        title: Image.asset(ImageAssets.logo),
        actions: [
          SvgPicture.asset(IconAssets.notification, fit: BoxFit.scaleDown),
          16.width,
          SvgPicture.asset(IconAssets.cart, fit: BoxFit.scaleDown),
          20.width,
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchSection(),
            AdSection(),
            SizedBox.shrink(),
            SectionHeader(title: "Top Related Freelances"),
            TopFreelancersSection(),
            SectionHeader(title: "Top Service"),
            ServiceSection(),
            SectionHeader(title: "Best Booking"),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(16),
                child: AdSection(),
              ),
            ),
            BestBooking(),

            SectionHeader(title: "Best Recommended Workshop"),
            WorkshopSection(),
            16.height,
          ],
        ),
      ),
    );
  }
}
