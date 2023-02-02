void asosiy() {
  EducationCenter person = EducationCenter(Student.values, Teacher.values);
  print(person);
  person.c();
}


enum Teacher implements Comparable<Teacher> {
  sherzod,
  odil,
  diyor,
  karim;

  @override
  int compareTo(Teacher other) => name.length.compareTo(other.name.length);
}
enum Student {
  akmal,
  nodir,
  bobur,
  karim,
  anora;

  @override
  int compareTo(Teacher other) => name.length.compareTo(other.name.length);
}

class EducationCenter {

  List<Teacher> teachers;
  List<Student> students;

  EducationCenter(this.students, this.teachers);

  @override
  String toString() {
    return 'EducationCenter : \ntaechers: ${teachers.map((e) => e.name)},\nstudents: ${students.map((e) => e.name)}';
  }
  void c() {
    List<Teacher> teacher = teachers.toList();
    List<Student> student = students.toList();
    teacher.sort();
    student.sort();
    print('EducationCenter : \ntaechers: ${teacher.map((e) => e.name)},\nstudents: ${student.map((e) => e.name)}');
  }

}
