import 'package:flutter/material.dart';

class RefreshingByPoping extends StatefulWidget {
  int? number;
  RefreshingByPoping({Key? key, this.number}) : super(key: key, );

  @override
  State<RefreshingByPoping> createState() => _RefreshingByPopingState();
}

class _RefreshingByPopingState extends State<RefreshingByPoping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context, widget.number = widget.number!+1);
        } , icon: Icon(Icons.arrow_back)),
      ),
    );
  }
}