import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  static const routeName = '/screen_1';

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          color: Colors.grey,
          child: Center(
            child: Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 100),
              width: 600,
              height: 800,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: TextButton(
                            child: const Text(
                              "X",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: CupertinoColors.black),
                            ),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            "Title",
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w900,
                                color: Colors.black),
                          ),
                        ),
                        const Text(
                            " Hello, this is the test page, one of the interview stages "),
                      ],
                    ),
                  ),
                  Container(
                    width: 600,
                    height: 350,
                    color: Colors.grey[300],
                    child: const SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Chimamanda Ngozi Adichie's The Danger of a Single Story Ted Talk, in July 2009, explores the negative influences that a “single story” can have and identifies the root of these stories. Adichie argues that single stories often originate from simple misunderstandings or one’s lack of knowledge of others, but that these stories can also have a malicious intent to suppress other groups of people due to prejudice (Adichie). People, especially in their childhood, are “impressionable and vulnerable” when it comes to single stories (Adichie 01:43). Adichie asserts that media and literature available to the public often only tell one story, which causes people to generalize and make assumptions about groups of people. Adichie  also tackles the effect of political and cultural power on stories. Power not only spreads a story, but also makes its ideas persist. Adichie states that power can be used for malintent, through controlling “how [stories] are told, who tells them, when they're told, [and] how many stories are told” (09:25). Using power to manipulate our understanding of others can be evidenced by Adichie’s trip to Mexico, where she realized Mexicans were not the harmful Americans Western media had portrayed them to be",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        primary: Colors.purpleAccent),
                    child: const Text('Test Button'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
