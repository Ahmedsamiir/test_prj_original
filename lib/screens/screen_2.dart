import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:test_prj/providers/horizontal_items.dart';
import 'package:test_prj/providers/vertical_items.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  static const routeName = '/screen_2';

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          margin: const EdgeInsets.only(top: 50.0, left: 5.0),
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Section 1 (${Provider.of<HorizontalItemsProvider>(context).itemsCount})",
                style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: Provider.of<HorizontalItemsProvider>(context)
                        .itemsCount,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, int index) {
                      return Container(
                        margin: const EdgeInsets.all(15.0),
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8.0),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 5.0,
                                  spreadRadius: 5.0)
                            ]),
                        width: 200,
                        height: 10,
                        child: Center(
                          child: Text(
                            Provider.of<HorizontalItemsProvider>(context).generateItemAt(index + 1).toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.black),
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Section 2 (${Provider.of<VerticalItemsProvider>(context).itemsCount})",
                style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  width: 300,
                  height: 300,
                  child: ListView.builder(
                      itemCount: Provider.of<VerticalItemsProvider>(context)
                          .itemsCount,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, int index) {
                        return Container(
                          margin: const EdgeInsets.all(15.0),
                          padding: const EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(8.0),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 5.0,
                                    spreadRadius: 5.0)
                              ]),
                          width: 200,
                          height: 100,
                          child: Center(
                            child: Text(
                              Provider.of<VerticalItemsProvider>(context).generateItemAt(index + 1).toString(),
                              style: const TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black),
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      );
}
