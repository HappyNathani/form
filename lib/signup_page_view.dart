import 'package:flutter/material.dart';
import 'package:form/profile_page_view.dart';

class SignupPageView extends StatefulWidget {
  const SignupPageView({super.key});

  @override
  State<SignupPageView> createState() => _SignupPageViewState();
}

class _SignupPageViewState extends State<SignupPageView> {
  TextEditingController nameController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Name",
                  ),
                  keyboardType: TextInputType.name,
                  controller: nameController,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Mobile Number",
                  ),
                  keyboardType: TextInputType.number,
                  controller: mobileNumberController,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Email",
                  ),
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Password",
                  ),
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  controller: passwordController,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Confirm Password",
                  ),
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  controller: confirmPasswordController,
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfilePageView(profileData: {
                          "name": nameController.text,
                          "mobileNumber": mobileNumberController.text,
                          "email": emailController.text,
                        }),
                      ),
                    );
                  },
                  icon: const Icon(Icons.keyboard_arrow_right),
                  label: const Text("Sign Up"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
