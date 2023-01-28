import 'package:note_projects/model/node_model.dart';
import 'package:note_projects/pages/main_pages.dart';

import '../service/io.dart';
class CreatePage {
  String theme = "";
  String text = "";
  CreatePage() {
    createPage();
  }

  void createPage() {
    print("\t\t New Note");
    io.printc("Mavzu :");
    String theme = io.text();
    io.printc("Text :");
    String text = io.text();
    this.theme = theme;
    this.text = text;
    save();
  }
  void save() {
    io.printc("Saqlansinmi ?:Y/N");
    String command = io.text();
    if(command.toLowerCase() == 'y') {
      print("\t\t Muvaffaqiyatli saqlandi !");
      Note.add(theme: theme, text: text);
      MainPage();
    }else if(command.toLowerCase() == 'n'){

      print("\t\t Saqlanmadi !");
      MainPage();
    }else {
      save();
    }
  }

}