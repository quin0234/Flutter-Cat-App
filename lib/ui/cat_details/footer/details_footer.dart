import 'package:flutter/material.dart';
import 'package:flutter_app_cats/models/cat.dart';
import 'package:flutter_app_cats/ui/cat_details/footer/showcase_cattribtes.dart';
import 'package:flutter_app_cats/ui/cat_details/footer/showcase_details.dart';
import 'package:flutter_app_cats/ui/cat_details/footer/showcase_pictures.dart';

class CatShowCase extends StatefulWidget {
  final Cat cat;

  CatShowCase(this.cat);

  @override
  _CatShowCaseState createState() => new _CatShowCaseState();
}

class _CatShowCaseState extends State<CatShowCase>
    with TickerProviderStateMixin {
  List<Tab> _tabs;
  List<Widget> _pages;
  TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabs = [
      new Tab(text: 'Pictures'),
      new Tab(text: 'Details'),
      new Tab(text: 'Cattributes'),
    ];
    _pages = [
      new PicturesShowcase(widget.cat),
      new DetailsShowcase(widget.cat),
      new CattributesShowcase(widget.cat),
    ];
    _controller = new TabController(length: _tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(16.0),
      child: new Column(
        children: <Widget>[
          new TabBar(
            tabs: _tabs,
            controller: _controller,
            indicatorColor: Colors.white,
          ),
          new SizedBox.fromSize(
            size: const Size.fromHeight(300.0),
            child: new TabBarView(controller: _controller, children: _pages),
          )
        ],
      ),
    );
  }
}
