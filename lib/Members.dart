import 'package:flutter/material.dart';

class Members extends StatefulWidget {
    @override
    MembersState createState() => MembersState();
}

class MembersState extends State<Members> {
    @override
    Widget build(BuildContext context) {
        // TODO: implement build
        final double width = MediaQuery.of(context).size.width;
        final double height = MediaQuery.of(context).size.height;

        List<String> nList = ['남친', '여친', '잔나비', '잔나비_7월'];
        List<String> nCount = ['21', '17', '38', '34'];
        Color lineColor = Colors.black12;
        double lineHeight = height/11;

        return SafeArea(
            child: Scaffold(
                backgroundColor: Colors.white,
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
                body: SafeArea(
                    child: Column(
                        children: <Widget>[
                            Container(
                                child: ListView.separated(
                                    itemCount: nList.length,
                                    itemBuilder: (BuildContext context, int index) {
                                        return Container(
                                            color: lineColor,
                                            width: width,
                                            height: lineHeight,
                                            child: GestureDetector(
                                                child: Row(
                                                    children: <Widget>[
                                                        Container(
                                                            child: Text('${nCount[index]}', style: TextStyle(fontSize: 17)),
                                                            width: width/7,
                                                            height: lineHeight,
                                                            alignment: Alignment.center,
                                                        ),
                                                        Container(
                                                            child: Text('${nList[index]}', style: TextStyle(fontSize: 17)),
                                                            width: width-width/3-width/7,
                                                            height: lineHeight,
                                                            alignment: Alignment.center,
                                                        ),
                                                        Container(
                                                            width: width/3,
                                                            height: lineHeight,
                                                            child: Row(
                                                                children: <Widget>[
                                                                    Icon(Icons.space_bar, size: 40, color: Colors.white),
                                                                    Icon(Icons.delete, size: 30, color: Colors.white),
                                                                ],
                                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                            ),
                                                        ),
                                                    ],
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                ),
                                                onTap: () {
                                                    setState(() {
                                                        lineColor = Colors.deepPurpleAccent;
                                                    });
                                                },
                                            )
                                        );
                                    },
                                    separatorBuilder: (context, index) {
                                        return Divider(
                                            height: 1,
                                        );
                                    }),
                                height: height-lineHeight*3.5,
                            ),
                            Container(
                                color: Colors.blueGrey,
                                child: Row(
                                    children: <Widget>[
                                        Container(
                                            child: FlatButton(
                                                child: Text('폴더열기', style: TextStyle(fontSize: 14, color: Colors.white)),
                                                onPressed: () {},
                                                color: Colors.blueGrey,
                                            ),
                                            width: width/4,
                                            height: lineHeight,
                                            alignment: Alignment.center,
                                        ),
                                        Container(
                                            child: FlatButton(
                                                child: Text('생성', style: TextStyle(fontSize: 14, color: Colors.white)),
                                                onPressed: () {},
                                                color: Colors.blueGrey,
                                            ),
                                            width: width/4,
                                            height: lineHeight,
                                            alignment: Alignment.center,
                                        ),
                                        Container(
                                            child: FlatButton(
                                                child: Text('편집', style: TextStyle(fontSize: 14, color: Colors.white)),
                                                onPressed: () {},
                                                color: Colors.blueGrey,
                                            ),
                                            width: width/4,
                                            height: lineHeight,
                                            alignment: Alignment.center,
                                        ),
                                        Container(
                                            child: FlatButton(
                                                child: Text('상세보기', style: TextStyle(fontSize: 14, color: Colors.white)),
                                                onPressed: () {},
                                                color: Colors.blueGrey,
                                            ),
                                            width: width/4,
                                            height: lineHeight,
                                            alignment: Alignment.center,
                                        ),
                                    ],
                                ),
                                width: width,
                                height: lineHeight,
                            ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                ),
            ),
        );
    }
}



