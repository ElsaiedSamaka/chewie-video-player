import 'package:flutter/material.dart';

class NewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Algazira News",style: TextStyle(color:Colors.black45),),
        centerTitle: true,
        titleSpacing: 4,
        backgroundColor: Colors.amber,
      ),
      body: buildList(),
    );
  }

  Widget buildList() {
    return ListView.builder(
      itemCount: 1000,
      itemBuilder: (BuildContext context, int index) {
        return FutureBuilder(
          future: getFuture(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return snapshot.hasData
                ? Text('item index : $index loaded' )
                : Text('Item index: $index NOT loaded yet !');
          },
        );
      },
    );
  }

   getFuture() {
    return Future.delayed(Duration(seconds: 3), () {
      return 'Hi from future';
    });
  }
}
