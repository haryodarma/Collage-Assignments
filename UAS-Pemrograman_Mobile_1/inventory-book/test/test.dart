import "dart:io";
import "package:bookcasier/bookself.dart";
import "package:bookcasier/fitur.dart";

void main() {
  List<BookSelf> book = [];
  bool loop = true;
  while (loop) {
    try {
      print('===================================');
      print('||        Chose The Menu         ||');
      print('===================================');
      print('|| 1. Add A Book                 ||');
      print('|| 2. Show All Book in Inventory ||');
      print('|| 3. Search Book by Tittle      ||');
      print('|| 4. Search Book by Stock       ||');
      print('|| 5. Remove The Book            ||');
      print('|| 0. Quit From Application      ||');
      print('===================================');
      stdout.write('Menu : ');
      var menu = int.parse(stdin.readLineSync()!);
      switch (menu) {
        case 1:
          //try {
          add(book);
          //  print('You Have Added The Book');
          //  } //catch (exception) {
          //print('-!!!-  Ada Kesalahan Ketika Input Data  -!!!-');
          //}
          break;
        case 2:
          //try {
          show(book);
          //} catch (exception) {
          //print('-!!!-  Ada Kesalahan Ketika Input Data  -!!!-');
          //}
          break;
        case 3:
          //try {
          sBTittle(book);
          //} catch (exception) {
          //print('-!!!-  Ada Kesalahan Ketika Input Data  -!!!-');
          //}
          break;
        case 4:
          //try {
          sBStock(book);
          //} catch (exception) {
          //print('-!!!-  Ada Kesalahan Ketika Input Data  -!!!-');
          //}
          break;
        case 5:
          //try {
          delete(book);
          //  print('You Have Remove The Book');
          //} catch (exception) {
          //print('-!!!-  Ada Kesalahan Ketika Input Data  -!!!-');
          //}
          break;
        case 0:
          loop = false;
          break;
      }
    } catch (exception) {
      print('-!!!-  Ada Kesalahan Ketika Input Data  -!!!-');
    }
  }
}
