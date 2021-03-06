import 'package:flutter/material.dart';
import 'package:mikailelslkd/news/wiget_first.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    answer() {
      return Navigator.push<void>(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => Second(),
        ),
      );
    }

    return BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        color: Colors.transparent,
        elevation: 9.0,
        clipBehavior: Clip.antiAlias,
        child: Container(
            height: 50.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0)),
                color: Colors.white),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 50.0,
                      width: MediaQuery.of(context).size.width / 2 - 40.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.home, color: Color(0xFFEF7532)),
                          ),
                          IconButton(
                            onPressed: answer,
                            icon: Icon(Icons.person, color: Color(0xFFEF7532)),
                          )
                        ],
                      )),
                  Container(
                      height: 50.0,
                      width: MediaQuery.of(context).size.width / 2 - 40.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.search, color: Color(0xFFEF7532)),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon:
                                Icon(Icons.favorite, color: Color(0xFFEF7532)),
                          )
                        ],
                      )),
                ])));
  }
}
