class Course {
  String teacher;
  String teacherImg;
  String title;
  String imageUrl;

  Course(this.teacher, this.teacherImg, this.title, this.imageUrl);

  static List<Course> generateCourses() {
    return [
      Course('Meron Merry', 'assets/icons/avatar01.png', 'Database',
          'assets/images/course01.png'),
      Course('Melat Mel', 'assets/icons/avatar02.png', 'Database',
          'assets/images/course02.png'),
    ];
  }
}
