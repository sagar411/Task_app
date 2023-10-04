import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget _Element(IconData iconName, String TextName) {
      return Container(
        margin: EdgeInsets.only(left: 8, top: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor,
              child: Icon(
                iconName,
                color: Colors.white,
              ),
              radius: 22,
            ),
            const SizedBox(
              width: 6,
            ),
            Text(
              TextName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
    }

    Future _displayModelSheet(BuildContext context) {
      return showModalBottomSheet(
          context: context,
          builder: (context) => Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 350,
                    color: Colors.black.withOpacity(0.85),
                    child: Container(
                      margin: EdgeInsets.only(left: 16, right: 16),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: _Element(
                                    Icons.category,
                                    "Add Category",
                                  ),
                                ),
                                const VerticalDivider(
                                  color: Colors.white,
                                  thickness: 2,
                                  indent: 0,
                                  endIndent: 0,
                                  width: 2,
                                ),
                                Expanded(
                                  child: _Element(Icons.add_sharp, "Add item"),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            color: Colors.white,
                            height: 1,
                          ),
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: _Element(
                                      Icons.add_shopping_cart, "Add Purchase"),
                                ),
                                const VerticalDivider(
                                  color: Colors.white,
                                  thickness: 2,
                                  indent: 0,
                                  endIndent: 0,
                                  width: 2,
                                ),
                                Expanded(
                                  child: _Element(
                                      Icons.add_shopping_cart, "Add Sale"),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            color: Colors.white,
                            height: 1,
                          ),
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: _Element(Icons.money, "Add Cash In"),
                                ),
                                const VerticalDivider(
                                  color: Colors.white,
                                  thickness: 2,
                                  indent: 0,
                                  endIndent: 0,
                                  width: 2,
                                ),
                                Expanded(
                                  child: _Element(
                                      Icons.money_sharp, "Add Cash Out"),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            color: Colors.white,
                            height: 1,
                          ),
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: _Element(Icons.person, "Add Supplier"),
                                ),
                                const VerticalDivider(
                                  color: Colors.white,
                                  thickness: 2,
                                  indent: 0,
                                  endIndent: 0,
                                  width: 2,
                                ),
                                Expanded(
                                  child: _Element(Icons.group, "Add Customer"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      top: -20,
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: Theme.of(context).primaryColor,
                        child: IconButton(
                          icon: Icon(
                            Icons.close,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ))
                ],
              ),
          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Task App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _displayModelSheet(context);
          },
          child: Text(
            "Button",
            style: TextStyle(color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
          ),
        ),
      ),
    );
  }
}
