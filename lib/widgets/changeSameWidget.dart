import 'package:flutter/material.dart';

class ChangeSameWidget extends StatefulWidget {
  String checkNumber;
  int? number;
  dynamic refreshParent;
  ChangeSameWidget(
      {Key? key, required this.checkNumber, this.number, this.refreshParent})
      : super(key: key);

  @override
  State<ChangeSameWidget> createState() => _ChangeSameWidgetState();
}

class _ChangeSameWidgetState extends State<ChangeSameWidget> {
  int getNumber = 0;
  @override
  void initState() {
    getNumber = widget.number!;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {
                if (widget.checkNumber == "firstNumber") {
                  widget.refreshParent(getNumber);
                  Navigator.pop(context);
                  return;
                } else if (widget.checkNumber == "secondNumber") {
                  widget.refreshParent(getNumber);
                  Navigator.pop(context);
                  return;
                }
              },
              child: Text(
                "Save",
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ))
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      if (getNumber <= 0) return;
                      getNumber--;
                    });
                  },
                  child: Text("-")),
              Text("$getNumber"),
              TextButton(
                  onPressed: () {
                    setState(() {
                      getNumber++;
                    });
                  },
                  child: Text("+"))
            ],
          )
        ],
      ),
    );
  }
}
