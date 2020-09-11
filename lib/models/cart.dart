//import 'package:flutter/cupertino.dart';
//import 'package:learnpro/models/catalog.dart';
//
//class CartModel extends ChangeNotifier{
//CatalogModel _catalog;
//final List<int> _itemIds=[];
//
//CatalogModel get catalog => _catalog;
//
//
//set catalog(CatalogModel newCatalog){
//  assert(newCatalog!= null);
//  assert(_itemIds.every((id) => newCatalog.getById(id) != null),
//  'The Catalog $newCatalog does not have one of $_itemIds in it ');
//  _catalog=newCatalog;
//  notifyListeners();
//}
//
//List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();
//
//
//
//
//}