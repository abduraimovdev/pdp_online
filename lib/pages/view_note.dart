import 'package:note_projects/model/node_model.dart';
import 'package:note_projects/pages/main_pages.dart';
import '../database/notes.dart';
import '../service/io.dart';
class ViewNotes {
  ViewNotes() {
    view();
  }


  void view() {
    print("\t\t\tNotelar:");
    for(var note in notes.entries){
      print("${note.key} - ${note.value[0]}");
    }
    print("\t\t Tanlang !");
    io.printc("Id :");
    int index = io.number();
    if(notes.containsKey(index)){
      select(index);
    }else{
      print("\t\tXato id kiritildi !");
      view();
    }

  }

  void select(int id) {
    String txt = "";
    String tema = "";
    for(var n in notes.entries){
      if(n.key == id) {
        tema = n.value[0];
        txt = n.value[1];
      }
    }
    print("----------------------------------------------------------------------");
    print("Selected Note : $tema");
    print("Text : $txt");
    print("1 - Delete Note");
    print("2 - Update Note");
    print("3 - Back");
    io.printc("command :");
    int command = io.number();
    if(command == 1) {
      delete(id);
    }else if(command == 2) {
      update(id);
    }else if(command == 3) {
      MainPage();
    }else {
      select(id);
    }
  }

  void delete(int id) {
    io.printc("O'chirishni xoxlaysizmi (Y/N):");
    String yn = io.text();
    if(yn.toLowerCase() == "y") {
      print("\t\t Muvaffaqiyatli O'chirildi !");
      Note.delete(id: id);
      MainPage();
    }else if(yn.toLowerCase() == "n") {
      print("O'chirilmadi !");
      MainPage();
    }else {
      delete(id);
    }
  }
  void update(int id) {
    print("----------------------------------------------");
    io.printc("Thema for Update :");
    String theme = io.text();
    io.printc("Text for Text :");
    String text = io.text();
    updating(id, theme, text);
  }
  void updating(int id, String theme, String text) {
    io.printc("O'zgaritirilsinmi ? (Y/N):");
    String command = io.text();
    if(command.toLowerCase() == "y") {
      Note.update(id: id, theme: theme, text: text);
      print("\t\t O'zgartirildi ! ");
      print("Theme :$theme");
      print("Text :$text");
      MainPage();
    }else if(command.toLowerCase() == "n") {
      print("\t\tO'zgartirilmadi !");
      MainPage();
    }else {
      updating(id, theme, text);
    }
  }


}