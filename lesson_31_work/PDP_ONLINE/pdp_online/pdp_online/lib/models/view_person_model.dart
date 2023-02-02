import 'package:pdp_online/database/person.dart';

import 'education_model.dart';

PersonModel view = PersonModel();

class PersonModel {
  //Sortlash uchun method yokida Studentlarni ekranga chiqarish uchun !
  void viewStudent({String sort = " "}) {
    print("\t\tStudents:");
    List<Student> sortStudent = studentsData;
    if (sort == "a") {
      // A_Z gacha buganlarni taxlidi
      sortStudent.sort((a, b) => a.name.compareTo(b.name));
    } else if (sort == "z") {
      // Z_A gacha buganlarni taxlidi
      sortStudent.sort((a, b) => b.name.compareTo(a.name));
    } else if (sort == "age") {
      //Yosh buyicha taxlidi !
      sortStudent.sort((a, b) => a.age.compareTo(b.age));
    }
    for (var e in sortStudent) {
      print("\n${e.name} : ${e.course.name} : ${e.age}");
    }
  }

  //Teacherlarni chiqarish uchun Method !
  void viewTeacher() {
    print("\t\tTeachers:");
    print(studentsData.map((e) => "\n${e.name} : ${e.course.name}"));
  }

  //Teacherlarni 500 dollordan kam oyliklarini chiqarib beradi !
  void viewSolaryLess() {
    print("\t\tTeachers 500\$ Less\n");
    List<Teacher> less =
    teachersData.where((e) => (int.tryParse(e.salary)! <= 500)).toList();
    for (var e in less) {
      print("${e.name} : ${e.salary}\$ Cource : ${e.course.name}");
    }
  }

  //Teacherlarni 500 dollordan kopini chiqarib beradi !
  void viewSolaryOver() {
    print("\t\tTeachers 500\$ Over\n");
    List<Teacher> less =
    teachersData.where((e) => (int.tryParse(e.salary)! >= 500)).toList();
    for (var e in less) {
      print("${e.name} : ${e.salary}\$ Cource : ${e.course.name}");
    }
  }

  // To'lov qilgan Studentlarni Ko'rsatadi !

  void viewPayStudent() {
    print("\t\tNot Paid students\n");
    List<Student> less =
    studentsData.where((e) => e.payment == "to'lanmadi").toList();
    for (var e in less) {
      print(
          "${e.name} : \nCource : ${e.course.name} \nPayment : ${e.course.price}\n");
    }
  }
}