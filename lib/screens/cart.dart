//import 'package:flutter/material.dart';
//import 'package:learnpro/models/cart.dart';
//import 'package:provider/provider.dart';
//
//
//class MyCart extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('cart'),
//        backgroundColor: Colors.white,
//      ),
//       body:Container(
//         color: Colors.yellow,
//         child: Column(
//           children: <Widget>[
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.all(32),
//                 child: _CartList(),
//               ),
//             )
//           ],
//         ),
//
//       )
//
//    );
//  }
//}
//
//class _CartList extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    //var itemNameStyle = Theme.of(context).textTheme.headline
//
//    var cart = context.watch<CartModel>();
//    return ListView.builder(
//      itemCount: cart.items.length,
//        itemBuilder: (context,index) => ListTile(
//          leading: Icon(Icons.done),
//           title:Text(
//             cart.items[index].name,
////             style: ,
//           )
//        )
//    );
//  }
//}
//
//
//class _CartTotal extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//
//   // var hugeStyle = Theme.of(context).headline1.copyWith(fontSize:48);
//    return SizedBox(
//     height: 200,
//      child: Center(
//        child: Row(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Consumer<CartModel>(
//              builder: (context,cart,child)=>
//              Text(
//                '\$${cart.totalprice}',
//               // style: ,
//              ),
//
//
//            ),
//            FlatButton(
//              onPressed: (){
//                  Scaffold.of(context).showSnackBar(
//                      SnackBar(
//                        context:Text('Buying not supported yet')
//                      )
//                  )
//              },
//              color: Colors.white,
//              child: Text('BUY'),
//            )
//          ],
//        ),
//      ),
//    );
//  }
//}
//
//
//
