import 'package:flutter/material.dart';
import 'package:uniclass/constants/colors.dart';
import 'package:uniclass/screens/home/widget/category_title.dart';

class ActiveCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        CategoryTitle('Currently active', 'view all'),
        Container(
          margin: EdgeInsets.all(25),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: kFontLight.withOpacity(0.1),
              border: Border.all(color: kFontLight.withOpacity(0.3), width: 1),
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset('assets/images/progress.png', width: 60),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Robotics',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: kFont),
                  ),
                  Text(
                    '4 lessons left',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: kFont),
                  )
                ],
              )
            ],
          ),
        )
      ],
    ));
  }
}
