import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/core/common/widgets/round_button.dart';
import 'package:todo_app/core/common/widgets/white_space.dart';
import 'package:todo_app/core/resources/colours.dart';
import 'package:todo_app/core/resources/image_res.dart';
import 'package:todo_app/features/authentication/views/otp_verification_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(16),
    );
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: SafeArea(
        child: Center(
          child: ListView(
            shrinkWrap:
                true, //! ListView'in sadece kullanıldığı alan kadar yer kaplamasını sağlar. Böylelikle Center() widget'i ile wraplanabilir.
            physics: const PageScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 30),
            children: [
              Image.asset(ImageRes.toDo),
              const WhiteSpace(
                height: 20,
              ),
              Text(
                'Please enter your phone number to get the verification code',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: AppColors.light,
                ),
              ),
              const WhiteSpace(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.phone,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: AppColors.darkBackground,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.light,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 4,
                  ),
                  focusedBorder: border,
                  enabledBorder: border,
                ),
              ),
              const WhiteSpace(height: 20),
              RoundButton(
                text: 'Send Code',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const OTPVerificationScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}