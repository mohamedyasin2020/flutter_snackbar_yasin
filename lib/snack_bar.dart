import 'package:flutter/material.dart';

class MySnackBar extends StatelessWidget {
  const MySnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final snackBar = SnackBar(
              content: Text('Deleted'),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  // Some code to undo the deletion.
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                },
              ),
            );

            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: Text('Show SnackBar'),
        ),
      ),
    );
  }
}