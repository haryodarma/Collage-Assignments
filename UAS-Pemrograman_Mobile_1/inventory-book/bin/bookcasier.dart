import "dart:io";
import "package:bookcasier/bookself.dart";
import "package:bookcasier/fitur.dart";

void main() {
  List<BookSelf> book = [];
  bool loop = true;
  print('''
Inventory-Book.app
created by : Haryo Darma Putra
version    : 1.0.0


''');
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
      print('|| 6. Update Stock               ||');
      print('|| 0. Quit From Application      ||');
      print('===================================');
      stdout.write('Menu : ');
      var menu = int.parse(stdin.readLineSync()!);
      switch (menu) {
        case 1:
          add(book);
          break;
        case 2:
          show(book);
          break;
        case 3:
          sBTittle(book);
          break;
        case 4:
          sBStock(book);
          break;
        case 5:
          delete(book);
          break;
        case 6:
          updateStock(book);
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
