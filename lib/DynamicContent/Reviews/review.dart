import 'package:flutter/material.dart';
import 'package:paris_trips/Utilities/Ratings/rating_stars.dart';
import 'package:paris_trips/Utilities/Ratings/star.dart';

class Review extends StatelessWidget{
  String imagePath = '';
  String userNameStr = '';
  String details = "";
  String comment = "";

  Review(this.imagePath, this.userNameStr, this.details, this.comment, {super.key});

  @override
  Widget build(BuildContext context) {

    final userComment = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 13.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    final userInfo = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 13.0,
          fontFamily: "Lato",
          color: Color(0xFFa3a5a7)
        ),
      ),
    );

    final userName = Container(
      margin: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        userNameStr,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 7.0,
          fontFamily: "Lato",
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        Row(
          children: <Widget>[
            userInfo,
            RatingStar(<Star>[
                Star(StarStatus.filled),
                Star(StarStatus.filled),
                Star(StarStatus.filled),
                Star(StarStatus.half),
                Star(StarStatus.empty),
              ]
            )
          ],
        ),
        userComment,
      ],
    );

    final photo = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(imagePath),
        ),
      ),
    );

    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );
  }
}

