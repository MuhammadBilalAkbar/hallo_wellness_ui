import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hallo_wellness_ui/res/assets/image_assets.dart';
import 'package:hallo_wellness_ui/res/colors/app_colors.dart';

class AgentProfileAgent extends StatefulWidget {
  const AgentProfileAgent({super.key});

  @override
  State<AgentProfileAgent> createState() => _AgentProfileAgentState();
}

class _AgentProfileAgentState extends State<AgentProfileAgent> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.05, vertical: height * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: width * 0.8),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.xmark,
                  size: 30,
                  color: AppColors.primaryAppColor,
                ),
              ),
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 35,
                  child: CircleAvatar(
                    radius: 34,
                    backgroundImage: AssetImage(ImageAssets.agentProfile),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: width * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mahesh Jain',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Row(
                        children: [
                          Text(
                            'Phone: ',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          Text(
                            'xxxxxxxx0797',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(height: height * 0.05),
            Text(
              'Settings',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Container(
              padding: EdgeInsets.only(top: height * 0.02),
              height: height * 0.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(0XFFEEEEFF),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0XFFEEEEFF),
                          ),
                          child: Image.asset(
                            ImageAssets.requestIcon,
                            height: height * 0.028,
                            width: width * 0.18,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.04),
                        child: Text(
                          'User Requests',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryAppColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(indent: width * 0.13),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(0XFFEEEEFF),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0XFFEEEEFF),
                          ),
                          child: Image.asset(
                            ImageAssets.sessionIcon,
                            height: height * 0.03,
                            width: width * 0.2,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.04),
                        child: Text(
                          'All Sessions',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryAppColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(indent: width * 0.13),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(0XFFEEEEFF),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0XFFEEEEFF),
                          ),
                          child: Image.asset(
                            ImageAssets.walletIcon,
                            height: height * 0.03,
                            width: width * 0.2,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.04),
                        child: Text(
                          'My Wallet',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryAppColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(indent: width * 0.13),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(0XFFEEEEFF),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0XFFEEEEFF),
                          ),
                          child: Image.asset(
                            ImageAssets.payoutIcon,
                            height: height * 0.03,
                            width: width * 0.2,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.04),
                        child: Text(
                          'Payouts',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryAppColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(indent: width * 0.13),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(0XFFEEEEFF),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0XFFEEEEFF),
                          ),
                          child: Image.asset(
                            ImageAssets.profileIcon,
                            height: height * 0.03,
                            width: width * 0.2,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.04),
                        child: Text(
                          'My Profile',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryAppColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.2),
              child: GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Transform.rotate(
                      angle: 9.42,
                      child: Icon(
                        Icons.logout,
                        color: Colors.red,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.03),
                      child: Text(
                        'Logout',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
