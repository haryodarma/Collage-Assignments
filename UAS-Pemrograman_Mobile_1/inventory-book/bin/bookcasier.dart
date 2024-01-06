import "dart:io";
import "package:bookcasier/bookself.dart";
import "package:bookcasier/fitur.dart";

void main() {
  List<BookSelf> book = [];
  bool loop = true;
  print('''


Inventory-Book.app
created by : Haryo Darma Putra & Baiq Fadilatul Islamiah
version    : 1.0.0

"You can access the source code on GitHub of ryo.dev or visit instagram of @ryodrma_"

''');
  while (loop) {
    try {
      print('===================================');
      print('||        Chose The Menu         ||');
      print('===================================');
      print('|| 1. Add A Book                 ||');
      print('|| 2. Show All Book in Inventory ||');
      print('|| 3. Update Stock               ||');
      print('|| 4. Remove The Book            ||');
      print('|| 5. Search Book by Tittle      ||');
      print('|| 6. Search Book by Stock       ||');
      print('|| 0. Quit From Application      ||');
      print('===================================');
      stdout.write('Menu : ');
      var menu = int.parse(stdin.readLineSync()!);
      switch (menu) {
        case 1:
          add(book); // Create
          break;
        case 2:
          show(book); // Read
          break;
        case 3:
          updateStock(book); // Update
          break;
        case 4:
          delete(book); // Delete
          break;
        case 5:
          sBTittle(book); // Extra Function : Search
          break;
        case 6:
          sBStock(book); // Extra Function : Search
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
