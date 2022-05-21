import 'package:flutter/material.dart';
import 'package:widgets_of_flutter/widgets/badge_widget.dart';
import 'package:widgets_of_flutter/widgets/changing_from_another_page.dart';
import 'package:widgets_of_flutter/widgets/drop_down_menu_item.dart';
import 'package:widgets_of_flutter/widgets/drop_down_menu_item_with_map.dart';
import 'package:widgets_of_flutter/widgets/expansion_panel_list.dart';
import 'package:widgets_of_flutter/widgets/hero_picture.dart';

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

  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  ///at first we created int with value of 0
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
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: (const Text("You typed a ScaffoldMessenger")),
                      duration: Duration(seconds: 2),
                    ));
                  },
                  child: const Text('ScafoldMasanger')),

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
              BadgeWidget(),

              ///
              ///
              ///
              ///Hero widget for pictures
              ///just take your picture in Hero widget and name the tag
              ///and put the name of the first hero tag in another page too
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
                      child: Image.asset(
                        'assets/image1.jpg',
                        width: MediaQuery.of(context).size.width,
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
              SizedBox(
                height: 20,
              ),

              ///
              ///
              ///
              ///Expansion Panel List
              ///
              ExpansionPanelListSet(),
            ],
          ),
        ),
      ),
    );
  }
}