import 'package:flutter/material.dart';
import 'chatingPage.dart';

class UI3_demo extends StatefulWidget {
  @override
  UI3_demo_screen createState() => UI3_demo_screen();
}

class UI3_demo_screen extends State<UI3_demo> {
  int _selectedButtonIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('채팅', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [
          Row(
            children: [
            ],
          ),
          Expanded(
            child: Scrollbar(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Divider(),
                    PostCard1(),
                    PostCard(),
                    PostCard(),
                    PostCard(),
                    PostCard(),
                    PostCard(),
                    PostCard(),
                    PostCard(),
                    PostCard(),
                    PostCard(),
                    // Add more PostCard widgets
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _handleButtonToggle(int index) {
    setState(() {
      _selectedButtonIndex = index;
    });
  }
}

class PostCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 20,),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://placekitten.com/200/300'),
              ),
              SizedBox(width: 20),
              Column(
                children: [
                  Row(
                    children: [
                      Text('고희정', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                      SizedBox(width: 40),
                      Text('3시간 전'),
                      SizedBox(width: 390),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '산책 잘 해주셔서 감사합니다.',
                        style: TextStyle(fontSize: 20),

                      ),
                      SizedBox(width: 300),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 420),
                      Text('', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 25),
          Divider(),
        ],
      ),
    );
  }
}
class PostCard1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Chating())
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20,),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage('https://placekitten.com/200/300'),
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    Row(
                      children: [
                        Text('김민수', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                        SizedBox(width: 40),
                        Text('방금'),
                        SizedBox(width: 450),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '강아지 산책 시키려고 방금 집에서 나왔는데 ...',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(width: 200),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 450),
                        Text('+1', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 25),
            Divider(),
          ],
        ),
      ),
    );
  }
}
