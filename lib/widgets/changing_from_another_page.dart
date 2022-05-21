import 'package:flutter/material.dart';

class ChangingFromAnotherPage extends StatefulWidget {
  int? numChangeFromAnotherPage = 0;
  final dynamic function;
  ChangingFromAnotherPage(
      {Key? key, this.numChangeFromAnotherPage, this.function})
      : super(key: key);

  @override
  State<ChangingFromAnotherPage> createState() =>
      _ChangingFromAnotherPageState();
}

class _ChangingFromAnotherPageState extends State<ChangingFromAnotherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,),
      body: Center(
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  setState(() {
                    widget.numChangeFromAnotherPage =
                        widget.numChangeFromAnotherPage! + 1;
                    widget.function(widget.numChangeFromAnotherPage);
                  });
                },
                child: Text("Click on me")),
            Text("${widget.numChangeFromAnotherPage}")
          ],
        ),
      ),
    );
  }
}
