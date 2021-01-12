import 'package:flutter/material.dart';


class Storage extends StatefulWidget {
    @override
    StorageState createState() => StorageState();
}

class StorageState extends State<Storage> {
    @override
    Widget build(BuildContext context) {
        // TODO: implement build
        List<String> table_names = ['혼복12345', '남복12345', '여친12345'];
        Set abc = {};

        return Scaffold(
            appBar: AppBar(
                title: Text('회원 관리', style: TextStyle(color: Colors.white)),
                centerTitle: true,
                backgroundColor: Colors.grey,
                actions: <Widget>[
                    Container(
                        child: FlatButton(
                            child: Icon(Icons.help_outline, color: Colors.white, size: 30),
                            onPressed: () {},
                        ),
                        width: 65,
                    ),
                ],
            ),
        );
    }
}







