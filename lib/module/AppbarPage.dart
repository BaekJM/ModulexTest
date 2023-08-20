import 'package:flutter/material.dart';
import 'package:modulex/Page/MainPage.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {



  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(bottom: 8, top: 8),
        child: InkWell(
          onTap: () {Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()),
          );},
          child: Padding(
            padding: EdgeInsets.only(top: 12,bottom: 12),
            child: FittedBox(
              fit: BoxFit.fitHeight,
              child: Image.asset(
                  'Image/Modulex.png',height: 30,),
            ),
          ),
        ),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.add_alert, color: Colors.grey),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_vert, color: Colors.grey),
        ),
      ],
      backgroundColor: Colors.transparent, //배경
      automaticallyImplyLeading: false,//뒤로가기 laeding위치 제거
      excludeHeaderSemantics: true, //고정?이였던거같은데 기억나면 적자
      elevation: 0.0, //appbar 그림자
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
