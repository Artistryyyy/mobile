import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterdemo/components/custom_text_field.dart';
import 'package:flutterdemo/screens/homepage.dart';
import 'package:flutterdemo/styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Assets.instagramLogo,
              ),
              const SizedBox(height: 40),
              CustomTextField(
                labelText: 'Username',
                controller: usernameController,
              ),
              const SizedBox(height: 15),
              CustomTextField(
                labelText: 'Password',
                controller: passwordController,
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Homepage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: CustomColors.blue,
                  ),
                  child: Text(
                    'Log In',
                    style: TextStyles.titleText.copyWith(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
