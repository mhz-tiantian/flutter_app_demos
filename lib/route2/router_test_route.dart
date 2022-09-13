import 'package:first_flutter_app/route1/new_route.dart';
import 'package:first_flutter_app/route2/tip_route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const RouterTestRoute());
}

class RouterTestRoute extends StatelessWidget {
  const RouterTestRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "路由返回值",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const TestRouterChild()
    );
  }
}

class TestRouterChild extends StatelessWidget {
  const TestRouterChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Router Test route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            var result = await Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return const TipRoute(title: "我是提示语XXXX");
                }));
            print("result===$result");
          },
          child: const Text("打开提示页面"),
        ),
      ),
    );
  }
}

