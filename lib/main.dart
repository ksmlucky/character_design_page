import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
// 위에거랑 똑같은거
// void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ronaldo',
      home: MyCard(),
    );
  }
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Ronaldo'),
        centerTitle: true,
        backgroundColor: Colors.red[400],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),

        // 가로축의 정중앙에 위치시키려면
        // body: Center()안에 넣어주기
        // 세로축의 정중앙에 위치시키려면
        // mainAxisAlignment: MainAxisAlignment.center,을 사용
        child: Column(
          // 가로축 정렬 하려면 crossAxisAlignment: CrossAxisAlignment.start, 사용
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 컨트롤+스페이스 누르면 그 위젯이 가진 속성을 확인할 수 있음
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/호날道.gif'),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30.0,
            ),
            Text('NAME',
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                )
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Ronaldo',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              )
            ),

            SizedBox(
              height: 30.0,
            ),
            Text('Ronaldo POWER LEVEL',
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                )
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
                '20',
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                )
            ),

            SizedBox(
              height: 30.0,
            ),

            Row(
              children: [
                Icon(Icons.check_circle_outline,
                  color: Colors.black,),
                SizedBox(
                  width: 10.0,
                ),
                Text('Ronaldo Punch',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                ),),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline,
                  color: Colors.black,),
                SizedBox(
                  width: 10.0,
                ),
                Text('Ronaldo Calf Kick',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline,
                color: Colors.black,),
                SizedBox(
                  width: 10.0,
                ),
                Text('Ronaldo Chokeslam',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline,
                  color: Colors.black,),
                SizedBox(
                  width: 10.0,
                ),
                Text('Ronaldo Headbutt',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            // Center(
            //   child: CircleAvatar(
            //     backgroundImage: AssetImage('assets/호날道.gif'),
            //     radius: 40.0,
            //
            //     // 아바타 배경이 투명이거나 할 경우,
            //     // backgroundColor: Colors.amber[800],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
