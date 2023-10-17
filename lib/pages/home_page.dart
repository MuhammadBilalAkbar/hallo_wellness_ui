import 'package:flutter/material.dart';
import '/res/assets/image_assets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 300,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    // border: Border.all(color: Colors.black, width: 0.0),
                    borderRadius: const BorderRadius.all(
                      Radius.elliptical(700, 600),
                    ),
                  ),
                ),
                Container(
                  height: 400,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: const BorderRadius.all(
                      Radius.elliptical(500, 600),
                    ),
                    image: const DecorationImage(
                      image: AssetImage(ImageAssets.profileImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            const Text(
              'Welcome to Hallo',
              style: TextStyle(
                fontFamily: 'Matter',
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Hallo signifies Talk, Mood and Emotions without judgement lorem.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}
