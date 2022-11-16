import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:send_money_ui/commons/palettes.dart';
import 'package:send_money_ui/views/components/button_component.dart';
import 'package:send_money_ui/views/components/text_component.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Icon(
          Icons.dashboard,
          color: Colors.grey[800],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.wysiwyg_outlined,
                color: Colors.grey[800],
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.account_circle_rounded,
                color: Colors.grey[800],
              ))
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextComponent(
                        text: "Current Balance",
                        color: Colors.grey[50],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextComponent(
                        type: "title",
                        text: "\$4,098.00",
                        color: Colors.grey[50],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextComponent(
                        text: "Updated at 04:30 PM",
                        color: Colors.grey[50],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextComponent(
                        text: "Daily Limit",
                        color: Colors.grey[50],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextComponent(
                        text: "\$120.00",
                        color: Colors.grey[50],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: TextComponent(
                text: "My Cards",
                type: "subTitle",
              ),
              trailing: TextComponent(
                text: "+ Add Card",
                color: Palettes.secondary,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  color: Color(0xfffaf4f2),
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    "assets/imgs/visa.png",
                    fit: BoxFit.cover,
                  ),
                ),
                subtitle: TextComponent(
                  text: "**** **** **** 0329",
                  color: Colors.black,
                ),
                trailing: TextComponent(
                  text: "\$3,098.0",
                  type: "subTitle",
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  color: Color(0xfffaf4f2),
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    "assets/imgs/mastercard.png",
                    fit: BoxFit.cover,
                  ),
                ),
                subtitle: TextComponent(
                  text: "**** **** **** 0329",
                  color: Colors.black,
                ),
                trailing: TextComponent(
                  text: "\$3,098.0",
                  type: "subTitle",
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: TextComponent(
                text: "Quick send",
                type: "subTitle",
              ),
              trailing: IconButton(
                onPressed: null,
                icon: Icon(Icons.more_horiz_outlined),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Container(
                height: 45,
                child: TextField(
                  decoration: InputDecoration(
                    focusColor: Colors.grey,
                    filled: true,
                    fillColor: Color(0xfff4f6fa),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "234 4573 8678",
                  ),
                ),
              ),
              trailing: Container(
                decoration: BoxDecoration(
                    color: Color(0xfff4f6fa),
                    borderRadius: BorderRadius.circular(10)),
                child: IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.account_balance_wallet_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: TextComponent(
                text: "Family Member",
                type: "subTitle",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(right: 4.0),
                          padding: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(100)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 5.0, top: 5.0, bottom: 5),
                            child: Image.asset("assets/imgs/avatar.png"),
                          )),
                      Container(
                          padding: EdgeInsets.all(4.0),
                          margin: EdgeInsets.only(right: 4.0),
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(100)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 5.0, top: 5.0, bottom: 5),
                            child: Image.asset("assets/imgs/avatar.png"),
                          )),
                      Container(
                          margin: EdgeInsets.only(right: 4.0),
                          padding: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(100)),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 5.0, top: 5.0, bottom: 5),
                            child: Image.asset("assets/imgs/avatar.png"),
                          )),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    child: ButtonComponent(
                      type: "primary",
                      title: "Transfert",
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
