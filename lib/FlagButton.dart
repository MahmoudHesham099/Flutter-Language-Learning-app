import 'package:flutter/material.dart';

class FlagButton extends StatelessWidget {
  final String text;
  final String flag;
  final Function onTap;

  const FlagButton({Key key, this.text, this.flag, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Color(0xff263238),
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          children: [
            Image.asset(
              'assets/$flag',
              width: 50,
            ),
            SizedBox(width: 20),
            Expanded(
                child: Text(
              text,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ))
          ],
        ),
      ),
    );
  }
}
