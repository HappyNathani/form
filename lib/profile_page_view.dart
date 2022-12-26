import 'package:flutter/material.dart';

class ProfilePageView extends StatelessWidget {
  const ProfilePageView({super.key, required this.profileData});

  final Map profileData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile Page",
        ),
      ),
      body: Text(profileData.toString()),
    );
  }
}
