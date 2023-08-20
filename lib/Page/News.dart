import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modulex/module/AppbarPage.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('data'),
                Container(
                  width: double.infinity,
                  height: 30,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8,top: 2),
                    child: TextField(
                      decoration: null,
                      autofocus: true,
                      onSubmitted:(String text) {
                        setState(){}
                      },
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Text('data'),
                Container(
                  width: double.infinity,
                  height: 500,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,width: 1)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: null,
                      maxLines: null,
                      autofocus: true,
                      onSubmitted: (String text) {
                        setState(){}
                      },
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
