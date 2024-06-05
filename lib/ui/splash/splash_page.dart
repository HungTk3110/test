import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qsoft_test/common/app_images.dart';
import 'package:qsoft_test/common/app_text_styles.dart';
import 'package:qsoft_test/navigator/routes.dart';

class SplashPage extends StatefulWidget {
  SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      AppNavigator.pushAndRemove(Routes.home);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBodyWidget(),
    );
  }

  Widget _buildBodyWidget() {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30.h),
          Spacer(
            flex: 1,
          ),
          Image.asset(
            AppImages.icCart,
            width: 100.r,
            height: 100.r,
          ),
          Spacer(flex: 1),
          Text(
            '2024 Qsoft all rights reserved',
            style: AppTextStyle.blackS16W500,
          ),
          SizedBox(height: 30.h)
        ],
      ),
    );
  }
}
