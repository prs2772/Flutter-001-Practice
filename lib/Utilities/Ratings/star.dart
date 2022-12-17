import 'package:flutter/material.dart';

enum StarStatus{
  filled,
  half,
  empty
}

class Star extends StatelessWidget {
  //Variables
  StarStatus status = StarStatus.empty;
  Color colorStar = const Color(0xFFf2C611);
  double marginTop = 323.0;
  double marginRight = 3.0;

  //Builders
  Star(this.status, {super.key});
  Star.color(this.status, this.colorStar, {super.key});
  Star.positions(this.status, this.marginTop, this.marginRight, {super.key});
  Star.colorPositions(this.status, this.colorStar, this.marginTop, this.marginRight, {super.key});

  //Star
  @override
  Widget build(BuildContext context){
    final star = Container(
      margin: EdgeInsets.only(
        top: marginTop,
        right: marginRight,
      ),
      child: Icon(
        identical(status, StarStatus.filled) ? Icons.star :
        identical(status, StarStatus.half) ? Icons.star_half :
        identical(status, StarStatus.empty) ? Icons.star_border : Icons.star_border,
        color: colorStar,
      ),
    );

    return star;
  }
}


