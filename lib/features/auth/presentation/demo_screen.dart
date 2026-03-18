import 'package:flutter/material.dart';
import '../../../shared/widgets/custom_button.dart';
import '../../../shared/widgets/custom_textfield.dart';
import '../../../core/utils/spacing.dart';

class DemoScreen extends StatelessWidget {
  DemoScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              hint: "Enter Email",
              controller: emailController,
            ),
            AppSpacing.medium,
            CustomTextField(
              hint: "Enter Password",
              controller: passwordController,
            ),
            AppSpacing.large,
            CustomButton(
              text: "Login",
              onPressed: () {
                print("Email: ${emailController.text}");
                print("Password: ${passwordController.text}");
              },
            ),
          ],
        ),
      ),
    );
  }
}