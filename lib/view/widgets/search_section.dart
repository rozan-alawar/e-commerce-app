import 'dart:developer';

import 'package:ecommerce_app/core/constants/app_assets.dart';
import 'package:ecommerce_app/core/constants/app_colors.dart';
import 'package:ecommerce_app/core/extentions/space_extention.dart';
import 'package:ecommerce_app/core/widgets/primary_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchSection extends StatefulWidget {
  const SearchSection({super.key});

  @override
  State<SearchSection> createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {
  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: PrimaryTextField(
              controller: searchController,
              prefixIcon: SvgPicture.asset(IconAssets.search),
              hint: "Search here",
              onSaved: (value) => log(value ?? "null"),
            ),
          ),
          16.width,
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: AppColors.border),
              borderRadius: BorderRadius.circular(14),
            ),
            width: 51,
            height: 51,
            child: SvgPicture.asset(IconAssets.sort, fit: BoxFit.contain),
          ),
        ],
      ),
    );
  }
}
