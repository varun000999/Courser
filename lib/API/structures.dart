class Course {
  int cid;
  String cname;
  int uid;
  String createdDate;
  String desc;
  String type;
  String link;
  String platform;
  int upvCount;
  int free;
}

class CourseReview {
  int cid;
  String uname;
  String review;
}

class User {
  int uid;
  String uname;
  String doj;
  List<int> addedCourses;
  List<int> upvotedCourses;
  List<int> reviewedCourses;
  String interest1;
  String interest2;
  String interest3;
}