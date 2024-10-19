import 'package:flutter/material.dart';

import '../helper/app_constants.dart';
import '../widgets/skip_cards.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    var height = media.size.height;
    var width = media.size.width;
    return Scaffold(
      backgroundColor: AppConstants.bgColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * 0.07,
                        ),
                        const Text(
                          'Skip to the good part.',
                          style: TextStyle(
                            color: AppConstants.skipOrange,
                            fontSize: 48,
                            fontWeight: FontWeight.w800,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const Text(
                          'What can we bring to your door?',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: AppConstants.skipBlue,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          color: Colors.white,
                          width: width * 0.5,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            elevation: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 6.0,
                                    right: 6,
                                    top: 8,
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            color: Colors.white24),
                                      ),
                                      hintText: 'Enter your address',
                                      hintStyle: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey,
                                      ),
                                      prefixIcon:
                                          const Icon(Icons.location_on_outlined),
                                      prefixIconColor: Colors.black,
                                      suffixIcon:
                                          const Icon(Icons.my_location_rounded),
                                      suffixIconColor: Colors.black,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8.0,
                                    horizontal: 6,
                                  ),
                                  height: 60,
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      backgroundColor: AppConstants.skipOrange,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        side: const BorderSide(
                                          color: AppConstants.skipOrange,
                                        ),
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Find Favourites In Your Area',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: width * 0.4,
                      height: height * 0.5,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppConstants.imgPasta),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_city,
                            color: AppConstants.skipOrange,
                          ),
                          Text(
                            'More Choice',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            '''Skip now delivers over 50,000+ retailers to 450 cities\nand towns across Canada, including local favourites that\ndon’t normally deliver. Discover what’s new near you!''',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 30),
                          Icon(
                            Icons.more_time_outlined,
                            color: AppConstants.skipOrange,
                          ),
                          Text(
                            'Take time back in your day',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            '''In a world where traffic, wait times, and long lines make\neveryday tasks feel like a massive hassle, we’re here to\nhelp you skip to the good part.''',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.time_to_leave_outlined,
                            color: AppConstants.skipOrange,
                          ),
                          const Text(
                            'Seamless delivery',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const Text(
                            '''Watch your order from the moment you place it 'til it's\nright at your door.''',
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(height: 50),
                          const Icon(
                            Icons.house_outlined,
                            color: AppConstants.skipOrange,
                          ),
                          const Text(
                            '''Order delivery or pickup from\npopular places.''',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                backgroundColor: AppConstants.skipOrange,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: const BorderSide(
                                    color: AppConstants.skipOrange,
                                  ),
                                ),
                              ),
                              child: const Text(
                                'Get Started',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SkipCards(
                      icon: Icons.person_outlined,
                      title: 'Deliver with Skip',
                      subtitle:
                          'Earn extra money in your spare time.\nSet your availability, keep 100% of\nyour delivery fees and tips, and get\npaid weekly.',
                      buttonText: 'Join Now',
                      color: AppConstants.skipSkyBlue,
                      height: height,
                      width: width,
                    ),
                    const SizedBox(width: 10),
                    SkipCards(
                      icon: Icons.receipt_outlined,
                      title: 'Partner with Skip',
                      subtitle:
                          'Team up with us to reach more\ncustomers. Let us take care of the\ndetails, so you can stay focused on\nmaking great food.',
                      buttonText: 'Learn more',
                      color: AppConstants.skipPink,
                      height: height,
                      width: width,
                    ),
                    const SizedBox(width: 10),
                    SkipCards(
                      icon: Icons.person_pin_circle_outlined,
                      title: 'Careers at Skip',
                      subtitle:
                          'Gain experience that matters. Grow\nwith our team of high performers in\na fun, challenging, and fast-paced\nenvironment.',
                      buttonText: 'Apply Today',
                      color: AppConstants.skipAmber,
                      height: height,
                      width: width,
                    ),
                  ],
                ),
                SizedBox(height: height * 0.1),
                Container(
                  color: AppConstants.skipAmber,
                  width: width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: height * 0.05),
                          child: const Text(
                            'Popular Cuisines',
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.1),
                            child: SizedBox(
                              height: height * 0.7,
                              width: width * 0.2,
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemBuilder: (context, index) => Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text(
                                    AppConstants.cuisine1[index],
                                    style: const TextStyle(
                                      color: AppConstants.skipBlack,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                itemCount: AppConstants.cuisine1.length,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.1),
                            child: SizedBox(
                              height: height * 0.7,
                              width: width * 0.2,
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemBuilder: (context, index) => Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text(
                                    AppConstants.cuisine2[index],
                                    style: const TextStyle(
                                      color: AppConstants.skipBlack,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                itemCount: AppConstants.cuisine2.length,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.7,
                            width: width * 0.2,
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  AppConstants.cuisine3[index],
                                  style: const TextStyle(
                                    color: AppConstants.skipBlack,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              itemCount: AppConstants.cuisine3.length,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                    ],
                  ),
                ),
                Container(
                  color: AppConstants.skipSkyBlue,
                  width: width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: height * 0.05),
                          child: const Text(
                            'Famous Brands',
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.1),
                            child: SizedBox(
                              height: height,
                              width: width * 0.2,
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemBuilder: (context, index) => Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text(
                                    AppConstants.brand1[index],
                                    style: const TextStyle(
                                      color: AppConstants.skipBlack,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                itemCount: AppConstants.brand1.length,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.1),
                            child: SizedBox(
                              height: height,
                              width: width * 0.2,
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemBuilder: (context, index) => Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text(
                                    AppConstants.brand2[index],
                                    style: const TextStyle(
                                      color: AppConstants.skipBlack,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                itemCount: AppConstants.brand2.length,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height,
                            width: width * 0.2,
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  AppConstants.brand3[index],
                                  style: const TextStyle(
                                    color: AppConstants.skipBlack,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              itemCount: AppConstants.brand3.length,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                    ],
                  ),
                ),
                Container(
                  color: AppConstants.aboutBlack,
                  width: width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: height * 0.1),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.1),
                            child: SizedBox(
                              height: height * 0.4,
                              width: width * 0.2,
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemBuilder: (context, index) => Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text(
                                    AppConstants.about1[index],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                itemCount: AppConstants.about1.length,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.1),
                            child: SizedBox(
                              height: height * 0.4,
                              width: width * 0.2,
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemBuilder: (context, index) => Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text(
                                    AppConstants.about2[index],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                itemCount: AppConstants.about2.length,
                              ),
                            ),
                          ),
                          const Text(
                            'Invite Friends, get \$5',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide()),
              color: AppConstants.skipWhite,
            ),
            height: height * 0.08,
            width: width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(AppConstants.imgLogo),
                Container(
                  width: width * 0.4,
                  padding: const EdgeInsets.only(right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text('Need Help?'),
                      const Icon(Icons.person_pin),
                      const Text('Log In'),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: AppConstants.btnBlue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(color: AppConstants.skipWhite),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
