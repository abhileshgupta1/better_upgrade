

class CoursesResponse {
  int success;
  String msg;
  List<Course> courses;
  int page;
  int totalPage;
  int totalRecord;

  CoursesResponse(
      {this.success,
      this.msg,
      this.courses,
      this.page,
      this.totalPage,
      this.totalRecord});

  CoursesResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    msg = json['msg'];
    if (json['courses'] != null) {
      courses = new List<Course>();
      json['courses'].forEach((v) {
        courses.add(new Course.fromJson(v));
      });
    }
    page = json['page'];
    totalPage = json['total_page'];
    totalRecord = json['total_record'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['msg'] = this.msg;
    if (this.courses != null) {
      data['courses'] = this.courses.map((v) => v.toJson()).toList();
    }
    data['page'] = this.page;
    data['total_page'] = this.totalPage;
    data['total_record'] = this.totalRecord;
    return data;
  }
}

class Course {
  String courseId;
  String courseName;
  String image;
  String description;
  int rating;
  String price;
  int moduleCount;
  int quizCount;
  int videoCount;
  int arCount;
  int interViewCount;
  String duration;
  String studentsEnrolled;
  String formatedDuration;

  Course(
      {this.courseId,
      this.courseName,
      this.image,
      this.description,
      this.rating,
      this.price,
      this.moduleCount,
      this.quizCount,
      this.videoCount,
      this.arCount,
      this.interViewCount,
      this.duration,
      this.studentsEnrolled,
      this.formatedDuration});

  Course.fromJson(Map<String, dynamic> json) {
    courseId = json['course_id'];
    courseName = json['course_name'];
    image = json['image'];
    description = json['description'];
    rating = json['rating'];
    price = json['price'];
    moduleCount = json['moduleCount'];
    quizCount = json['quizCount'];
    videoCount = json['videoCount'];
    arCount = json['arCount'];
    interViewCount = json['interViewCount'];
    duration = json['duration'];
    studentsEnrolled = json['students_enrolled'];
    formatedDuration = json['formated_duration'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['course_id'] = this.courseId;
    data['course_name'] = this.courseName;
    data['image'] = this.image;
    data['description'] = this.description;
    data['rating'] = this.rating;
    data['price'] = this.price;
    data['moduleCount'] = this.moduleCount;
    data['quizCount'] = this.quizCount;
    data['videoCount'] = this.videoCount;
    data['arCount'] = this.arCount;
    data['interViewCount'] = this.interViewCount;
    data['duration'] = this.duration;
    data['students_enrolled'] = this.studentsEnrolled;
    data['formated_duration'] = this.formatedDuration;
    return data;
  }
}