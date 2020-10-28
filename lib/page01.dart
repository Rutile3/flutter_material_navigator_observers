import 'package:flutter/material.dart';

class Page01 extends StatefulWidget {
  Page01(this.routeObserver);
  final RouteObserver<PageRoute> routeObserver;

  @override
  Page01State createState() => Page01State();
}

class Page01State extends State<Page01> with RouteAware {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    widget.routeObserver.subscribe(this, ModalRoute.of(context));
  }

  @override
  void dispose() {
    widget.routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPush() {
    // 画面が初めて表示 (Push) される時にコールされます。
  }

  @override
  void didPop() {
    // この画面から別の画面に遷移する (Pop) 場合にコールされます。
  }

  @override
  void didPushNext() {
    // この画面から別の画面をPushする場合にコールされます (この画面はPopされずにそのまま残る場合)。
  }

  @override
  void didPopNext() {
    // 一度、別の画面に遷移したあとで、再度この画面に戻ってきた時にコールされます。
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Page01'),
        RaisedButton(
          child: Text('push Page02'),
          onPressed: () {
            Navigator.pushNamed(context, '/page02');
          },
        ),
        RaisedButton(
          child: Text('push Page03'),
          onPressed: () {
            Navigator.pushNamed(context, '/page03');
          },
        ),
        RaisedButton(
          child: Text('pop'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
