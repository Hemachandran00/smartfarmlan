import 'package:flutter/material.dart';
import 'package:smartfarmland/utils/sign_in.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: CircleAvatar(
              radius: 60.0,
              backgroundImage: !(imageUrl==null)?NetworkImage(imageUrl):AssetImage("images/google_logo.png"),
            ),
          ),
          Text("Hemachandran V K"),
          Text("hemachandran1200@gmail.com")
        ],
      )
    );
  }
}
