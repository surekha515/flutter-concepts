import 'package:flutter/material.dart';
import 'package:learnpro/bloc/catalog.dart';
import 'package:learnpro/models/catalog.dart';

//class catalog extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//     appBar: PreferredSize(
//        preferredSize: Size.fromHeight(50.0),
//         child: AppBar_Cart()),
//      body: ListOfItems(),
//
//    );
//  }
//}
//
//
//class  AppBar_Cart extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return AppBar(
//      actions: <Widget>[
//    IconButton(
//     icon: Icon(Icons.shopping_cart),
//    onPressed: (){
//       print('cart');
//    },
//    ),
//      ],
//      title: Center(
//          child:Text('Catalog')
//      ),
//
//
//
//
//    );
//  }
//}


//class ListOfItems  extends StatelessWidget {
//  List<String> items = ["1","2","Third","4"];
//  @override
//  Widget build(BuildContext context) {
//    return ListView.builder(
//      itemCount: items.length,
//      itemBuilder: (BuildContext context,int index){
//        return Text(items[index]);
//      },
//
//
//    );
//  }
//}

class ListOfItems extends StatefulWidget {
  @override
  _ListOfItemsState createState() => _ListOfItemsState();
}

class _ListOfItemsState extends State<ListOfItems> {

  final catalogBloc = CatalogBloc();

  @override
  void initState(){
    super.initState();
    catalogBloc.listItems();
  }
  @override
  void dispose() {
    catalogBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: (){
              print('cart');
            },
          ),
        ],
        title: Center(
            child:Text('Catalog')
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Expanded(
              child: StreamBuilder<List<Item>>(
                stream: catalogBloc.getItemList,
                builder: (BuildContext context,AsyncSnapshot<List<Item>> snapshot){
                  if(snapshot.hasData){
                     print(snapshot.data.toString());
                     return ListView.builder(
                       itemCount: snapshot.data.length,
                       itemBuilder: (BuildContext context,int index){
                         if(index==snapshot.data.length){
                           print('no data');
                           return Center(
                             child: CircularProgressIndicator(),
                           );
                         }
                         else {
                           print('data');
                           return Text(snapshot.data[index].toString());
                         }

                       },
                       scrollDirection: Axis.vertical,
                       shrinkWrap: true,
                     );
                  }
                  else{
                    return const Center(child: CircularProgressIndicator(
                      backgroundColor: Colors.green,
                    ));
                  }

                },
              ),
            )

          ],

        ),
      ),
    );
  }
}



