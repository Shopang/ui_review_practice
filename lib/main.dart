import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Help.dart';
import 'Members.dart';
import 'EnterGame.dart';
import 'Storage.dart';


void main() {
//    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//        statusBarColor: Colors.transparent,
//    ));
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
                primarySwatch: Colors.blue,
            ),
            home: MyHomePage(title: 'AI 대진표'),
        );
    }
}

class MyHomePage extends StatefulWidget {
    MyHomePage({Key key, this.title}) : super(key: key);
    final String title;

    @override
    _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    @override
    Widget build(BuildContext context) {
        return SafeArea( // 패딩을 통해 상태바 부분 색깔을 잡아줌.
            child: Scaffold(
                backgroundColor: Colors.white,
                appBar: AppBar(
                    backgroundColor: Colors.grey,
                    centerTitle: true,
                    title: Text(widget.title),
                    actions: [
                        Container(
                            child: FlatButton(
                                child: Icon(Icons.help_outline, color: Colors.white, size: 30),
                                onPressed: onHelp,
                            ),
                            width: 65,
                        ),
                    ],
                ),

                body: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                            Container(
                                child: Text('AI대진표에 오신 것을 환영합니다',
                                    style: TextStyle(fontSize: 17)),
                                alignment: Alignment.center,
                                height: 40,
                                width: 250,
                            ),
                            makeGreyButton('1분 사용법', (){}),
                            makeGreyButton('경기이사용', (){}),
                            makeGreyButton('점수판', (){}),
                            makeGreyButton('회원관리', onMembers),
                            makeGreyButton('선수입장', onEnterGame),
                            SizedBox(height: 5),
                            makeColorButton('보관함', Colors.orange, onStorage),
                            makeColorButton('대진표 생성', Colors.black54, () {}),
                            SizedBox(height: 5),
                        ],
                    ),
                ),
            ),
        );
    }

    Widget makeGreyButton(String text, Function f) {
        return SizedBox(
            child: FlatButton(
                child: Text(text, style: TextStyle(color: Colors.grey, fontSize: 17)),
                onPressed: f,
                color: Colors.white, // 기본화면 배경색이 온전한 흰색이 아니라 Scaffold에서 흰 배경 추가
            ),
        );
    }

    Widget makeColorButton(String text, Color color, Function f) {
        return Container(
            child: RaisedButton(
                child: Text(text, style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold)),
                onPressed: f,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                color: color, // 버튼 영역
            ),
            color: Colors.white, // 전체 영역. 배경색과 동일하게 맞춰야 함
            width: 200,
            height: 50,
        );
    }

    void onHelp() {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) {
                    return Help();
                }
            ),
        );
    }

    void onMembers() {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) {
                    return Members();
                }
            ),
        );
    }

    void onEnterGame() {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) {
                    return EnterGame();
                }
            ),
        );
    }

    void onStorage() {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) {
                    return Storage();
                }
            )
        );
    }

}
