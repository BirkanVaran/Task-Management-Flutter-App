import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:todo_app/core/common/widgets/white_space.dart';
import 'package:todo_app/core/resources/colours.dart';
import 'package:todo_app/core/resources/image_res.dart';

class OTPVerificationScreen extends StatelessWidget {
  const OTPVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 8.h),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImageRes.toDo),
            const WhiteSpace(height: 20),
            Text(
              'Enter the verification code below:',
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                fontSize:
                    16, //! Use 16.sp to adapt every device, but first check the ScreenUtil doc. to implement
                color: AppColors.light,
              ),
            ),
            const WhiteSpace(height: 20),
            Pinput(
              length: 6,
              defaultPinTheme: PinTheme(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.w,
                  vertical: 16.h,
                ),
                decoration: BoxDecoration(
                  color: AppColors.light,
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              onCompleted: (pin) {
                // TODO(Verify-OTP): Send OTP to Firebase for verification.
              },
            )
          ],
        )),
      ),
    );
  }
}
