

import 'package:flutter/material.dart';

class CatalogModel{
  static List<String> itemNames =[
    'Code Smell',
    'Control Flow',
    'Interpreter',
    'Recursion',
    'Sprint',
    'Heisenbug',
    'Spaghetti',
    'Hydra Code',
    'Off-By-One',
    'Scope',
    'Callback',
    'Closure',
    'Automata',
    'Bit Shift',
    'Currying',
  ];
  Item getById(int id) => Item(id, itemNames[id % itemNames.length]);


  Item getByPosition(int position) {

    return getById(position);
  }
}

class Item{
  int id;
  String name;
  Color color;
  int price=42;
  Item(this.id, this.name)
      : color = Colors.primaries[id % Colors.primaries.length];

  @override
  int get hashCode => id;

  @override
  bool operator ==(Object other) => other is Item && other.id == id;

}