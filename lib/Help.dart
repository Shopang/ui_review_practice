import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Help extends StatefulWidget {
    @override
    HelpState createState() => HelpState();
}

class HelpState extends State<Help> {
    @override
    Widget build(BuildContext context) {
        // TODO: implement build
        final rate1 = 0.18, rate2 = 0.20;
        final width = MediaQuery.of(context).size.width;
        final height = MediaQuery.of(context).size.height;
        final n_width = width * rate1; // number width
        final right_width = width * rate2; // icon and text
        final t_width1 = width - n_width;
        final t_width2 = width - n_width - right_width;

        final List<String> h1titles = [
            'AI 대진표', '기존 모임', '목표', '추가 목표', 'SportsAI'
        ];
        final List<String> h1texts = [
            '100명 안팎의 소모임 대진표를 관리합니다',
            '1. 대진표를 출력해서 준비하고\n'
                '2. 필기도구로 시합 결과를 직접 기록하고\n'
                '3. 마지막에 순위를 계산하면 되는데,\n'
                '4. 불참과 급참은 절대 있어선 안됩니다',
            '1. 스마트폰에 대진표를 보여주고\n'
                '2. 터치 몇 번으로 시합 결과를 기록하고\n'
                '3. 자동으로 순위를 계산까지 해주고\n'
                '4. 불참과 급참이 있어도 문제되지 않도록.',
            '1. 누구나 사용할 수 있도록 쉽고\n'
                '2. 모든 경기 결과를 내 폰에서 확인하고\n'
                '3. 클럽 대회에서 사용할 수 있어야 한다',
            '배드민턴에 인공지능을 접목하려고 하는, 이제 시작하는 기업입니다. '
                '지속적인 업데이트를 통해 배드민턴 문화 향상에 기여할 것을 약속드립니다. '
                '감사합니다.'
        ];

        final List<String> h2titles = [
            '초간단 대진표', '다양한 조합', '시합 동기화', '급수/핸디 반영', '점수판'
        ];

        final List<String> h2texts = [
            '대진표를 만들고 서버에 등록/배포까지 5분 걸립니다. 모임 당일, 구장에 도착해서 만들어도 됩니다',
            '같은 팟을 다시 만나지 않고, 상대를 최소한으로 만날 수 있도록 최적의 수학적 알고리즘을 적용했습니다',
            '시합 결과를 내 폰에서 실시간으로 확인할 수 있습니다. 참석하지 못한 회원도 열람이 가능합니다',
            '급수와 핸디를 회원 정보로 추가하면, 대진표를 생성할 떄 쉬워집니다',
            '멀리서도 눈에 잘 띄는, 여러 개의 테마로 구성된 점수판을 제공합니다. 스마트폰을 45도 이상 기울여보세요'
        ];

        final List<String> h3titles = [
            '선수 입장', '시합 결과 입력', '끝', '연습용 대진표'
        ];

        final List<String> h3texts = [
            '밴드나 카톡을 통해 공유된\n링크를 눌러서 입장합니다',
            '자신의 시합 결과를 직접 입력합니다',
            '이보다 더 간단할 수 있을까요?',
            '1. 홈 화면 -> 선수 입장\n'
                '2. 입력 안 하고, 입장 버튼'
        ];

        final List<String> h4titles = [
            '명단 생성', '대진표 생성', '대진표 등록', '대진표 공유'
        ];

        final List<String> h4texts = [
            '회원 명단을 딱 한번 만듭니다',
            '명단을 불러와서 대진표를 만들고 스마트폰에 저장합니다',
            '스마트폰의 대진표를 대진표 서버에 등록합니다.(업로드)',
            '보관함을 열고 등록 대진표를 선택하고 밴드나 카톡으로 공유합니다'
        ];

        return SafeArea(
            child: PageView(
                children: <Widget>[
                    SafeArea( // 상태바 부분 색깔을 잡아줌.
                        child: Scaffold(
                            appBar: AppBar(
                                automaticallyImplyLeading: false, // 앱바의 뒤로가기 버튼 제거
                                title: Text(
                                    '개요  1/4', style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                ),
                                ),
                                backgroundColor: Colors.indigo,
                                centerTitle: true,
//                    shape: ,
                            ),
                            body: Container(
                                child: SafeArea(
                                    child: Column(
                                        children: <Widget>[
                                            Container(width: 1, height: 10),
                                            makeNumberText(n_width, t_width1, 60, '1', h1titles[0], h1texts[0]),
                                            makeNumberText(n_width, t_width1, 110, '2', h1titles[1], h1texts[1]),
                                            makeNumberText(n_width, t_width1, 110, '3', h1titles[2], h1texts[2]),
                                            makeNumberText(n_width, t_width1, 100, '4', h1titles[3], h1texts[3]),
                                            makeNumberText(n_width, t_width1, 110, '5', h1titles[4], h1texts[4]),
                                        ],
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    ),
                                ),
                            ),
                        ),
                    ),
                    SafeArea( // 패딩을 배치해 상태바 부분 색깔을 잡아줌.
                        child: Scaffold(
                            appBar: AppBar(
                                automaticallyImplyLeading: false, // 앱바의 뒤로가기 버튼 제거
                                title: Text(
                                    '기능 요약  2/4', style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                ),
                                ),
                                backgroundColor: Colors.indigo,
                                centerTitle: true,
//                    shape: ,
                            ),
                            body: Container(
                                child: SafeArea(
                                    child: Column(
                                        children: <Widget>[
                                            Container(width: 1, height: 5),
                                            makeNumberTextWithText(n_width, t_width2, right_width, 85, '1', h2titles[0], h2texts[0], '5분'),
                                            makeNumberTextWithIcon(n_width, t_width2, right_width, 85, '2', h2titles[1], h2texts[1], Icons.fiber_new),
                                            makeNumberTextWithIcon(n_width, t_width2, right_width, 85, '3', h2titles[2], h2texts[2], Icons.cloud_download),
                                            makeNumberTextWithIcon(n_width, t_width2, right_width, 60, '4', h2titles[3], h2texts[3], Icons.grid_on),
                                            makeNumberTextWithIcon(n_width, t_width2, right_width, 120, '5', h2titles[4], h2texts[4], Icons.calendar_today),
                                        ],
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    ),
                                ),
                            ),
                        ),
                    ),
                    SafeArea( // 패딩을 배치해 상태바 부분 색깔을 잡아줌.
                        child: Scaffold(
                            appBar: AppBar(
                                automaticallyImplyLeading: false, // 앱바의 뒤로가기 버튼 제거
                                title: Text(
                                    '일반 회원  3/4',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                    ),
                                ),
                                backgroundColor: Colors.indigo,
                                centerTitle: true,
                            ),
                            body: Container(
                                child: SafeArea(
                                    child: Column(
                                        children: <Widget>[
                                            Container(width: 1, height: 10),
                                            makeNumberTextWithIcon(n_width, t_width2, right_width, height/8, '1', h3titles[0], h3texts[0], Icons.share),
                                            makeNumberText(n_width, t_width2, height/8, '2', h3titles[1], h3texts[1]),
                                            makeNumberText(n_width, t_width2, height/8, '3', h3titles[2], h3texts[2]),
                                            makeNumberTextWithIcon(n_width, t_width2, right_width, height/8, '4', h3titles[3], h3texts[3], Icons.exit_to_app),
                                            Container(
                                                child: Image.asset('images/sample.png'),
                                                alignment: Alignment.topCenter,
                                                width: 350,
                                                height: height/8*2.5,
                                            ),
                                        ],
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    ),
                                ),
                            ),
                        ),
                    ),
                    SafeArea( // 패딩을 배치해 상태바 부분 색깔을 잡아줌.
                        child: Scaffold(
                            appBar: AppBar(
                                automaticallyImplyLeading: false, // 앱바의 뒤로가기 버튼 제거
                                title: Text(
                                    '대진표 등록  4/4',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold,
                                    ),
                                ),
                                backgroundColor: Colors.indigo,
                                centerTitle: true,
                            ),
                            body: Container(
                                child: SafeArea(
                                    child: Column(
                                        children: <Widget>[
                                            Container(width: 1, height: 10),
                                            makeNumberTextWithIcon(n_width, t_width2, right_width, height/8, '1', h4titles[0], h4texts[0], Icons.people_outline),
                                            makeNumberTextWithIcon(n_width, t_width2, right_width, height/8, '2', h4titles[1], h4texts[1], Icons.assignment),
                                            makeNumberTextWithIcon(n_width, t_width2, right_width, height/8, '3', h4titles[2], h4texts[2], Icons.cloud_upload),
                                            makeNumberTextWithIcon(n_width, t_width2, right_width, height/8, '4', h4titles[3], h4texts[3], Icons.dehaze),
                                            Container(
                                                child: Row(
                                                    children: <Widget>[
                                                        SizedBox(width: 40, height: 1),
                                                        Icon(Icons.share, size: 50),
                                                        SizedBox(width: 20, height: 1),
                                                        Icon(Icons.chat, size: 50),
                                                    ],
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                ),
                                                width: width/2,
                                                height: height/8*1.5,
                                                alignment: Alignment.topLeft,
                                            ),
                                            Container(
                                                child: RaisedButton(
                                                    child: Text('닫기', style: TextStyle(fontSize: 19, color: Colors.black)),
                                                    color: Colors.lime,
                                                    onPressed: () {
                                                        Navigator.pop(context);
                                                    },
                                                ),
                                                width: width,
                                                height: height/11,
                                                color: Colors.limeAccent,
                                            ),
                                        ],
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                    ),
                                ),
                            ),
                        ),
                    ),
                ],
            ),
        );
    }

    Widget makeNumberText(double width1, double width2, double height, String number, String textTitle, String text) {
        return Container(
            child: SafeArea(
                child: Row(
                    children: <Widget>[
                        Container(
                            child: Text(number, style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold)),
                            alignment: Alignment.topCenter,
                            width: width1,
                            height: height,
                        ),
                        Container(
                            child: Column(
                                children: <Widget>[
                                    SafeArea(child: Text(textTitle, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)),
                                    SafeArea(child: Text(text, style: TextStyle(fontSize: 13))),
                                ],
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                            ),
                            alignment: Alignment.centerLeft,
                            width: width2,
                            height: height,
                        ),
                    ],
                ),
            ),
        );
    }

    Widget makeNumberTextWithIcon(double numberWidth, double textWidth, double iconWidth, double height, String number, String textTitle, String text, IconData icon) {
        return Container(
            child: SafeArea(
                child: Row(
                    children: <Widget>[
                        Container(
                            child: Text(number, style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold)),
                            alignment: Alignment.topCenter,
                            width: numberWidth,
                            height: height,
                        ),
                        Container(
                            child: Column(
                                children: <Widget>[
                                    SafeArea(child: Text(textTitle, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)),
                                    SafeArea(child: Text(text, style: TextStyle(fontSize: 13))),
                                ],
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                            ),
                            alignment: Alignment.centerLeft,
                            width: textWidth,
                            height: height,
                        ),
                        Container(
                            child: Icon(icon, size: 40),
                            alignment: Alignment.topCenter,
                            width: iconWidth,
                            height: height,
                        ),
                    ],
                ),
            ),
        );
    }

    Widget makeNumberTextWithText(double n_width, double t_width, double right_width, double height, String number, String textTitle, String text, String textIcon) {
        return Container(
            child: SafeArea(
                child: Row(
                    children: <Widget>[
                        Container(
                            child: Text(number, style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold)),
                            alignment: Alignment.topCenter,
                            width: n_width,
                            height: height,
                        ),
                        Container(
                            child: Column(
                                children: <Widget>[
                                    SafeArea(child: Text(textTitle, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)),
                                    SafeArea(child: Text(text, style: TextStyle(fontSize: 13))),
                                ],
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                            ),
                            alignment: Alignment.centerLeft,
                            width: t_width,
                            height: height,
                        ),
                        Container(
                            child: Text(textIcon, style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                            alignment: Alignment.topCenter,
                            width: right_width,
                            height: height,
                        ),
                    ],
                ),
            ),
        );
    }

}

