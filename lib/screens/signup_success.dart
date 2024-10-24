import 'package:flutter/material.dart';

import '../helper/app_constants.dart';

class SignupSuccess extends StatelessWidget {
  const SignupSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppConstants.beige,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height * 0.3),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Yay! You have created an account with us.',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'We have sent you a confirmation email to your registered email.',
                style: TextStyle(
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppConstants.skipSkyBlue,
                elevation: 5,
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'View in Email',
                  style: TextStyle(fontSize: 24, color: AppConstants.bgColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
