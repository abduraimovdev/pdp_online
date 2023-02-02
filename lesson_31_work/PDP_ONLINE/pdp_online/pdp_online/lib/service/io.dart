import 'dart:io';
IOService io = IOService();
class IOService {

  void write(Object object) {
    stdout.write("$object");
  }
  int number() {
    String num = stdin.readLineSync().toString();
    return int.tryParse(num) ?? 0;
  }
  String text() {
    String text = stdin.readLineSync().toString();
    return text;
  }
}