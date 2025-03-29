// New Profile Content
import 'package:flutter/material.dart';
import 'package:mvvm_app/res/constants/color_constants.dart';
import 'package:mvvm_app/res/widgets/styled_text.dart';
import 'package:mvvm_app/viewModel/user_view_model.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileContentState();
}

class _ProfileContentState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final userViewModel = Provider.of<UserViewModel>(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.person, size: 80),
          const SizedBox(height: 20),
          StyledText(
            text: 'No email found',
            color: ColorConstants.textBlackColor,
            fontSize: 18,
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Add profile edit functionality
            },
            child: const Text('Edit Profile'),
          ),
        ],
      ),
    );
  }
}
