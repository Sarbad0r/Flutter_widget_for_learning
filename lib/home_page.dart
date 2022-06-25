import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widgets_of_flutter/state_managment/get_x.dart';
import 'package:widgets_of_flutter/widgets/badge_widget.dart';
import 'package:widgets_of_flutter/widgets/changeSameWidget.dart';
import 'package:widgets_of_flutter/widgets/changing_from_another_page.dart';
import 'package:widgets_of_flutter/widgets/checkbox_widget.dart';
import 'package:widgets_of_flutter/widgets/drop_down_menu_item.dart';
import 'package:widgets_of_flutter/widgets/drop_down_menu_item_with_map.dart';
import 'package:widgets_of_flutter/widgets/expansion_panel_list.dart';
import 'package:widgets_of_flutter/widgets/grid_view_widget.dart';
import 'package:widgets_of_flutter/widgets/hero_picture.dart';
import 'package:widgets_of_flutter/widgets/http_post.dart';
import 'package:widgets_of_flutter/widgets/list_tile_widget.dart';
import 'package:widgets_of_flutter/widgets/list_view_horizontal.dart';
import 'package:widgets_of_flutter/widgets/refreshingByPoping.dart';
import 'package:widgets_of_flutter/widgets/sliver_app_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int numChangeFromAnotherPage = 0;

  void changeNum(int num) {
    setState(() {
      numChangeFromAnotherPage = num;
    });
  }

  int firstNumber = 0;
  int secondNumber = 0;

  List<String> a = ['a', 'b'];
  List<int> numbers = List.generate(2, (index) => index);
  void setSt() {
    setState(() {});
  }

  void refreshFNumber(int fNumber) {
    setState(() {
      firstNumber = fNumber;
    });
  }

  void refreshSNumber(int sNumber) {
    setState(() {
      secondNumber = sNumber;
    });
  }

  var thisNumber = 1;

  @override
  Widget build(BuildContext context) {
    var _textStyle = const TextStyle(fontSize: 20, color: Colors.redAccent);
    var getGetx = Get.put(GetXclass());
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {
                setSt();
              },
              child: Text("Sync"))
        ],
        elevation: 0,
        title: const Text("For learning widgets"),
      ),
      body: Scrollbar(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Row(
                children: [
                  ///
                  ///changing from another page
                  ///at first we created int with value of 05
                  ///and new setState func that will change our value
                  ///and we send these int and func to our child widget
                  ///and there we will change our value
                  ///
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.amber)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChangingFromAnotherPage(
                                      numChangeFromAnotherPage:
                                          numChangeFromAnotherPage,
                                      function: changeNum,
                                    )));
                      },
                      child: const Text(
                          "Changing parent widget from another page")),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(child: Text("$numChangeFromAnotherPage"))
                ],
              ),

              ///
              ///This is ScaffoldMessenger
              ///
              ElevatedButton(
                  style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith((states) {
                    return states.contains(MaterialState.pressed)
                        ? Colors.red
                        : null;
                  })),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: (const Text("You typed a ScaffoldMessenger")),
                      duration: Duration(seconds: 2),
                    ));
                  },
                  child: const Text('ScafoldMasanger with color after click')),

              ///
              ///
              ///
              ///DropDownMenuItem
              ///
              const DropDownMenuItem(),

              ///
              ///
              ///

              ///DropDownMenuItem with Map
              ///
              ///
              const DropDownMenuItemWithMap(),

              ///
              ///
              ///
              ///Badge Widget
              ///
              Text(
                "Badge",
                style: _textStyle,
              ),
              BadgeWidget(),

              ///
              ///
              ///
              ///Hero widget for pictures
              ///just take your picture in Hero widget and name the tag
              ///and put the name of the first hero tag in another page too
              Text(
                "Hero widget with ClipOval",
                style: _textStyle,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HeroPicture()));
                },
                child: Stack(
                  children: [
                    Hero(
                      tag: 'any',
                      child: ClipOval(
                        //we used ClipOval widget thats why our pictuer is circle

                        child: Image.asset(
                          'assets/image1.jpg',
                          width: MediaQuery.of(context).size.width,
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 0,
                      child: Text(
                        "The Picture",
                        style: TextStyle(color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              ///
              ///
              ///
              ///Expansion Panel List
              ///
              Text(
                "Expansion Panel List",
                style: _textStyle,
              ),
              ExpansionPanelListSet(),

              ///
              ///
              ///
              const SizedBox(
                height: 20,
              ),

              ///
              ///
              ///Gridview widget
              Text(
                "GridView",
                style: _textStyle,
              ),
              const GridViewWidget(),

              ///
              ///
              const SizedBox(
                height: 20,
              ),

              ///
              ///
              ///
              Text(
                "Horizontal ListView",
                style: _textStyle,
              ),
              const ListViewHorizontal(),

              ///
              ///
              /// SliverAppBar very beatiful app bar
              Text(
                "Sliver App Bar",
                style: _textStyle,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SliverAppBarWidget()));
                  },
                  child: const Text('Sliver AppBar Widget')),

              ///
              ///
              ///
              ///Checkbox widget
              Text(
                "CheckBox",
                style: _textStyle,
              ),
              CheckBoxWidget(),

              ///
              ///
              ///
              const SizedBox(
                height: 20,
              ),

              ///
              ///
              ///
              ///
              Text(
                "ListTile",
                style: _textStyle,
              ),

              ///ListTile widget
              const ListTileWidget(),

              HttpPost(
                setSt: setSt,
              ),
              const SizedBox(
                height: 50,
              ),
              Text("Change values with Same Widget", style: _textStyle),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => ChangeSameWidget(
                                      checkNumber: "firstNumber",
                                      number: firstNumber,
                                      refreshParent: refreshFNumber,
                                    ))));
                      },
                      child: Text("$firstNumber")),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChangeSameWidget(
                                      checkNumber: "secondNumber",
                                      number: secondNumber,
                                      refreshParent: refreshSNumber,
                                    )));
                      },
                      child: Text("$secondNumber"))
                ],
              ),

              Text(
                "REFRSHING THIS PAGE FROM ANOTHOTHER PAGE BY POPING"
                    .toLowerCase(),
                style: _textStyle,
              ),
              //here we will await a string from another page, when anohter page pops and send some string then we will refresing this page
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        int? getNumber = await Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RefreshingByPoping(
                                      number: thisNumber,
                                    )));

                        if (getNumber == null) {
                          print("null");
                          return;
                        } else if (getNumber.isNaN) {
                          print("error");
                        } else {
                          thisNumber = getNumber;
                          setState(() {});
                        }
                      },
                      child: Text("click"),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.amber)),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text("$thisNumber")
                  ],
                ),
              ),

              Text(
                "Flutter GetX is better than Provider but two off them is good",
                style: _textStyle,
              ),
              Obx((() => ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: getGetx.listOfIntegers.length,
                  itemBuilder: (context, index) {
                    return Text(getGetx.listOfIntegers[index].toString());
                  }))),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        getGetx.addFiveInList();
                      },
                      child: Text("Click and see how getx works")),
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          getGetx.ifThereFiveItWillBeThree();
                        },
                        child: Text("if there are 5 it will be 3")),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
