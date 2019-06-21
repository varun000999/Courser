class Course {
  int cid; // Unique id of courses
  String cname;
  String uname;
  String createdDate;
  String desc;
  String type;
  String link;
  String platform;
  int _upvCount;
  int free;

  Course(int cid, String cname, String uname, String createdDate, String desc, 
        String type, String link, String platform, int upvCount, int free){
    this.cid =  cid;
    this.cname =  cname;
    this.uname =  uname;
    this.createdDate = createdDate;
    this.desc =  desc;
    this.type =  type;
    this.link =  link;
    this.platform =  platform;
    this._upvCount =  _upvCount;
    this.free =  free;     
  }

  int getUpv(){
    return _upvCount;
  }
}

class CourseReview {
  int cid;
  String uname;
  String review;
}

class User {
  int _uid;
  String uname;
  String _doj;
  List<int> addedCourses;
  List<int> upvotedCourses;
  List<int> reviewedCourses;
  String interest1;
  String interest2;
  String interest3;
}