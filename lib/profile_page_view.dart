import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 150,
              width: 150,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.blue[100]),
              child: const Icon(
                Icons.person,
                size: 100,
                color: Colors.blue,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Profile",
              style: GoogleFonts.libreBaskerville(
                fontSize: 30,
                color: Colors.blue,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(25),
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue[100],
              ),
              child: Column(
                children: [
                  Text(
                    "Name: ${profileData["name"]}",
                    style: const TextStyle(fontSize: 18),
                  ),
                  const Divider(
                    color: Colors.blue,
                  ),
                  Text(
                    "Mobile No: ${profileData["mobileNumber"]}",
                    style: const TextStyle(fontSize: 18),
                  ),
                  const Divider(color: Colors.blue),
                  Flexible(
                    child: Text(
                      "Email: ${profileData["email"]}",
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                  const Divider(color: Colors.blue),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
