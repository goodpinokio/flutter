import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:userpage/src/page/user_edit.dart';

class user_profile extends StatefulWidget {
  const user_profile({super.key});

  @override
  State<user_profile> createState() => _user_profileState();
}

class _user_profileState extends State<user_profile>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      vsync: this,
      length: 2,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => edit_user())));
              },
              icon: Icon(
                Icons.edit,
                color: Colors.white,
              ))
        ],
        backgroundColor: Color.fromRGBO(35, 149, 238, 1),
        elevation: 0,
        title: Text(
          '프로필',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                    height: 200,
                    color: Color.fromRGBO(53, 149, 238, 1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // 유저프로필
                            Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(100))),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(padding: EdgeInsets.fromLTRB(0, 85, 0, 0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        '홍길동',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Padding(padding: EdgeInsets.fromLTRB(0, 200, 0, 0)),
                Container(
                  child: TabBar(
                    tabs: [
                      Container(
                        height: 50,
                        alignment: Alignment.center,
                        child: Text(
                          '내가 올린 매물',
                          style:
                              TextStyle(color: Color.fromRGBO(95, 95, 95, 1)),
                        ),
                      ),
                      Container(
                        height: 50,
                        alignment: Alignment.center,
                        child: Text(
                          '투자한 부동산',
                          style:
                              TextStyle(color: Color.fromRGBO(95, 95, 95, 1)),
                        ),
                      ),
                    ],
                    controller: _tabController,
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Container(
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Text('아직 매물이 없습니다!'),
                      ),
                      Container(
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Text('투자를 시작해 볼까요?'),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
