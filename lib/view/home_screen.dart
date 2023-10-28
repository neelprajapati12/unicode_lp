import 'package:flutter/material.dart';
import 'package:unicode_lp_tasks/helper/util.dart';
import 'package:unicode_lp_tasks/view/about_page.dart';
import 'package:unicode_lp_tasks/view/login_screen.dart';

class HomeScreen extends StatefulWidget {
  final username;
  const HomeScreen({this.username, super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int n = 4;
  final search = TextEditingController();
  List<bool> buttoncolor = [true, false, false, false];
  final pageviewController =
      PageController(viewportFraction: 0.8, keepPage: true, initialPage: 0);
  List<ModalHelper> information = [
    ModalHelper(
        title: "Hotel Inn", location: "Mumbai", images: "assets/hotel1.png"),
    ModalHelper(
        title: "Radisson", location: "Mumbai", images: "assets/radisson.png"),
    ModalHelper(
        title: "J W Marriot",
        location: "Mumbai",
        images: "assets/jwmarriot.png"),
    ModalHelper(
        title: "Hotel Ibis",
        location: "Mumbai",
        images: "assets/hotelibis.png"),
    ModalHelper(
        title: "Grand Hyatt",
        location: "Mumbai",
        images: "assets/grandhyatt.png"),
  ];
  List<Bestforyou> cards = [
    Bestforyou(
        title: "Grand hyatt", price: "2000rs", images: "assets/grandhyatt.png"),
    Bestforyou(
        title: "Radisson", price: "2000rs", images: "assets/radisson.png"),
    Bestforyou(
        title: "J W Marriot", price: "2000rs", images: "assets/jwmarriot.png"),
    Bestforyou(
        title: "Hotel Ibis", price: "2000rs", images: "assets/hotelibis.png"),
    Bestforyou(
        title: "Hotel Inn", price: "2000rs", images: "assets/hotel1.png"),
    Bestforyou(title: "Hotel Inn", price: "2000rs", images: "assets/hotel1.png")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Discover",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          hSize(20),
          SizedBox(
            height: 30,
            width: 30,
            child: Image.asset("assets/notification.png"),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.height / 2.8,
                    child: TextField(
                      cursorColor: Colors.black,
                      controller: search,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search Hotel...",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 212, 210, 210),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 212, 210, 210),
                          ),
                        ),
                        fillColor: Color.fromARGB(255, 212, 210, 210),
                        filled: true,
                      ),
                    ),
                  ),
                ),
                hSize(5),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 8,
                  height: MediaQuery.of(context).size.width / 8,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                    ),
                    child: Image.asset("assets/setting.png"),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    buttoncolor = [true, false, false, false];
                    setState(() {});
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttoncolor[0]
                        ? Theme.of(context).primaryColor
                        : Color.fromARGB(255, 212, 210, 210),
                  ),
                  child: Text(
                    "Near You",
                    style: TextStyle(
                      color: buttoncolor[0] ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    buttoncolor = [false, true, false, false];
                    setState(() {});
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttoncolor[1]
                        ? Theme.of(context).primaryColor
                        : Color.fromARGB(255, 212, 210, 210),
                  ),
                  child: Text(
                    "Best Offers",
                    style: TextStyle(
                      color: buttoncolor[1] ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    buttoncolor = [false, false, true, false];
                    setState(() {});
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttoncolor[2]
                        ? Theme.of(context).primaryColor
                        : Color.fromARGB(255, 212, 210, 210),
                  ),
                  child: Text(
                    "Top Rates",
                    style: TextStyle(
                      color: buttoncolor[2] ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    buttoncolor = [false, false, false, true];
                    setState(() {});
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttoncolor[3]
                        ? Theme.of(context).primaryColor
                        : Color.fromARGB(255, 212, 210, 210),
                  ),
                  child: Text(
                    "Popular",
                    style: TextStyle(
                      color: buttoncolor[3] ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            vSize(15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Near From You",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See More",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            Container(
              height: 400,
              child: ListView.builder(
                itemCount: information.length,
                itemBuilder: (context, index) {
                  ModalHelper response = information[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AboutPage(
                                      title: information[index].title!,
                                      location: information[index].location!,
                                      images: information[index].images!,
                                    )));
                      },
                      child: Container(
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(response.images!),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                response.title!,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                              Text(
                                response.location!,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Best For You",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See More",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection:
                  Axis.vertical, // Use shrinkWrap to avoid conflicts
              itemCount: cards.length,
              itemBuilder: (context, index) {
                Bestforyou responses = cards[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AboutPage(
                                    title: cards[index].title!,
                                    location: cards[index].price!,
                                    images: cards[index].images!,
                                  )));
                    },
                    child: Card(
                      elevation: 0,
                      child: Row(
                        children: [
                          Container(
                            height: MediaQuery.sizeOf(context).width * 0.3,
                            width: MediaQuery.sizeOf(context).width * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage("${responses.images}"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          hSize(15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${cards[index].title}",
                                style: TextStyle(
                                    fontSize: 30, color: Colors.black),
                              ),
                              vSize(10),
                              Text(
                                "${cards[index].price}",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}


// SizedBox(
//             height: MediaQuery.sizeOf(context).height * 0.3,
//             child: PageView.builder(
//                 controller: pageviewcontroller,
//                 itemCount: n,
//                 itemBuilder: (context, index) {
//                   return Container(
//                     color: n % 2 == 0 ? Colors.red : Colors.yellow,
//                   );
//                 }),
//           )

// Container(
              //   width: 60,
              //   height: MediaQuery.of(context).size.height * 0.072,
              //   decoration: BoxDecoration(
              //     color: Theme.of(context).primaryColor, // Background color
              //     borderRadius: BorderRadius.circular(10), // Rounded corners
              //   ),
              //   child: Center(
              //     child: Image.asset(
              //       "assets/setting.png",
              //       color: Colors.black,
              //     ),
              //   ),
              // ),
 // drawer: Drawer(
      //   child: ListView(
      //     children: [
      //       DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Theme.of(context).primaryColor,
      //         ),
      //         child: Text(
      //           "Welcome \n${widget.username}",
      //           style: TextStyle(fontSize: 25),
      //         ),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.logout_outlined),
      //         title: Text(
      //           "LogOut",
      //           style: TextStyle(color: Colors.red),
      //         ),
      //         onTap: () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => LoginScreen()));
      //         },
      //       ),
      //     ],
      //   ),
      // ),
