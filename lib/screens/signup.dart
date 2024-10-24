import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../helper/app_constants.dart';
import 'dashboard.dart';
import 'login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var hidePass = true, isCheck = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    var height = media.size.height;
    var width = media.size.width;
    return Scaffold(
      backgroundColor: AppConstants.beige,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: height * 0.1,
            horizontal: width * 0.1,
          ),
          child: Column(
            children: [
              SizedBox(height: height * 0.1),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.white24),
                  ),
                  hintText: 'Enter your user name',
                  hintStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                  prefixIcon: const Icon(Icons.person),
                  prefixIconColor: Colors.grey,
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.white24),
                  ),
                  hintText: 'Enter your email',
                  hintStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                  prefixIcon: const Icon(Icons.person),
                  prefixIconColor: Colors.grey,
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                obscureText: hidePass,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.white24),
                  ),
                  hintText: 'Enter your password',
                  hintStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                  prefixIcon: const Icon(Icons.password),
                  prefixIconColor: Colors.grey,
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        hidePass = !hidePass;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                obscureText: hidePass,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.white24),
                  ),
                  hintText: 'Enter your confirmed password',
                  hintStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                  prefixIcon: const Icon(Icons.password),
                  prefixIconColor: Colors.grey,
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        hidePass = !hidePass;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 10),
              CheckboxListTile(
                value: isCheck,
                onChanged: (val) {
                  setState(() {
                    isCheck = val ?? !isCheck;
                  });
                },
                enabled: true,
                title: const Text(
                  'I have read and agreed with the Privacy Policy.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  if (isCheck) Get.to(() => const Dashboard());
                },
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: AppConstants.skipSkyBlue,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Create',
                    style: TextStyle(fontSize: 16, color: AppConstants.bgColor),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Get.off(() => const Login());
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Already have an Account?',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
