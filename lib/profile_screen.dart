import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(title: Text("Riya"), subtitle: Text("MCA")),

        ListTile(title: Text("Bipasha"), subtitle: Text("MCA")),

        ListTile(title: Text("Vanshika"), subtitle: Text("B.Tech")),
        ListTile(title: Text("Riya"), subtitle: Text("MCA")),

        ListTile(title: Text("Bipasha"), subtitle: Text("MCA")),

        ListTile(title: Text("Vanshika"), subtitle: Text("B.Tech")),
        ListTile(title: Text("Riya"), subtitle: Text("MCA")),

        ListTile(title: Text("Bipasha"), subtitle: Text("MCA")),

        ListTile(title: Text("Vanshika"), subtitle: Text("B.Tech")),
        ListTile(title: Text("Riya"), subtitle: Text("MCA")),

        ListTile(title: Text("Bipasha"), subtitle: Text("MCA")),

        ListTile(title: Text("Vanshika"), subtitle: Text("B.Tech")),

        ListTile(title: Text("Riya"), subtitle: Text("MCA")),

        ListTile(title: Text("Bipasha"), subtitle: Text("MCA")),

        ListTile(title: Text("Vanshika"), subtitle: Text("B.Tech")),
      ],
    );
  }
}
