import 'package:flutter/material.dart';
import 'package:unicode_lp_tasks/helper/util.dart';

class AboutPage extends StatefulWidget {
  final String title;
  final String images;
  final String location;

  AboutPage(
      {required this.title,
      required this.images,
      required this.location,
      Key? key})
      : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  List<Amenities> amenities = [
    Amenities(amenity: "Wifiiiiii", icon: Icon(Icons.wifi)),
    Amenities(amenity: "AC", icon: Icon(Icons.ac_unit)),
    Amenities(amenity: "Bath", icon: Icon(Icons.bathtub_outlined)),
    Amenities(amenity: "BBQ Grill", icon: Icon(Icons.outdoor_grill_outlined)),
    Amenities(amenity: "Pool", icon: Icon(Icons.pool)),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          actions: [
            SizedBox(
              width: 70,
              child: Icon(
                Icons.bookmark_border,
              ),
            ),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        floatingActionButton: Align(
          alignment: Alignment.bottomCenter,
          child: FloatingActionButton.extended(
            onPressed: () {
              // Add your FAB's functionality here
            },
            label: Text("Book Now"),
            backgroundColor: Colors.green,
          ),
          // child: FloatingActionButton(
          //   onPressed: () {},
          //   child: Text("BOOK NOW"),
          // ),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage("${widget.images}"),
                            fit: BoxFit.fill),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${widget.title}",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                            Text(
                              "${widget.location}",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Description",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Text(
                        "Facilities provided inside a hotel room may range from a modest-quality mattress in a small room to large suites with bigger, higher-quality beds, a dresser, a refrigerator, and other kitchen facilities, upholstered chairs, a flat-screen television, and en-suite bathrooms.",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Amenities",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  // Create a horizontal scrollable list of containers
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        //physics: NeverScrollableScrollPhysics(),
                        itemCount: amenities.length,
                        itemBuilder: (context, index) {
                          Amenities response = amenities[index];
                          return Container(
                            // Set a fixed width for the container
                            margin: EdgeInsets.only(
                                right: 10), // Add margin for spacing
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.green, width: 2),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    response.icon!,
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "${response.amenity}",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Gallery",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Positioned(
//                     bottom: 0,
//                     left: 10,
//                     right: 0,
//                     child: Container(
//                       color: Colors.white,
//                       padding: EdgeInsets.all(16),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             "Price: \$xxx.xx", // Replace with your price
//                             style: TextStyle(fontSize: 18),
//                           ),
//                           ElevatedButton(
//                             onPressed: () {
//                               // Handle the booking button press
//                             },
//                             child: Text("Book Now"),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),