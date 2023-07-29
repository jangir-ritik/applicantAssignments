import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../helpers/app_color.dart';

class AttendanceAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Size size;
  const AttendanceAppbar({super.key, required this.size});

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      elevation: 1,
      centerTitle: false,
      leading: InkWell(
        onTap: () {},
        child: SvgPicture.asset(
          'assets/svgs/backArrow.svg',
        ),
      ),
      title: const Text('Attendance'),
      titleTextStyle: const TextStyle(
          color: AppColors.black,
          fontSize: 24,
          fontWeight: FontWeight.w500,
          letterSpacing: 1),
    );
  }
}
