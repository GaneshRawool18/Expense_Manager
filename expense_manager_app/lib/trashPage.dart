import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrashPage extends StatefulWidget {
  const TrashPage({super.key});

  @override
  State<TrashPage> createState() => _TrashPageState();
}

class _TrashPageState extends State<TrashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const TrashPage();
                    }));
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Icon(Icons.menu),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Trash",
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                const Icon(Icons.arrow_drop_down_outlined)
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 20),
                    child: Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(159, 156, 156, 1),
                              offset: Offset(1, 2),
                              blurRadius: 8,
                              blurStyle: BlurStyle.outer,
                            )
                          ]),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 50, right: 20, top: 10),
                            child: Row(
                              children: [
                                const Text(
                                  "Medicine",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const Spacer(),
                                // Container(
                                //   width: 15,
                                //   height: 15,
                                //   decoration:  BoxDecoration(
                                //     shape: BoxShape.circle,
                                //     color: Color.fromRGBO(146, 113, 49, 1)
                                //   ),
                                // )
                                Image.asset("assets/images/Subtract.png"),

                                const Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "500",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 50, top: 10),
                            child: Row(
                              children: [
                                Text(
                                  "Lorem Ipsum is simply dummy text of the ",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Row(
                            children: [
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "3 June | 11:50 AM",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  
  }
}