import 'package:flutter/material.dart';
import 'package:uniclass/constants/colors.dart';
import 'package:uniclass/screens/home/widget/active_course.dart';
import 'package:uniclass/screens/home/widget/emoji_text.dart';
import 'package:uniclass/screens/home/widget/feature_course.dart';
import 'package:uniclass/screens/home/widget/search_input.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            EmojiText(),
            SearchInput(),
            FeatureCourse(),
            ActiveCourse()
          ],
        ),
      ),
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    backgroundColor: kBackground,
    elevation: 0,
    centerTitle: false,
    title: Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Text("Hello User!",
          style: TextStyle(color: kFontLight, fontSize: 16)),
    ),
    actions: [
      Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, right: 20),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                border:
                    Border.all(color: kFontLight.withOpacity(0.3), width: 2),
                borderRadius: BorderRadius.circular(15)),
            child: Image.asset(
              'assets/icons/notification.png',
              width: 30,
            ),
          ),
          Positioned(
              top: 15,
              right: 30,
              child: Container(
                height: 8,
                width: 8,
                decoration:
                    BoxDecoration(color: kAccent, shape: BoxShape.circle),
              ))
        ],
      )
    ],
  );
}
