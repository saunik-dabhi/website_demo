import 'package:flutter/material.dart';

import '../helper/app_constants.dart';
import '../widgets/menu_item.dart';

class RestaurantView extends StatelessWidget {
  const RestaurantView({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    var width = media.size.width;
    return Scaffold(
      backgroundColor: AppConstants.beige,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(8),
              child: const Text(
                'Wendy\'s',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Divider(height: 2, color: Colors.black),
            const SizedBox(height: 10),
            MenuItem(
              width: width * 0.95,
              price: 8.41,
              title: 'The Krabby Patty Kollab (Cals: 590)',
              subtitle:
                  'A quarter pound of fresh, never-frozen Canadian beef, melted cheese, crisp lettuce, tomato, pickle, onion, and a super special secret sauce served on a toasted bun with, of course, love.',
            ),
            MenuItem(
              width: width * 0.95,
              price: 14.26,
              title: 'The Krabby Patty Combo - Small',
              subtitle:
                  'A quarter pound of fresh, never-frozen Canadian beef, melted cheese, crisp lettuce, tomato, pickle, onion, and a super special secret sauce served on a toasted bun with, of course, love.',
            ),
            MenuItem(
              width: width * 0.95,
              price: 17.36,
              title: 'Bacon Deluxe 1/4 lb* Single with Cheese Combo - Large',
              subtitle:
                  'Fresh Canadian beef patty with 3 strips of Applewood smoked bacon, melted cheese, crisp lettuce, tomato, pickle, ketchup, mayo, and onion on a toasted bun. This single will satisfy your senses. *Approximate weight before cooking.',
            ),
            MenuItem(
              width: width * 0.95,
              price: 16.31,
              title: "Dave's Single® with Cheese Combo - Large",
              subtitle:
                  'A quarter-pound* of fresh Canadian beef, cheese, crisp lettuce, tomato, pickle, ketchup, mayo, and onion on a toasted bun — just the way Dave intended. *Approximate weight before cooking.',
            ),
            MenuItem(
              width: width * 0.95,
              price: 18.88,
              title: 'Baconator® with Cheese Combo - Large',
              subtitle:
                  'A half-pound* of fresh, Canadian beef, melted cheese, 6 slices of crispy Applewood smoked bacon, ketchup, and mayo. Carnivores rejoice! *Approximate weight before cooking.',
            ),
            MenuItem(
              width: width * 0.95,
              price: 16.31,
              title: 'Son of Baconator® with Cheese Combo - Large',
              subtitle:
                  'Fresh Canadian beef, plenty of Applewood smoked bacon, ketchup, and mayo. Like Baconator®, like son.',
            ),
            MenuItem(
              width: width * 0.95,
              price: 16.66,
              title: 'Classic Chicken Sandwich Combo - Large',
              subtitle:
                  'A juicy, lightly breaded crispy chicken breast with crunchy lettuce, tomato, mayo, and the perfect pickles, all on a toasted bun. It’s a flawless blend of nostalgia and excitement—kinda like your all-time favorite song, only better ‘cause you can eat it.',
            ),
          ],
        ),
      ),
    );
  }
}
