import "dart:io";
import "package:bookcasier/bookself.dart";

void add(List<BookSelf> book) {
  BookSelf bs = BookSelf();
  stdout.write('Input The Tittle : ');
  bs.tittle = stdin.readLineSync()!;
  stdout.write('Input The Writer : ');
  bs.writer = stdin.readLineSync()!;
  stdout.write('Input The Stock  : ');
  bs.stock = int.parse(stdin.readLineSync()!);
  for(var value in book){
if(value.tittle == bs)
  book.add(bs);
  }
}

void show(List<BookSelf> book) {
  print('===============================');
  print('||   All Book in Inventory   ||');
  print('===============================');
  int i = 1;
  for (var value in book) {
    print(
        '$i. Tittle = ${value.tittle}\n   Writer = ${value.writer}\n   Stock  = ${value.stock}\n\t\t -');
    i += 1;
  }
  print('===============================');
  print('');
}

void sBTittle(List<BookSelf> book) {
  stdout.write('Search By Name : ');
  var search = stdin.readLineSync()!;
  print('===============================');
  print('||   All Book in Inventory   ||');
  print('===============================');
  int i = 1;
  for (var value in book) {
    if (value.tittle == search) {
      print(
          '$i. Tittle = ${value.tittle}\n   Writer = ${value.writer}\n   Stock  = ${value.stock}\n\t\t -');
      i++;
    }
  }
  print('===============================');
  print('');
}

void sBStock(List<BookSelf> book) {
  stdout.write('Search By Stock : ');
  int search = int.parse(stdin.readLineSync()!);
  print('===============================');
  print('||   All Book in Inventory   ||');
  print('===============================');
  int i = 1;
  for (var value in book) {
    if (value.stock == search) {
      print(
          '$i. Tittle = ${value.tittle}\n   Writer = ${value.writer}\n   Stock  = ${value.stock}\n\t\t -');
      i++;
    }
  }
  print('===============================');
  print('');
}

void delete(List<BookSelf> book) {
  stdout.write('Remove By Number : ');
  int rm = int.parse(stdin.readLineSync()!);
  book.removeAt(rm - 1);
}

void updateStock(List<BookSelf> book) {
  print('Update Stock By Tittle = ');
  stdout.write('Input Tittle = ');
  String upd = stdin.readLineSync()!;
  for (var value in book) {
    if (value.tittle == upd) {
      stdout.write('Input Stock = ');
      value.stock = int.parse(stdin.readLineSync()!);
    }
  }
}
