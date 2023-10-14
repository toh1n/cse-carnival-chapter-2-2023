import 'package:flutter/material.dart';

class MyExpertCard extends StatelessWidget {
  final String name;
  final String imgUrl;
  final String status;
  final String? meetingLink;
  final String problemDescription;
  const MyExpertCard({super.key, required this.name, required this.imgUrl, required this.status, required this.problemDescription,  this.meetingLink});

  @override
  Widget build(BuildContext context) {

    return ListTile(
      leading: Image.network(
        imgUrl,height: 40,width: 40,fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Icon(Icons.person);
        },
      ),
      title: Text(name),
      subtitle: Text(
        "Status : $status"
      ),
      trailing: ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
          backgroundColor: status == "Pending"? Colors.black12 : Colors.green
        ),
        child: Text(status),
      ),
    );
  }
}
