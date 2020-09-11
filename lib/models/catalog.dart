import 'package:json_annotation/json_annotation.dart';
part 'catalog.g.dart';

@JsonSerializable()
class Item {
  int id;
  String item;
  Item(this.id,this.item);

  factory Item.fromJson(Map<String, dynamic> json) =>
      _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
