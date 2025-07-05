import 'package:flutter/material.dart';
import 'package:hallo_wellness_ui/res/assets/image_assets.dart';
import 'package:hallo_wellness_ui/res/colors/app_colors.dart';
import 'package:intl/intl.dart';

class NewsAndUpdates extends StatefulWidget {
  const NewsAndUpdates({super.key});

  @override
  State<NewsAndUpdates> createState() => _NewsAndUpdatesState();
}

class _NewsAndUpdatesState extends State<NewsAndUpdates> {
  final messages = [
    'Akhil Gupta has sent you a video call request.',
    'You have received a payment of ₹100 for the video\ncall session with Akanksha Jain.',
    'Your App has been updated to the latest version.',
    'Ganesh Anand has sent you a voice call request.',
    'Tiya Agarwal has sent you a Chat request.',
    'You have received a payment of ₹120 for the video call session with Mahendra Paliwal.',
    'Akhil Gupta has sent you a video call request.',
    'Ganesh Anand has sent you a voice call request.',
  ];

  final time = [
    '01:12 PM',
    '12:10 PM',
    '10:12 AM',
    '06:00 PM',
    '05:15 PM',
    '12:10 PM',
    '01:12 PM',
    '06:00 PM',
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          /// Component One starts here
          ///
          ///
          ///
          ///
          ///
          ///

          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(
                top: height * 0.06,
                bottom: height * 0.015,
                // right: width * 0.05,
                // left: width * 0.05,
              ),
              color: AppColors.primaryAppColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    child: Image.asset(ImageAssets.arrowBack, scale: 20),
                    onTap: () {},
                  ),
                  Text(
                    'Notifications',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  // Padding(
                  // padding: EdgeInsets.only(left: 10),
                  // child:
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Clear All',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  // ),
                ],
              ),
            ),
          ),

          /// Component one ends here
          ///
          ///
          ///
          ///
          ///
          ///
          /// Component two starts here

          SliverToBoxAdapter(
            child: Container(
              // height: height * 0.8,
              width: double.infinity,
              color: AppColors.primaryAppColor,
              padding: EdgeInsets.all(0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.04, vertical: height * 0.02),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          DefaultTextStyle(
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                            child: Row(
                              children: [
                                Text('Today'),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width * 0.01),
                                  child: Icon(
                                    Icons.circle,
                                    size: 5,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text('09 Oct’ 23'),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height * 0.8335,
                            child: ListView.separated(
                              itemBuilder: (context, index) {
                                return Row(
                                  children: [
                                    Image.asset(
                                      ImageAssets.doubleCircle,
                                      scale: 40,
                                    ),
                                    Column(
                                      children: [
                                        Text(messages[index]),
                                        Text(time[index]),
                                      ],
                                    )
                                  ],
                                );
                              },
                              separatorBuilder: (_, __) {
                                return Divider(height: height * 0.03);
                              },
                              itemCount: 5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
