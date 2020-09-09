import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learnpro/models/credentials.dart';
import 'package:provider/provider.dart';

class login extends StatelessWidget {
 TextEditingController username=TextEditingController();
 TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<credentials>(
      create: (context) => credentials() ,
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'WELCOME'
                ),
                TextFormField(
                  controller:username ,
                  decoration: InputDecoration(
                    hintText: "Username"
                  ),
                ),
                TextFormField(
                  controller: password,
                  obscureText:true,
                  decoration: InputDecoration(
                      hintText: "Password",

                  ),
                ),
                Consumer<credentials>(
                  builder: (context,credentials,child){
                    return  RaisedButton(
                      color: Colors.yellow,
                      child: Text('ENTER'),
                      onPressed: () {
                        credentials.validation(username.text,password.text);
                        Navigator.pushReplacementNamed(context, '/catalog');
                      },
                    );
                  },

                )
              ],
            ),
          ),

        ),

      ),
    );
  }
}
