import 'package:flutter/material.dart';

import '../helper/app_constants.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.width,
    required this.price,
    required this.title,
    required this.subtitle,
  });

  final double width, price;
  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8, right: 8, left: 8),
      width: width,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 5,
        color: AppConstants.skipSkyBlue,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              Text(subtitle),
              Text(
                '\$$price',
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
