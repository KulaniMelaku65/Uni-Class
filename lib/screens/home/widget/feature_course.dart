import 'package:flutter/material.dart';
import 'package:uniclass/models/course.dart';
import 'package:uniclass/screens/home/widget/course_item.dart';

import 'category_title.dart';

class FeatureCourse extends StatelessWidget {
  final courseList = Course.generateCourses();
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        CategoryTitle('Suggestions', 'View All'),
        Container(
          height: 300,
          child: ListView.separated(
            padding: EdgeInsets.all(25),
            scrollDirection: Axis.horizontal,
            itemCount: courseList.length,
            itemBuilder: (context, index) => CourseItem(courseList[index]),
            separatorBuilder: (context, index) => SizedBox(width: 15),
          ),
        )
      ],
    ));
  }
}
