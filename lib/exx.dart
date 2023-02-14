import 'package:flutter/material.dart';
class Ex extends StatelessWidget {
  const Ex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          IconButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Ahmed(3),));
              },
              icon: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
class Ahmed extends StatelessWidget {
  int? x;
  int? y;

  Ahmed(this.x, [this.y]);
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
