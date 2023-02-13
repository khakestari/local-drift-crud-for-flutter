import 'package:crudsample/Screens/Create/create.dart';
import 'package:crudsample/Screens/Read/read.dart';
import 'package:flutter/material.dart';
import 'package:crudsample/constants.dart';

class Option extends StatelessWidget {
  const Option({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            height: 100,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 30),
            child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Create();
                }));
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
                alignment: Alignment.center,
                width: double.infinity,
                child: Text(
                  "Create",
                  style: TextStyle(color: color3),
                ),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: color2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36),
                      side: BorderSide(color: color3))),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 30),
            child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Read();
                }));
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
                alignment: Alignment.center,
                width: double.infinity,
                child: Text(
                  "Read",
                  style: TextStyle(color: color3),
                ),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: color2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36),
                      side: BorderSide(color: color3))),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 30),
            child: TextButton(
              onPressed: () {},
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
                alignment: Alignment.center,
                width: double.infinity,
                child: Text(
                  "Update",
                  style: TextStyle(color: color3),
                ),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: color2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36),
                      side: BorderSide(color: color3))),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 30),
            child: TextButton(
              onPressed: () {},
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
                alignment: Alignment.center,
                width: double.infinity,
                child: Text(
                  "Delete",
                  style: TextStyle(color: color3),
                ),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: color2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36),
                      side: BorderSide(color: color3))),
            ),
          ),
        ],
      ),
    );
  }
}
