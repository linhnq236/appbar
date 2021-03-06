import 'package:flutter/material.dart';
class CustomerListTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;

  const CustomerListTile({Key key, this.icon, this.text, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.0, right: 8.0),
        child: Container(
            decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.grey.shade400))),
            child: InkWell(
                splashColor: Colors.orangeAccent,
                onTap: onTap,
                child: Container(
                    height: 40,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(icon),
                              Text(
                                text,
                                style: TextStyle(
                                  color: Colors.black,
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_right),
                        ])))));
  }
}
