import 'package:pdp_online/database/person.dart';
import 'package:pdp_online/service/io.dart';

enum Course {
  flutter(name: "Flutter", price: "2 950 000", duration: "9 month"),
  java(name: "Java Backend", price: "2 950 000", duration: "10 month"),
  frontEnd(name: "Front End", price: "2 950 000", duration: "9 month");

  const Course(
      {required this.name, required this.price, required this.duration});

  final String name;
  final String price;
  final String duration;
}

// enum MyCourse extends Course {} : ERROR: enum ni ota sinf sifatida ishlatib bo'lmaydi
class Person implements Comparable<Person> {
  String name;
  Course course;
  int age;

  Person({required this.name, required this.course, required this.age});

  @override
  int compareTo(Person other) {
    return name.compareTo(other.name);
  }
}

class Teacher extends Person {
  String salary;
  int experience;

  Teacher({
    required super.name,
    required super.course,
    required super.age,
    required this.salary,
    required this.experience,
  });
}

class Student extends Person {
  String payment;

  Student({
    required super.name,
    required super.course,
    required super.age,
    required this.payment,
  });
}

class EducationCenter {
  List<Teacher> teachers = teachersData;
  List<Student> students = studentsData;

}
