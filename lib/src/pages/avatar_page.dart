import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://media.revistagq.com/photos/5d5c58310ef2260008f5ccbb/16:9/w_1920,c_limit/Matrix-Neo.jpg'),
              radius: 25.0,
            ),
          ),
          Container(
              margin: EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                child: Text('SL'),
                backgroundColor: Colors.brown,
              ))
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fgeekandchic.cl%2Fwp-content%2Fuploads%2F2011%2F06%2Fneo.jpg&f=1&nofb=1'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
