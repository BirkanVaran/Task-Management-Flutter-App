import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/core/resources/colours.dart';

class OTPVerificationScreen extends StatelessWidget {
  const OTPVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'OTP Verification Screen',
          style: GoogleFonts.poppins(
            color: AppColors.light,
          ),
        ),
      ),
    );
  }
}
