import 'package:learnpro/models/catalog.dart';
import 'package:learnpro/repository/catalog.dart';
import 'package:rxdart/rxdart.dart';

class CatalogBloc{
  final catalogRepository=CatalogRepository();

  final PublishSubject<List<Item>> itemListFetcher =
  PublishSubject<List<Item>>();

  Stream<List<Item>> get getItemList => itemListFetcher.stream;

  listItems() async{

    final List<Item> itemNames =  await catalogRepository.itemsList();

    print(itemNames);

    itemListFetcher.sink.add(itemNames);
  }

  void  dispose() {
    itemListFetcher.close();
  }

}