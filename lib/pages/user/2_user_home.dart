import 'package:flutter/material.dart';
import 'package:hallo_wellness_ui/res/assets/image_assets.dart';
import 'package:hallo_wellness_ui/res/colors/app_colors.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
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

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: height * 0.05),
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
                          'Kanishk!',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: width * 0.02),
                      child: Icon(Icons.notifications_sharp),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.01),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '🔎 Search for experts, feelings',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.01),

              /// Recharge required State
              ///
              ///
              ///
              ///
              ///
              /// Recharge required State

              Container(
                padding: EdgeInsets.symmetric(
                    vertical: height * 0.02, horizontal: width * 0.06),
                margin: EdgeInsets.symmetric(horizontal: width * 0.02),
                decoration: BoxDecoration(
                  color: Color(0xfff6524b),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          ImageAssets.lowBalance,
                          height: 20,
                          width: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.03),
                          child: Text(
                            'Low Balance',
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          height: height * 0.03,
                          width: width * 0.2,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.whiteColor,
                              foregroundColor: Color(0xfff6524b),
                              textStyle: TextStyle(fontSize: 13),
                              padding: EdgeInsets.all(0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text('Recharge'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.01),
                    Text(
                      'Your Wallet balance less than ₹50. Please recharge with some amount to start conversation.',
                      style: TextStyle(
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.01),

              /// Component One ends here
              ///
              ///
              ///
              ///
              ///
              /// Component Two starts here

              Padding(
                padding: EdgeInsets.only(left: width * 0.02),
                child: Row(
                  children: [
                    Text(
                      'Available Listeners',
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
                padding:
                    EdgeInsets.only(right: width * 0.3, left: width * 0.02),
                child: Text(
                    'Choose your mood category and start talking to our experts'),
              ),
              SizedBox(height: height * 0.02),
              Padding(
                padding: EdgeInsets.only(left: width * 0.02),
                child: SizedBox(
                  height: height * 0.04,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(width: 8),
                    shrinkWrap: true,
                    itemCount: 6,
                    itemBuilder: (context, index) => OutlinedButton(
                      onPressed: () {},
                      child: Text(moodCategories[index]),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              Padding(
                padding: EdgeInsets.only(left: width * 0.02),
                child: SizedBox(
                  height: height * 0.35,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(width: 8),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) => Container(
                      width: width * 0.38,
                      decoration: BoxDecoration(
                        color: Color(0xfffff4d4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                right: width * 0.19, top: height * 0.01),
                            height: 20,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Color(0xff3a3a3a),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  ratings[index].toString(),
                                  style: TextStyle(
                                      color: Colors.amber, fontSize: 13),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 15,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: height * 0.005),
                          CircleAvatar(
                            backgroundImage:
                                AssetImage(ImageAssets.userProfile),
                            radius: 40,
                          ),
                          SizedBox(height: height * 0.005),
                          Text(
                            expertNames[index],
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Text(expertise[index]),
                          SizedBox(height: height * 0.005),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Talk Now'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),

              /// Component Two ends here
              ///
              ///
              ///
              ///
              ///
              /// Component Three starts here

              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                child: Container(
                  width: double.infinity,
                  height: height * 0.25,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xfffddef7),
                        Color(0xfffddff6),
                        Color(0xffecebdc),
                        Color(0xfffecebd),
                        Color(0xffff9f7f),
                      ],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: width * 0.05),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Upgrade to Plus\nPlan today',
                              // style: TextStyle(
                              //     fontWeight: FontWeight.w600, fontSize: 24),
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            Text('Explore the experts with ease'),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Upgrade Now'),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Image.asset(
                        ImageAssets.expertPreview,
                        height: height * 0.19,
                      ),
                    ],
                  ),
                ),
              ),

              /// Component 3 ends here
              ///
              ///
              ///
              ///
              ///
              /// Component 4 starts here

              Padding(
                padding: EdgeInsets.only(left: width * 0.02),
                child: Row(
                  children: [
                    Text(
                      'Connect with experts',
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
                padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                child: Text(
                    'Choose your mood category and start talking to our experts'),
              ),
              SizedBox(height: height * 0.01),
              Padding(
                  padding: EdgeInsets.only(left: width * 0.02),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: height * 0.1,
                            width: width * 0.47,
                            decoration: BoxDecoration(
                              color: Color(0xffe4eef5),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Image.asset(ImageAssets.anxiety,
                                      width: width * 0.08),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(
                                      'Anxiety',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: width * 0.02),
                          Container(
                            height: height * 0.1,
                            width: width * 0.47,
                            decoration: BoxDecoration(
                              color: Color(0xffdff1e4),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Image.asset(ImageAssets.stress,
                                      width: width * 0.08),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(
                                      'Stress',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.01),
                      Row(
                        children: [
                          Container(
                            height: height * 0.1,
                            width: width * 0.47,
                            decoration: BoxDecoration(
                              color: Color(0xfffbeedb),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Image.asset(ImageAssets.sleep,
                                      width: width * 0.08),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(
                                      'Sleep',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: width * 0.02),
                          Container(
                            height: height * 0.1,
                            width: width * 0.47,
                            decoration: BoxDecoration(
                              color: Color(0xffeae4f5),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Image.asset(ImageAssets.anger,
                                      width: width * 0.08),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(
                                      'Anger',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.01),
                      Row(
                        children: [
                          Container(
                            height: height * 0.1,
                            width: width * 0.47,
                            decoration: BoxDecoration(
                              color: Color(0xfff1f8e5),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Image.asset(ImageAssets.overthinking,
                                      width: width * 0.08),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(
                                      'Overthinking',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: width * 0.02),
                          Container(
                            height: height * 0.1,
                            width: width * 0.47,
                            decoration: BoxDecoration(
                              color: Color(0xffddfcfe),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Image.asset(ImageAssets.loneliness,
                                      width: width * 0.08),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(
                                      'Loneliness',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
              SizedBox(height: height * 0.02),

              /// Component 4 ends here
              ///
              ///
              ///
              ///
              ///
              /// Component 5 starts here

              Container(
                height: height * 0.25,
                color: AppColors.primaryAppColor,
                width: double.infinity,
                padding: EdgeInsets.only(left: width * 0.05),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        'Recently Contacted',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: ListView.separated(
                        separatorBuilder: (context, index) =>
                            SizedBox(width: width * 0.03),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) => Container(
                          color: AppColors.primaryAppColor,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 38,
                                backgroundColor: AppColors.whiteColor,
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage(ImageAssets.userProfile),
                                  radius: 35,
                                ),
                              ),
                              SizedBox(height: height * 0.005),
                              Text(
                                recentlyContacted[index],
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.whiteColor,
                                ),
                              ),
                              sessions[index] == 1
                                  ? Text(
                                      '${sessions[index]} session',
                                      style: TextStyle(
                                        color: AppColors.whiteColor,
                                      ),
                                    )
                                  : Text(
                                      '${sessions[index]} sessions',
                                      style: TextStyle(
                                        color: AppColors.whiteColor,
                                      ),
                                    ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.02),

              /// Component 5 ends here
              ///
              ///
              ///
              ///
              ///
              /// Component 6 starts here

              Flexible(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                  child: Container(
                    width: double.infinity,
                    height: height * 0.17,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xffaafbe3),
                          Color(0xffcaf4c6),
                          Color(0xffd8e9c0),
                          Color(0xffe6dfbc),
                          Color(0xffdde4be),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.05),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Talk to our AI Bot',
                                // style: TextStyle(
                                //     fontWeight: FontWeight.w600, fontSize: 24),
                                style: Theme.of(context).textTheme.headlineSmall,
                              ),
                              Text('Explore the experts with ease'),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text('Talk Now'),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Image.asset(
                          ImageAssets.aiBot,
                          height: height * 0.12,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),

              /// Component 6 ends here
              ///
              ///
              ///
              ///
              ///
              /// Component 7 starts here

              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                child: Text(
                  'Top Rated Listeners/Experts',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: height * 0.35,
                child: ListView.separated(
                  padding: EdgeInsets.only(top: width * 0.02, bottom: width * 0.05),
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.symmetric(horizontal: width * 0.02),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withAlpha((0.5 * 255).toInt()),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: ListTile(
                      leading: Stack(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                            AssetImage(ImageAssets.userProfile),
                            radius: 30,
                          ),
                          Positioned(
                            top: 36,
                            left: 11,
                            child: Container(
                              height: 20,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Color(0xff3a3a3a),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    ratings[index].toString(),
                                    style: TextStyle(
                                        color: Colors.amber, fontSize: 12),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 12,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      title: Text(expertNames[index]),
                      subtitle: Text(expertise[index]),
                      trailing: SizedBox(
                        width: width * 0.18,
                        height: height * 0.038,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            textStyle: TextStyle(fontSize: 12),
                            padding: EdgeInsets.all(0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          // style: Theme.of(context)
                          //     .elevatedButtonTheme
                          //     .style!
                          //     .copyWith(
                          //     ),
                          child: Text('Talk Now'),
                        ),
                      ),
                    ),
                  ),
                  separatorBuilder: (context, index) =>
                      SizedBox(height: height * 0.02),
                  itemCount: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
