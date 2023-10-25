import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hallo_wellness_ui/res/assets/image_assets.dart';
import 'package:hallo_wellness_ui/res/colors/app_colors.dart';

class AgentHome extends StatefulWidget {
  const AgentHome({super.key});

  @override
  State<AgentHome> createState() => _AgentHomeState();
}

final moodCategories = [
  'All',
  'Breakups',
  'Sadness',
  'Anxiety',
  'Tiredness',
  'Angerness',
];

final ratings = [4.8, 4.7, 4.5];
final expertNames = ['Kanchan Rai', 'Pragnesh Raat', 'Manisha'];
final expertise = ['Relationship Expert', 'Psychic Expert', 'Psychic Expert'];
final sessions = [2, 1, 3, 2, 2];
final recentlyContacted = [
  'Mahesh Jain',
  'Kiran D.',
  'Ekta Dixit',
  'Sucheta Rao',
  'Dippak M.'
];

final callTypes = [
  'Voice Call',
  'Video Call',
  'Chat',
];
final duration = ['02:30 Mins', '01:00 Mins', '05:00 Mins'];
final bill = [250, 100, 100];

class _AgentHomeState extends State<AgentHome> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: height * 0.06),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Component One starts here
              ///
              ///
              ///
              ///
              ///

              Padding(
                padding: EdgeInsets.only(left: width * 0.02),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: AppColors.primaryAppColor,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(ImageAssets.userProfile),
                        radius: 30,
                      ),
                    ),
                    SizedBox(width: width * 0.02),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Hello'),
                        Text(
                          'Mahesh Jain!',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Text(
                      'Online',
                      style: TextStyle(
                        color: Color(0XFF01964E),
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Switch(
                      value: true,
                      onChanged: (_) {},
                      activeTrackColor: Color(0XFF01964E),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          right: width * 0.02, left: width * 0.03),
                      child: Icon(Icons.notifications_sharp),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.02),

              /// Component One ends here
              ///
              ///
              ///
              ///
              ///
              /// Component Two starts here

              Container(
                padding: EdgeInsets.symmetric(
                    vertical: height * 0.02, horizontal: width * 0.06),
                margin: EdgeInsets.symmetric(horizontal: width * 0.02),
                decoration: BoxDecoration(
                  color: Color(0XFFADFF9F),
                  // color: Color(0XFFd7f2c5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Your', style: TextStyle(fontSize: 17)),
                        Spacer(),
                        Text(
                          'Total',
                          style: TextStyle(color: Color(0XFF729955)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Earnings',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Spacer(),
                        Text(
                          '₹',
                          style: TextStyle(
                            color: Color(0XFF729955),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          '10,250',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.01),

              /// Component two ends here
              ///
              ///
              ///
              ///
              ///
              /// Component three starts here

              Container(
                padding: EdgeInsets.symmetric(
                    vertical: height * 0.02, horizontal: width * 0.06),
                margin: EdgeInsets.symmetric(
                    horizontal: width * 0.02, vertical: height * 0.01),
                decoration: BoxDecoration(
                  color: AppColors.primaryAppColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(ImageAssets.iIcon, height: height * 0.023),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.025),
                          child: Text(
                            'Imp Announcement',
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Spacer(),
                        Icon(
                          CupertinoIcons.xmark,
                          color: Colors.white,
                          size: 20,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: height * 0.008, left: width * 0.06),
                      child: Text(
                        'Your app update description is a great way to highlight the mobile app enhancements and annoucements.',
                        style: TextStyle(color: AppColors.whiteColor),
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(height: height * 0.005),

              Padding(
                padding: EdgeInsets.only(left: width * 0.02),
                child: Row(
                  children: [
                    Text(
                      'Users` Requests',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: width * 0.02),
                      child: TextButton(
                        onPressed: () {},
                        child: Text('View All'),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.02),
                child: SizedBox(
                  height: height * 0.15,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(width: 15),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) => Container(
                      width: width * 0.58,
                      padding: EdgeInsets.symmetric(
                          // vertical: height *0.015,
                          horizontal: width * 0.035),
                      decoration: BoxDecoration(
                        color: Color(0XFFFAF4D7),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Color(0XFFEFE6BA)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage(ImageAssets.userProfile),
                                radius: 30,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: width * 0.03),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(expertNames[index]),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.videocam_rounded,
                                          color: Color(0XFF92864F),
                                          size: 25,
                                        ),
                                        Text(
                                          'Video Call Req.',
                                          style: TextStyle(
                                            color: Color(0XFF92864F),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.005),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  minimumSize:
                                      Size(width * 0.2, height * 0.035),
                                ),
                                child: Text('Accept'),
                              ),
                              OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  side:
                                      BorderSide(width: 1.0, color: Colors.red),
                                  minimumSize:
                                      Size(width * 0.2, height * 0.035),
                                ),
                                child: Text(
                                  'Decline',
                                  style: TextStyle(color: Colors.red),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),

              /// Component three ends here
              ///
              ///
              ///
              ///
              /// Component four starts here

              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                child: Container(
                  width: double.infinity,
                  height: height * 0.12,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffCBEDF8),
                        Color(0xffD2F3B7),
                        Color(0xffFFFCB7),
                      ],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Issues with Payments?',
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Contact Support'),
                            ),
                          ],
                        ),
                        Spacer(),
                        Image.asset(
                          ImageAssets.rupeeWalletIssue,
                          height: height * 0.11,
                          // width: width * 0.25,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),

              /// Component four ends here
              ///
              ///
              ///
              ///
              ///
              /// Component five starts here

              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                child: Text(
                  'Recent Sessions',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              ListView.separated(
                // reverse: true,
                shrinkWrap: true,
                padding: EdgeInsets.only(top: height * 0.02),
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: width * 0.02),
                  padding: EdgeInsets.symmetric(
                    // horizontal: width * 0.04,
                    vertical: height * 0.015,
                  ),
                  // height: height * 0.08,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0.1,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(ImageAssets.userProfile),
                        radius: 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            expertNames[index],
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          DefaultTextStyle(
                            style: TextStyle(color: Colors.grey),
                            child: Row(
                              children: [
                                Text(callTypes[index]),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width * 0.02),
                                  child: Icon(
                                    Icons.circle,
                                    color: Colors.grey,
                                    size: 7,
                                  ),
                                ),
                                Text(duration[index]),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width * 0.02),
                                  child: Icon(
                                    Icons.circle,
                                    color: Colors.grey,
                                    size: 7,
                                  ),
                                ),
                                Text('₹${bill[index]}'),
                              ],
                            ),
                          )
                        ],
                      ),
                      // Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text('Details'),
                      ),
                    ],
                  ),
                ),
                separatorBuilder: (context, index) =>
                    SizedBox(height: height * 0.02),
                itemCount: 3,
              ),

              /// Component five ends here
              ///
              ///
              ///
              ///
              ///
              ///
              /// Last (six) component starts here

              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.02, vertical: height * 0.015),
                // margin: EdgeInsets.symmetric(
                //     horizontal: width * 0.02, vertical: height * 0.02),
                child: Text(
                  'News and Updates',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.03, vertical: height * 0.02),
                margin: EdgeInsets.only(left: width * 0.03, right: width * 0.03, bottom: height * 0.025),

                decoration: BoxDecoration(
                  color: Color(0xffF6F6F6),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(ImageAssets.triImage, width: width * 0.03),
                        Padding(
                          padding:  EdgeInsets.only(left:  width * 0.03),
                          child: Text('Payment Cycle', style: Theme.of(context).textTheme.titleMedium),
                        ),
                        Spacer(),
                        Text('Added on: ', style: TextStyle(color: Colors.grey),),
                        Text('11 Oct`23'),
                      ],
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left:  width * 0.06,),
                      child: Text(
                        'There would be changes in the payment cycle, instead of weekly sending out payments, we would send out payments every 15 days, please fill out the following form if you have a problem with this decision',
                      ),
                    ),
                    Divider(indent: 27),


                    Row(
                      children: [
                        Image.asset(ImageAssets.triImage, width: width * 0.03),
                        Padding(
                          padding:  EdgeInsets.only(left:  width * 0.03),
                          child: Text('User Report issues', style: Theme.of(context).textTheme.titleMedium),
                        ),
                        Spacer(),
                        Text('Added on: ', style: TextStyle(color: Colors.grey),),
                        Text('11 Oct`23'),
                      ],
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left:  width * 0.06,),
                      child: Text(
                        'There would be changes in the payment cycle, instead of weekly sending out payment.',
                      ),
                    ),
                    Divider(indent: 27),
                    Row(
                      children: [
                        Image.asset(ImageAssets.triImage, width: width * 0.03),
                        Padding(
                          padding:  EdgeInsets.only(left:  width * 0.03),
                          child: Text('Provide your GST', style: Theme.of(context).textTheme.titleMedium),
                        ),
                        Spacer(),
                        Text('Added on: ', style: TextStyle(color: Colors.grey),),
                        Text('11 Oct`23'),
                      ],
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left:  width * 0.06),
                      child: Text(
                        'Please fill out the following form if you have a problem with this decision. Please fill out the following form if you have a problem with this decision.',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
