import 'package:flutter/material.dart';


import '../module/AppbarPage.dart';

class ManagerPage extends StatelessWidget {
  const ManagerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40), //모서리를 둥글게
                      border: Border.all(color: Colors.black12, width: 3)),
                  //테두리
                  child: Icon(
                    Icons.perm_identity,
                    size: 60,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 8,left: 15,right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Name',style:TextStyle(fontSize: 25, color:Colors.grey),),
                      Text('Data'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8,left: 40,right: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Menu1',style:TextStyle(fontSize: 20, color:Colors.grey)),
                      Text('Menu2',style:TextStyle(fontSize: 20, color:Colors.grey)),
                      Text('Menu3',style:TextStyle(fontSize: 20, color:Colors.grey)),
                      Text('Menu4',style:TextStyle(fontSize: 20, color:Colors.grey)),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 18,
            color: Colors.grey[300],
          ),
          Container(
            width: double.infinity,
            height: 250,
          ),
          Container(
            width: double.infinity,
            height: 40,
            color: Colors.red[300],
          ),
          Container(
            width: double.infinity,
            height: 40,
            color: Colors.red[200],
          ),
        ],
      ),
    );
  }
}
