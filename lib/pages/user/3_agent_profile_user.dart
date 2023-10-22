import 'package:flutter/material.dart';
import 'package:hallo_wellness_ui/res/assets/image_assets.dart';
import 'package:hallo_wellness_ui/res/colors/app_colors.dart';

import '../../res/components/reusable_widgets.dart';

class AgentProfileUser extends StatefulWidget {
  const AgentProfileUser({super.key});

  @override
  State<AgentProfileUser> createState() => _AgentProfileUserState();
}

class _AgentProfileUserState extends State<AgentProfileUser> {
  bool isExpanded = false;

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

          SliverAppBar(
            leading: InkWell(
              child: Image.asset(ImageAssets.arrowBack, scale: 20),
              onTap: () {},
            ),
            pinned: true,
            expandedHeight: height * 0.35,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: AppColors.primaryAppColor,
                child: Stack(
                  // fit: StackFit.expand,
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: height * 0.35,
                      backgroundColor: Color(0xff5250f5),
                    ),
                    CircleAvatar(
                      radius: height * 0.15,
                      backgroundColor: Color(0xff5d59f5),
                    ),
                    CircleAvatar(
                      radius: height * 0.08,
                      backgroundColor: AppColors.whiteColor,
                    ),
                    CircleAvatar(
                      radius: height * 0.07,
                      backgroundImage: AssetImage(ImageAssets.userProfile),
                    ),
                    Positioned(
                      top: height * 0.29,
                      child: Text(
                        'Ekta Dixit',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      top: height * 0.34,
                      child: SizedBox(
                        height: height * 0.03,
                        width: width * 0.3,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.whiteColor,
                            foregroundColor: Colors.black,
                            textStyle: TextStyle(fontSize: 12),
                            padding: EdgeInsets.all(0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text('Relationship Expert'),
                        ),
                      ),
                    ),
                    Positioned(
                      top: height * 0.1,
                      left: width * 0.4,
                      child: Image.asset(ImageAssets.rectIcon, scale: 30),
                    ),
                    Positioned(
                      top: height * 0.11,
                      left: width * 0.25,
                      child: Image.asset(ImageAssets.arrowIcon, scale: 25),
                    ),
                    Positioned(
                      top: height * 0.17,
                      left: width * 0.25,
                      child: Image.asset(ImageAssets.curlIcon, scale: 25),
                    ),
                    Positioned(
                      top: height * 0.22,
                      left: width * 0.18,
                      child: Image.asset(ImageAssets.TriIcon, scale: 30),
                    ),
                    Positioned(
                      top: height * 0.24,
                      left: width * 0.28,
                      child: Image.asset(ImageAssets.circleIcon, scale: 40),
                    ),
                    Positioned(
                      top: height * 0.26,
                      left: width * 0.38,
                      child: Image.asset(ImageAssets.TriIcon, scale: 40),
                    ),
                    Positioned(
                      top: height * 0.07,
                      left: width * 0.5,
                      child: Transform.rotate(
                          angle: 1.5,
                          child: Image.asset(ImageAssets.TriIcon, scale: 35)),
                    ),
                    Positioned(
                      top: height * 0.09,
                      left: width * 0.65,
                      child: Transform.rotate(
                          angle: 3.1,
                          child: Image.asset(ImageAssets.arrowIcon, scale: 25)),
                    ),
                    Positioned(
                      top: height * 0.12,
                      left: width * 0.76,
                      child: Image.asset(ImageAssets.circleIcon, scale: 50),
                    ),
                    Positioned(
                      top: height * 0.18,
                      left: width * 0.75,
                      child: Image.asset(ImageAssets.TriIcon, scale: 30),
                    ),
                    Positioned(
                      top: height * 0.23,
                      left: width * 0.61,
                      child: Image.asset(ImageAssets.rectIcon, scale: 40),
                    ),
                    Positioned(
                      top: height * 0.23,
                      left: width * 0.8,
                      child: Transform.rotate(
                          angle: 1,
                          child: Image.asset(ImageAssets.rectIcon, scale: 40)),
                    ),
                    Positioned(
                      top: height * 0.25,
                      left: width * 0.7,
                      child: Transform.rotate(
                          angle: 2.5,
                          child: Image.asset(ImageAssets.curlIcon, scale: 30)),
                    ),
                  ],
                ),
              ),
            ),
          ),

          /// Component One end here
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
                          horizontal: width * 0.03, vertical: height * 0.01),
                      // height: height * 0.6,
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
                          SizedBox(
                            // height: height * 0.04,
                            // TODO: change height
                            // height: height * 0.03,
                            child: Row(
                              children: [
                                Text(
                                  'Total Sessions Conducted',
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                Spacer(),
                                Container(
                                  height: 25,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        '4.8',
                                        style: TextStyle(
                                            color: Color(0xff3a3a3a),
                                            fontSize: 13),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xff3a3a3a),
                                        size: 15,
                                      ),
                                    ],
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    '110 Reviews',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text('80+ Hours',
                              style: Theme.of(context).textTheme.headlineSmall),
                          Divider(height: height * 0.03),
                          Text('Languages',
                              style: Theme.of(context).textTheme.titleSmall),
                          Padding(
                            padding:
                                EdgeInsets.symmetric(vertical: height * 0.01),
                            child: Wrap(
                              spacing: 10,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Color(0xffeeeeff),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text('English',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Color(0xffeeeeff),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text('Hindi',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Color(0xffeeeeff),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text('Marathi',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          Padding(
                            padding: EdgeInsets.only(top: height * 0.01),
                            child: Text('About',
                                style: Theme.of(context).textTheme.titleSmall),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: height * 0.01),
                            child: const ExpandableText(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque scelerisque efficitur posuere. Curabitur tincidunt placerat diam ac efficitur. Cras rutrum egestas nisl vitae pulvinar. Donec id mollis diam, id hendrerit neque. Donec accumsan efficitur libero, vitae feugiat odio fringilla ac. Aliquam a turpis bibendum, varius erat dictum, feugiat libero. Nam et dignissim nibh. Morbi elementum varius elit, at dignissim ex accumsan a',
                              trimLines: 2,
                            ),
                          ),
                          Divider(height: height * 0.03),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(bottom: height * 0.025),
                                    child: Text('Availability',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall),
                                  ),
                                  Text('Mon - Fri'),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: height * 0.03),
                                    child: Text('Sat - Sun'),
                                  ),
                                ],
                              ),
                              VerticalDivider(width: width * 0.02),
                              Padding(
                                padding: EdgeInsets.only(top: height * 0.03),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: height * 0.045,
                                      child: VerticalDivider(),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.only(top: height * 0.02),
                                      height: height * 0.042,
                                      child: VerticalDivider(),
                                    ),
                                  ],
                                ),
                              ),
                              VerticalDivider(width: width * 0.02),
                              Padding(
                                padding: EdgeInsets.only(bottom: height * 0.01),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: height * 0.035),
                                        height: height * 0.06,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text('9:00 AM - 11:00 AM'),
                                            Text('6:30 PM - 08:30 PM'),
                                          ],
                                        )),
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: height * 0.015),
                                      height: height * 0.02,
                                      child: Text(
                                        'NA',
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: width * 0.15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Rate',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall),
                                    Padding(
                                      padding:  EdgeInsets.only(top: height * 0.006),
                                      child: Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 12,
                                            backgroundColor: Color(0XFFEEEEFF),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(50),
                                                color: Color(0XFFEEEEFF),
                                              ),
                                              child: Image.asset(
                                                ImageAssets.videoIcon,
                                                height: height * 0.015,
                                                width: width * 0.035,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: width * 0.02),
                                            child: Text('₹',
                                                style: TextStyle(fontSize: 15)),
                                          ),
                                          Text(
                                            '50/Min',
                                            style: TextStyle(
                                                color: Colors.grey, fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.only(top: height * 0.006),
                                      child: Row(
                                        children: [

                                          CircleAvatar(
                                            radius: 12,
                                            backgroundColor: Color(0XFFEEEEFF),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(50),
                                                color: Color(0XFFEEEEFF),
                                              ),
                                              child: Image.asset(
                                                ImageAssets.voiceIcon,
                                                height: height * 0.04,
                                                width: width * 0.06,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: width * 0.02),
                                            child: Text('₹',
                                                style: TextStyle(fontSize: 15)),
                                          ),
                                          Text(
                                            '40/Min',
                                            style: TextStyle(
                                                color: Colors.grey, fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.only(top: height * 0.006),
                                      child: Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 12,
                                            backgroundColor: Color(0XFFEEEEFF),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(50),
                                                color: Color(0XFFEEEEFF),
                                              ),
                                              child: Image.asset(
                                                ImageAssets.chatIcon,
                                                height: height * 0.04,
                                                width: width * 0.06,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: width * 0.02),
                                            child: Text('₹',
                                                style: TextStyle(fontSize: 15)),
                                          ),
                                          Text(
                                            '20/Min',
                                            style: TextStyle(
                                                color: Colors.grey, fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: height * 0.02),

                          /// Component Two ends here
                          ///
                          ///
                          ///
                          ///
                          ///
                          ///
                          /// Component three starts here

                          Row(
                            children: [
                              OutlinedButton(
                                onPressed: () {},
                                child: Text(
                                  'Notify',
                                  style: TextStyle(
                                    color: AppColors.primaryAppColor,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  minimumSize:
                                      Size(width * 0.45, height * 0.06),
                                  side: BorderSide(
                                      color: AppColors.primaryAppColor),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              Spacer(),
                              ElevatedButton(
                                /// agent profile 1
                                /// on agent profile page
                                ///
                                ///
                                ///
                                ///
                                ///
                                ///

                                onPressed: () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (context) {
                                      return Container(
                                        width: double.infinity,
                                        height: height * 0.32,
                                        padding: EdgeInsets.symmetric(
                                          vertical: height * 0.03,
                                          horizontal: width * 0.04,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              height: height * 0.075,
                                              padding: EdgeInsets.only(
                                                  left: width * 0.05),
                                              decoration: BoxDecoration(
                                                color: AppColors.whiteColor,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(20),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.1),
                                                    spreadRadius: 1,
                                                    blurRadius: 10,
                                                  ),
                                                ],
                                              ),
                                              child: Row(
                                                children: [
                                                  CircleAvatar(
                                                    radius: 17,
                                                    backgroundColor: Color(0XFFEEEEFF),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(50),
                                                        color: Color(0XFFEEEEFF),
                                                      ),
                                                      child: Image.asset(
                                                        ImageAssets.videoIcon,
                                                        height: height * 0.015,
                                                        width: width * 0.055,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:  EdgeInsets.only(left: width * 0.02),
                                                    child: Text(
                                                      'Video Call',
                                                      style: TextStyle(
                                                        fontSize: 17,
                                                        color: AppColors
                                                            .primaryAppColor,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height: height * 0.075,
                                              padding: EdgeInsets.only(
                                                  left: width * 0.05),
                                              decoration: BoxDecoration(
                                                color: AppColors.whiteColor,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(20),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.1),
                                                    spreadRadius: 1,
                                                    blurRadius: 10,
                                                  ),
                                                ],
                                              ),
                                              child: Row(
                                                children: [
                                                  CircleAvatar(
                                                    radius: 17,
                                                    backgroundColor: Color(0XFFEEEEFF),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(50),
                                                        color: Color(0XFFEEEEFF),
                                                      ),
                                                      child: Image.asset(
                                                        ImageAssets.voiceIcon,
                                                        height: height * 0.03,
                                                        width: width * 0.07,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:  EdgeInsets.only(left: width * 0.02),
                                                    child: Text(
                                                      'Voice Call',
                                                      style: TextStyle(
                                                        fontSize: 17,
                                                        color: AppColors
                                                            .primaryAppColor,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height: height * 0.075,
                                              padding: EdgeInsets.only(
                                                  left: width * 0.05),
                                              decoration: BoxDecoration(
                                                color: AppColors.whiteColor,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(20),
                                                ),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.1),
                                                    spreadRadius: 1,
                                                    blurRadius: 10,
                                                  ),
                                                ],
                                              ),
                                              child: Row(
                                                children: [
                                                  CircleAvatar(
                                                    radius: 17,
                                                    backgroundColor: Color(0XFFEEEEFF),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(50),
                                                        color: Color(0XFFEEEEFF),
                                                      ),
                                                      child: Image.asset(
                                                        ImageAssets.chatIcon,
                                                        height: height * 0.03,
                                                        width: width * 0.07,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:  EdgeInsets.only(left: width * 0.02),
                                                    child: Text(
                                                      'Chat',
                                                      style: TextStyle(
                                                        fontSize: 17,
                                                        color: AppColors
                                                            .primaryAppColor,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                                style: TextButton.styleFrom(
                                  minimumSize:
                                      Size(width * 0.45, height * 0.06),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  'Talk Now',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
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
