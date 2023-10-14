import 'package:flutter/material.dart';
import 'package:reach_out/ui/widgets/user_widgets/notifications_card.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications",style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context,index){
        return const NotificationsCard(imgUrl: "imgUrl", userName: "userName", status: "status");
      }),
    );
  }
}
