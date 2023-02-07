import 'package:flutter/material.dart';

import 'package:globesisters/widgets/profile_info_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  final String avatarPlaceholderUrl =
      'https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250';
  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(255, 230, 231, 228),
        alignment: Alignment.center,
        child: SingleChildScrollView(
            padding: const EdgeInsets.all(12),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              CircleAvatar(
                  backgroundImage: NetworkImage(avatarPlaceholderUrl),
                  radius: 100),
              const ProfileInfoCard(label: 'First Name', content: 'Gabriel'),
              const ProfileInfoCard(label: 'Last Name', content: 'Alao'),
              const ProfileInfoCard(label: 'Age', content: '37'),
              const ProfileInfoCard(label: 'Gender', content: 'Male'),
              const ProfileInfoCard(label: 'Height', content: '180 cm')
            ])));
  }
}
