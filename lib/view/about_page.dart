import 'package:flutter/material.dart';
import 'package:unicode_lp_tasks/helper/util.dart';

class AboutPage extends StatefulWidget {
  final String? title;
  final String? images;
  final String? location;
  final String? price;

  AboutPage(
      {required this.title,
      required this.images,
      required this.location,
      required this.price,
      Key? key})
      : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  List<Amenities> amenities = [
    Amenities(amenity: "Wifi", icon: const Icon(Icons.wifi)),
    Amenities(amenity: "AC", icon: const Icon(Icons.ac_unit)),
    Amenities(amenity: "Bath", icon: const Icon(Icons.bathtub_outlined)),
    Amenities(
        amenity: "BBQ Grill", icon: const Icon(Icons.outdoor_grill_outlined)),
    Amenities(amenity: "Pool", icon: const Icon(Icons.pool)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        actions: [
          const SizedBox(
            width: 70,
            child: Icon(
              Icons.bookmark_border,
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: NetworkImage("${widget.images}"),
                          fit: BoxFit.fill),
                    ),
                    // child: Padding(
                    //   padding: const EdgeInsets.all(10.0),
                    //   child: Column(
                    //     mainAxisAlignment: MainAxisAlignment.end,
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       Text(
                    //         "${widget.title}",
                    //         style: TextStyle(fontSize: 30, color: Colors.white),
                    //       ),
                    //       Text(
                    //         "${widget.location}",
                    //         style: TextStyle(fontSize: 20, color: Colors.white),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 10),
                  child: Text(
                    "${widget.title}",
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      const Icon(Icons.location_pin),
                      hSize(10),
                      Text(
                        "${widget.location}",
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                vSize(10),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Description",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: const Text(
                      "Facilities provided inside a hotel room may range from a modest-quality mattress in a small room to large suites with bigger, higher-quality beds, a dresser, a refrigerator, and other kitchen facilities, upholstered chairs, a flat-screen television, and en-suite bathrooms.",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Amenities",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                      physics: const BouncingScrollPhysics(),
                      itemCount: amenities.length,
                      itemBuilder: (context, index) {
                        Amenities response = amenities[index];
                        return Container(
                          // Set a fixed width for the container
                          margin: const EdgeInsets.only(
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
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "${response.amenity}",
                                    style: const TextStyle(fontSize: 18),
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
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Availability",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                // Container(
                //   child: Row(
                //     children: [],
                //   ),
                // )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              // decoration: BoxDecoration(
              //   boxShadow: const [
              //     BoxShadow(
              //       color: Colors.grey,
              //       offset: Offset(0, 2),
              //       blurRadius: 5,
              //       spreadRadius: 0,
              //     ),
              //   ],
              //   color: Colors.white,
              // ),
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Price(${widget.price})", // Replace with your price
                    style: const TextStyle(fontSize: 18),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle the booking button press
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                    ),
                    child: const Text("Book Now"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


 // floatingActionButton: Align(
      //   alignment: Alignment.bottomCenter,
      //   child: FloatingActionButton.extended(
      //     onPressed: () {
      //       // Add your FAB's functionality here
      //     },
      //     label: Text("Book Now"),
      //     backgroundColor: Colors.green,
      //   ),
      //   // child: FloatingActionButton(
      //   //   onPressed: () {},
      //   //   child: Text("BOOK NOW"),
      //   // ),
      // ),