import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../helper/app_constants.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    var width = media.size.width;
    return Scaffold(
      backgroundColor: AppConstants.bgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Your Order',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Divider(
                height: 2,
                color: Colors.black,
              ),
              ListTile(
                leading: const Text('1', style: TextStyle(fontSize: 20)),
                title: const Text('#30 Carnivore (6")'),
                subtitle: const Text('Classic Italian [198 Cals]'),
                trailing: SizedBox(
                  width: width * 0.2,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$9.19', style: TextStyle(fontSize: 16)),
                      Icon(CupertinoIcons.clear_circled),
                    ],
                  ),
                ),
              ),
              const Divider(),
              ListTile(
                leading: const Text('1', style: TextStyle(fontSize: 20)),
                title: const Text('#24 Chimichurri Veggie (Footlong)'),
                subtitle:
                    const Text('Classic Italian Herbs & Cheese [483 Cals]'),
                trailing: SizedBox(
                  width: width * 0.2,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$16.99', style: TextStyle(fontSize: 16)),
                      Icon(CupertinoIcons.clear_circled),
                    ],
                  ),
                ),
              ),
              const Divider(),
              ListTile(
                leading: const Text('3', style: TextStyle(fontSize: 20)),
                title: const Text('#25 Shawarma Chicken (Rice Wrap)'),
                subtitle: const Text(
                    'Wrap [297 Cals] • Grilled • Brown, Red & Wild Rice Blend [190 Cals]'),
                trailing: SizedBox(
                  width: width * 0.2,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$45.87', style: TextStyle(fontSize: 16)),
                      Icon(CupertinoIcons.clear_circled),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Order Subtotal',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '\$72.05',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(bottom: 10),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppConstants.skipAmber,
                    foregroundColor: AppConstants.bgColor,
                    elevation: 5,
                  ),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
                    child: Text(
                      'Checkout',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
