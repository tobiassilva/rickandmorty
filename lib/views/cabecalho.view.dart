import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CabecalhoView {
  Widget appBar() {
    return Container(
      height: 45,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/images/logo-ram.png'),
          Icon(
            Icons.menu,
            size: 30,
          )
        ],
      ),
    );
  }
}
