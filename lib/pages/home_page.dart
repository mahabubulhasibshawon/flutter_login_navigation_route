import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var textSize = MediaQuery.of(context).textScaler;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Blog',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: textSize.scale(28)),
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
          itemBuilder: (context, index){
            return ListTile(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)),
              tileColor: Colors.amber.shade300,
              title: ,
            )
          },
          separatorBuilder: separatorBuilder,
          itemCount: blogs.length),
    );
  }
}
