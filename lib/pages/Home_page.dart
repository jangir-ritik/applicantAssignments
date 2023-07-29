import 'package:applicantassignments/helpers/app_color.dart';
import 'package:applicantassignments/helpers/app_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 2,
        leading: InkWell(
          onTap: () {},
          child: SvgPicture.asset('assets/svgs/backArrow.svg'),
        ),
        title: const Text(AppString.title),
        titleTextStyle: const TextStyle(
            color: AppColors.black,
            fontSize: 24,
            fontWeight: FontWeight.w500,
            letterSpacing: 1),
      ),
    );
  }
}
