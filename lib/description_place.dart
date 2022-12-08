import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DescriptionPlace extends StatelessWidget{
  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context){
    final description = Container(
      margin: const EdgeInsets.only(
        top: 21.0,
        right: 50.0,
        left: 27.0,
      ),
      child: Text(descriptionPlace,
        textAlign: TextAlign.justify,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a),
        ),
      ),
    );

    star(int iconType) => Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        iconType == 1 ? Icons.star : iconType == 2 ? Icons.star_half : Icons.star_border,
        color: const Color(0xFFf2C611),
      ),
    );

    final title_stars = Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                top: 320.0,
                left: 20.0,
                right: 20.0,
              ),
              child: Text(
                namePlace,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Row(
              children: <Widget>[
                star(1),
                star(1),
                star(1),
                star(1),
                star(1),
                star(2),
              ],
            ),
          ],
        ),
        description,
      ],
    );
    return title_stars;
  }
}