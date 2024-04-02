import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/Provider/startUpPage_Provider/startUpPage_provider.dart';
import 'package:provider/provider.dart';

class StartUpPage extends StatelessWidget {
  const StartUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    /*using mediaQuery set the width and height on commonly
    to have the common size */

    num width = MediaQuery.of(context).size.width;
    num height = MediaQuery.of(context).size.height;

    /*provider used to to initate the controller in this page
    */
    // final authProvider = Provider.of<StartUpPageProvider>(
    //   context,
    //   listen: false,
    // );
    // authProvider.initController();

    return Scaffold(
      body: SafeArea(
        // used stack to create the ui
        child: Stack(
          children: [
            /* in this i used provider to acheive the rebuild of pages
            with use of provider i  made listview builder to change the
            ui as per the page changes --
            UI images and text is accessed from the StartupPageProvider*/
            Consumer<StartUpPageProvider>(
              builder: (context, value, _) {
                value.initController();
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: value.controller,
                  itemCount: value.images.length,
                  itemBuilder: (context, index) {
                    return Stack(children: [
                      /* in this stack i were added a sizedbox with image and 
                      inthe top i added a container to manage the Opacity of image */
                      SizedBox(
                        width: width / 1,
                        height: height / 1,
                        child: Image.asset(
                          value.images[index],
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        width: width / 1,
                        height: height / 1,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                    ]);
                  },
                );
              },
            ),
            // Netflix main logo
            SizedBox(
              child: Image.asset(
                "assets/Images/4375011_logo_netflix_icon.png",
                scale: 9,
              ),
            ),
            // App bar buttons
            Positioned(
              left: width / 2.6,
              child: SizedBox(
                width: width / 1.7,
                height: height / 11,
                child: Row(
                  children: [
                    SizedBox(
                      width: width / 3.6,
                      child: const Center(
                        child: Text(
                          "PRIVACY",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width / 4.7,
                      child: const Center(
                        child: Text(
                          "SIGN OUT",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    // App bar button ontop function
                    SizedBox(
                      width: width / 14,
                      height: height / 4,
                      child: InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: AlertDialog(
                                  alignment: Alignment.topLeft,
                                  actions: [
                                    Column(
                                      children: [
                                        TextButton(
                                          onPressed: () {},
                                          child: const Text("FAQs"),
                                        ),
                                        TextButton(
                                          onPressed: () {},
                                          child: const Text("HELP"),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: Image.asset(
                          "assets/icons/menu.png",
                          color: Colors.brown[100],
                          cacheHeight: 80,
                          cacheWidth: 60,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            /* This consumer is done to change the text
            of the Ui in the app it's image but i this i tried to 
            have list of String from provider startupPageProvider */
            Consumer<StartUpPageProvider>(
              builder: (context, value, child) {
                return Positioned(
                  top: height / 2,
                  left: width / 6,
                  child: SizedBox(
                    width: width / 1.5,
                    height: height / 3.1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FittedBox(
                          child: Text(
                            value.message[value.currenIndex.round()],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 45,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        FittedBox(
                          child: Text(
                            value.subMessage[value.currenIndex.round()],
                            style: const TextStyle(
                              color: Color.fromARGB(
                                255,
                                172,
                                171,
                                171,
                              ),
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Center(
                          child: FittedBox(
                            child: Text(
                              value.subMessageUnder[value.currenIndex.round()],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height / 120,
                        ),
                        SizedBox(
                          width: width / 1,
                          height: height / 20,
                          child: Center(
                            child: DotsIndicator(
                              axis: Axis.horizontal,
                              dotsCount: value.images.length,
                              position: value.currenIndex.round(),
                              decorator: const DotsDecorator(
                                color: Colors.grey,
                                activeColor: Color.fromARGB(
                                  255,
                                  240,
                                  19,
                                  19,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            Positioned(
              top: height / 1.2,
              left: width / 21,
              child: InkWell(
                splashColor: Colors.amber,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/Netflix_Home',
                  );
                },
                child: Container(
                  width: width / 1.1,
                  height: height / 14,
                  color: const Color.fromARGB(
                    255,
                    255,
                    36,
                    7,
                  ),
                  child: const Center(
                    child: Text(
                      "Restart Your Membership",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
