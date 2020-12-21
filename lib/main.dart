import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main_model.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "江角の大進撃",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.white,
            leading: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
          body: Consumer<MainModel>(builder: (context, model, child) {
            return Center(
              child: Column(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 100,
                        color: Colors.red,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(model.sendText),
                              FlatButton(
                                onPressed: () {
                                  //押したら何かする
                                  model.changesendText();
                                },
                                child: Text("上の文字を変更"),
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 100,
                        color: Colors.yellow,
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("朝活を記録した"),
                              FlatButton(
                                onPressed: () {
                                  //押したら何かする
                                },
                                child: Icon(Icons.note_add_outlined),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 100,
                        color: Colors.green,
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("朝活履歴を確認する"),
                              FlatButton(
                                onPressed: () {
                                  //押したら何かする
                                },
                                child: Icon(Icons.arrow_forward),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 100,
                        color: Colors.black,
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  child: Text(
                                    "hello",
                                  ),
                                  color: Colors.pink,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
