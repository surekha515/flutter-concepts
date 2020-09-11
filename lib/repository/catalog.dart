import 'package:learnpro/models/catalog.dart';
import 'package:learnpro/network_provider/catalog.dart';

class CatalogRepository {
  final catalogProvider = CatalogProvider();

  Future<List<Item>> itemsList() async {

    List<Item> items;

    dynamic jsonObjects = catalogProvider.getDataFromJson(); // list of objects

    dynamic itemsInfo=jsonObjects['itemslist'];

    items = itemsInfo
        .map<Item>((dynamic json) => Item.fromJson(json))
        .toList() as List<Item>;


    return items;
  }
}
