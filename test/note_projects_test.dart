// void main() {
//   print(Vector(12 , 11) < Vector(15, 13));
// }
// class Vector {
//   int x;
//   int y;
//   Vector(this.x, this.y);
//   bool operator > (Vector other) {
//     return other is Vector && x + y > other.x + other.y && x + y > other.x + other.y;
//   }
//   bool operator < (Vector other) {
//     return other is Vector && x + y < other.x + other.y && x + y < other.x + other.y;
//   }
// }
// void main() {
//   const Category p1 = Category(id: 1, name: "Suv", color: "Oq", price: 2000);
//   print(p1);
//   final Category p2 = p1.copyWith(id: 2, price: 3000);
//   print(p2);
// }

//
// class Category {
//   final int id;
//   final String name;
//   final String color;
//   final int price;
//
//   const Category({required this.id, required this.name, required this.color , required this.price});
//
//   Category copyWith({int? id, String? name, String? color, int? price}) => Category(
//         id: id ?? this.id,
//         name: name ?? this.name,
//         color: color ?? this.color,
//         price: price ?? this.price,
//       );
//
//   @override
//   String toString() {
//     return 'Category{id: $id, name: $name, color: $color, price: $price}';
//   }
// }




















//
// void main() {
//   Student aziz = Student(17, "Aziz", "Oq", "Male");
//   print(aziz);
//   aziz.drinking();
// }
//
//
//
// class Student {
//   int age;
//   String name;
//   String color;
//   String gender;
//
//   Student(this.age, this.name, this.color, this.gender);
//
//   @override
//   String toString() {
//     return ' name: $name,\nage: $age,\ncolor: $color,\ngender: $gender';
//   }
//
//   void eating() => print('$name can eat more');
//   void drinking() => print('$name can drink more');
//   void running() => print('$name can run more');
// }




void main() {
  String str = "987-123-4567";
  ValidPhone phone = ValidPhone(str);
  phone.isValid();
}
class ValidPhone {
  String str;

  ValidPhone(this.str);

  void isValid() {
    var regex = RegExp(r "[1-9]{3})?-?[1-9]{3}-[1-9]{3}");
    print(regex.hasMatch(str));
  }
}