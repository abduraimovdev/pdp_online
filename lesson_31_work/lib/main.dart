void main() {
  Line oper = Line(x: 11, y: 12);
  Line.nuqta(text: ".    . ");
  print(oper + oper);

}


class Line implements Comparable<Line> {
  int x;
  int y;
  int length;
  static final meterPearSantimeter = 100;
  Line({this.length = 0, this.y = 0, this.x = 0});


  static void nuqta({required String text}) => print(text.trim().length -2);


  @override
  String toString() {
    return 'Line{length: $length}';
  }



  @override
  int get hashCode => length.hashCode;


  @override
  dynamic noSuchMethod(Invocation invocation) => print("Xatolik : ${invocation.namedArguments}");


  @override
  int compareTo(Line other) {
    return length.compareTo(other.length);
  }

  // todo: ertaga darsda copy with ni tushuntirib beraman ustozga
  Line copyWith({length}) => Line(length: length ?? this.length);


  Line operator + (Line other) => Line(x: x + other.x, y: y + other.y);
  Line operator - (Line other) => Line(x: x - other.x, y: y - other.y);
  Line operator * (Line other) => Line(x: x * other.x, y: y * other.y);
  Line operator / (Line other) => Line(x: x ~/ other.x, y: y ~/ other.y);
  Line operator ~/ (Line other) => Line(x: x ~/ other.x, y: y ~/ other.y);
  Line operator % (Line other) => Line(x: x % other.x, y: y % other.y);
  bool operator > (Line other) => x + y > (other.x + other.y);
  bool operator < (Line other) => x + y < (other.x + other.y);

  @override
  bool operator ==(Object other) => identical(this, other) || other is Line && length == other.length;

  int operator [] (int index) {
    if(index == 0) {
      return x;
    } else if(index == 1) {
      return y;
    } else {
      throw Exception("Invalid index. Index will be 0 or 1.");
    }
  }

  void operator []= (int index, int value) {
    if(index == 0) {
      x = value;
    } else if(index == 1) {
      y = value;
    } else {
      throw Exception("Invalid index. Index will be 0 or 1.");
    }
  }
}