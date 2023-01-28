import 'package:note_projects/pages/create_page.dart';
import 'package:note_projects/pages/view_note.dart';

import '../service/io.dart';
class MainPage {
  MainPage(){
    mainPage();
  }

  void mainPage() {
    print("-----------------------------------------------------------------");
    print("\t\t\t\t Welcome to Note");
    print("1 - Creat Note");
    print("2 - View Note");
    print("3 - Exit");
    int command = io.number().toInt();
    if(command == 1){
      print("-----------------------------------------------------------------");
      CreatePage();
    } else if(command == 2){
      print("-----------------------------------------------------------------");
      ViewNotes();
    } else if(command == 3){
      return;
    } else {
      mainPage();
    }
  }

}