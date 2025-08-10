import 'package:ecommerce_app/core/constants/app_colors.dart';
import 'package:ecommerce_app/core/widgets/primary_text_widget.dart';
import 'package:flutter/material.dart';

import '../../core/constants/app_assets.dart';

class AdSection extends StatelessWidget {
  const AdSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppColors.secondaryGradient,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 16,
                top: 20,
                bottom: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Todays Deal',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF64748B),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '50% OFF',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1E293B),
                    ),
                  ),
                  SizedBox(height: 8),
                  PrimaryText(
                    'Et provident eo est dolore. Eum libero eligendi molestias aut et quibusdam aspernatur.',

                    fontSize: 14,
                    color: Color(0xFF64748B),
                    height: 1.4,
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ),
          Image.asset(ImageAssets.girl, fit: BoxFit.fitHeight),
        ],
      ),
    );
  }
}
