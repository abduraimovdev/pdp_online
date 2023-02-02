import 'package:pdp_online/database/person.dart';
import 'package:pdp_online/service/io.dart';
import 'education_model.dart';
class Select {

  // Student va Teacherlarni Tanlangan kursga qarab chiqarib beradi !
  void viewCourse(int techOrStudent) {
    print("\t\tOur of Courses");
    List<Course> courseList = Course.values;
    Map<int, Course> courceMap = {};
    int index = 1;
    for (var x in courseList) {
      print("$index - ${x.name}");
      courceMap[index] = x;
      index++;
    }
    io.write("Kursni Tanlang :");
    int number = io.number();
    if (courceMap.containsKey(number)) {
      selectedCource(techOrStudent, number, courceMap);
    } else {
      viewCourse(techOrStudent);
    }
  }

  void selectedCource(
      int techOrStudent, int index, Map<int, Course> courseMap) {
    if (techOrStudent == 1) {
      // Student view = 1
      print("\n\t\tStudents studying at ${courseMap[index]?.name}");
      for (var student in studentsData) {
        if (student.course == courseMap[index]) {
          print("${student.name}: ");
          print("Payment : ${student.payment}");
          print("Age : ${student.age} \n");
        }
      }
    } else if (techOrStudent == 2) {
      // Student view = 1
      print("\n\t\t Teachers working at ${courseMap[index]?.name}");
      for (var teacher in teachersData) {
        if (teacher.course == courseMap[index]) {
          print("Name : ${teacher.name}");
          print("Experience : ${teacher.experience}Year");
          print("Salary : ${teacher.salary}\$");
          print("Age : ${teacher.age} \n");
        }
      }
    }
  }
}