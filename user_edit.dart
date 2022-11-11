import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class edit_user extends StatefulWidget {
  const edit_user({super.key});

  @override
  State<edit_user> createState() => _edit_userState();
}

class _edit_userState extends State<edit_user> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(35, 149, 238, 1),
        actions: <Widget>[
          IconButton(
              onPressed: () {}, //메인 페이지 연결 하면 됨
              icon: Icon(
                Icons.check,
              ))
        ],
        elevation: 0,
        title: Text(
          '프로필 수정',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: Center(
        child: Stack(
          children: [
            Column(
              children: [
                Flexible(
                  fit: FlexFit.loose,
                  child: Container(
                    width: 600,
                    height: 150,
                    color: Color.fromRGBO(35, 149, 238, 1),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius:
                                          BorderRadius.circular(100))),
                            ],
                          )
                        ]),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Padding(padding: EdgeInsets.fromLTRB(0, 60, 0, 0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        '홍길동',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )
                  ],
                )
              ],
            ),
            SingleChildScrollView(
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 200, 20, 10),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: '이름',
                        hintText: '이름을 입력해주세요 예: 홍길동',
                        labelStyle: TextStyle(color: Colors.grey),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                            width: 1,
                            color: Color.fromRGBO(35, 149, 238, 1),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: '휴대전화',
                        hintText: '010-xxxx-xxxx',
                        labelStyle: TextStyle(color: Colors.grey),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                            width: 1,
                            color: Color.fromRGBO(35, 149, 238, 1),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: '이메일',
                        hintText: 'example@hankung.com',
                        labelStyle: TextStyle(color: Colors.grey),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                            width: 1,
                            color: Color.fromRGBO(35, 149, 238, 1),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: '주소',
                        hintText: '예)서울특별시 중구 청파로 463',
                        labelStyle: TextStyle(color: Colors.grey),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                            width: 1,
                            color: Color.fromRGBO(35, 149, 238, 1),
                          ),
                        )),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
