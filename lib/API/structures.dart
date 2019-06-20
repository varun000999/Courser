class Course {
  /* stores data of course

     purpose: to store and retrieve data related to course
     */

  int cid; // Unique id of courses
  String cname; // course name
  String uname; //user name
  String createdDate; //date of creation of course
  String desc; //description
  String type; //type of course
  String link; //link of course
  String platform; //platform providing course(like udemy,coursera)
  int upvCount; //no. of upvotes/likes on course
  int free; //represent boolean value free=1 and paid=0

  Course(int cid, String cname, String uname, String createdDate, String desc, 
        String type, String link, String platform, int upvCount, int free){
    this.cid =  cid;  // Unique id of courses
    this.cname =  cname;  // course name
    this.uname =  uname;  //user name
    this.createdDate = createdDate;  //date of creation of course
    this.desc =  desc;  //description
    this.type =  type;  //type of course
    this.link =  link;  //link of course
    this.platform =  platform;  //platform providing course(like udemy,coursera)
    this.upvCount =  upvCount;  //no. of upvotes/likes on course
    this.free =  free; //represent boolean value free=1 and paid=0
  }
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