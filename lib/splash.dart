import 'package:flutter/material.dart';

import 'package:neumorphism/view/page_controller.dart';


class MySplashApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Replace the 3 second delay with your initialization code:
      future: Future.delayed(Duration(seconds: 1)),
      builder: (context, AsyncSnapshot snapshot) {
        // Show splash screen while waiting for app resources to load:
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Splash();
         
        } else {
          // Loading is done, return the app:
          return pageControllerViewPage();
        }
      },
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //viewModel.buttonGetir();
    return Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
