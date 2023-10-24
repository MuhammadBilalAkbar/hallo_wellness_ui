import 'package:flutter/material.dart';
import 'package:hallo_wellness_ui/pages/user/2_user_home.dart';
import '/res/assets/image_assets.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: width * 0.03,
          right: width * 0.03,
          top: height * 0.1,
        ),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.6,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    ImageAssets.ellipse,
                    height: height * 0.9,
                    width: width * 0.9,
                  ),
                  Positioned(
                    top: height * 0.07,
                    child: Container(
                      height: height * 0.5,
                      width: width * 0.8,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.all(
                          Radius.elliptical(width * 1.1, height * 0.6),
                        ),
                        image: const DecorationImage(
                          image: AssetImage(ImageAssets.userProfile),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.01),
            const Text(
              'Welcome to Hallo',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
            ),
            SizedBox(height: height * 0.02),
            const Text(
              'Hallo signifies Talk, Mood and Emotions without judgement lorem.',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: height * 0.03),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const UserHome(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(200, 50),
              ),
              child: const Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}
