import 'package:flutter/material.dart';

class EnterGame extends StatefulWidget {
    @override
    EnterGameState createState() => EnterGameState();
}

class EnterGameState extends State<EnterGame> {
    @override
    Widget build(BuildContext context) {
        // TODO: implement build
        final double width = MediaQuery.of(context).size.width;
        final double height = MediaQuery.of(context).size.height;
        double boxWidth = width * 0.9;
        double boxHeight = height / 3 + 1;
        double boxHeight_2 = boxHeight / 7 * 2-3; // 픽셀 오류로 인해 크기 추가 조정함.
        double boxHeight_3 = boxHeight / 7 * 3;
        String sampleText = '20200101-0000';

        return Scaffold(
            backgroundColor: Colors.blueGrey,
            body: Center(
                child: Container(
                    width: boxWidth,
                    height: boxHeight,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 1.5)
                    ),
                    child: Container(
                        color: Colors.white,
                        child: Column(
                            children: <Widget>[
                                Container(
                                    width: boxWidth, height: boxHeight_2,
                                    color: Colors.indigo,
                                    alignment: Alignment.center,
                                    child: Text('대진표 이름', style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold)),
                                ),
                                Container(
                                    width: boxWidth, height: boxHeight_3/4,
                                    color: Colors.white,
                                ),
                                Container(
                                    width: boxWidth, height: boxHeight_3/2,
                                    color: Colors.white,
                                    alignment: Alignment.center,
                                    child: Text('$sampleText', style: TextStyle(fontSize: 16, color: Colors.black54)),
                                ),
                                Container(
                                    width: boxWidth,
                                    height: 1,
                                    color: Colors.black,
                                ),
                                Container(
                                    width: boxWidth, height: boxHeight_3/4,
                                    color: Colors.white,
                                ),
                                Container(
                                    width: boxWidth, height: boxHeight_2,
                                    color: Colors.white,
                                    child: Row(
                                        children: <Widget>[
                                            Container(
                                                width: boxWidth / 2 - 2.3, height: boxHeight_2,
                                                color: Colors.black, alignment: Alignment.center,
                                                child: Text('취소', style: TextStyle(fontSize: 15, color: Colors.white)),
                                            ),
                                            Container(
                                                width: boxWidth / 2 - 2.3, height: boxHeight_2,
                                                color: Colors.black, alignment: Alignment.center,
                                                child: Text('입장', style: TextStyle(fontSize: 15, color: Colors.white)),
                                            ),
                                        ],
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    ),
                                ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                    ),
                ),
            ),
        );
    }
}
















