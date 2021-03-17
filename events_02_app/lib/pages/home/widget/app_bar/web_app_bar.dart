import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: [
           Text('Events'),
          const SizedBox(width: 32),
          Expanded(child: Container()),
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){}),
          SizedBox(width: 24),
          SizedBox(
            height: 38,
            child: OutlineButton(
              child: Text('Fazer Login'),
                textColor: Colors.white,
                borderSide: BorderSide(color: Colors.white, width: 2),
                onPressed: (){}),
          ),
          SizedBox(width: 8),
          SizedBox(
            height: 40,
            child: RaisedButton(child:
                Text('Cadastre-se'),
                color: Colors.white,
                textColor: Colors.black,
                onPressed: (){}),
          )
        ],
      ),
    );
  }
}
