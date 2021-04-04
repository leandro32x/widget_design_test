import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CourseCard extends StatelessWidget {
  final int numOfSections;
  final String courseTittle;
  final IconData courseIcon;
  final String courseVectorAsset;

  const CourseCard(
      {this.numOfSections,
      this.courseTittle,
      this.courseIcon,
      this.courseVectorAsset});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 18),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Card(
            elevation: 8.0,
            child: SizedBox(
              height: 220,
              width: 220,
              child: InkResponse(
                onTap: () {},
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Container(
                  alignment: Alignment.topLeft,
                  //36 padding at right, because card hav a default padding of 4
                  padding: EdgeInsets.only(left: 30, top: 30, right: 36),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFF3366FF),
                        const Color(0xFF00CCFF),
                      ],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(1.0, 0.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$numOfSections Sections',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        courseTittle,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35),
            ),
            color: Colors.blueAccent,
          ),
          Positioned(
            top: -10,
            right: 40,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Icon(
                courseIcon,
                size: 50,
                color: Colors.blue,
              ),
            ),
          ),
          Positioned(
              top: 120,
              right: 10,
              child: Container(
                alignment: Alignment.bottomLeft,
                child: SvgPicture.asset(
                  courseVectorAsset,
                  height: 100,
                  width: 100,
                ),
              ))
        ],
      ),
    );
  }
}
