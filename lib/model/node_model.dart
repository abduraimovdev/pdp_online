import '../database/notes.dart';
class Note {
  int? id;
  String? theme;
  String? text;

  Note(this.id, this.theme, this.text);

  Note.add({String theme = "Theme none", String text = "Text none"}) {
    this.id = (getLastId() + 1);
    this.theme = theme;
    this.text = text;
    adding();
  }
  Note.update({required int id, String theme = "Theme none", String text = "Text none"}) {
    this.id = id;
    this.theme = theme;
    this.text = text;
    updateing(id);
  }
  Note.delete({required int id}){
    deleting(id);
  }

  void updateing(int updateId) {
    notes[id!] = [theme!, text!];
    print("\t\t Muvaffaqiyatli Yangilandi !");
  }

  void adding() {
    notes[id!] = [theme! , text!];
  }

  void deleting(int deleteId) {
    notes.remove(deleteId);
    print("Muvaffaqiyatli uchirildi !");
  }

  int getLastId() {
    int? ids;
    for (var noteID in notes.keys) ids = noteID;
    return ids ?? 0;
  }
}
