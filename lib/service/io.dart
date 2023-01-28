import 'dart:io';

IOService io = IOService();

class IOService {
  String text() {
    return stdin.readLineSync().toString();
  }
  int number() {
    return int.tryParse(stdin.readLineSync().toString())?? 0;
  }
  void printc(Object object) {
    return stdout.write(object);
  }
}