import 'package:expense_manager_app/trashPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  void showDeleteDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        title: const Center(
          child: Text(
            'Delete Category',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        content: const Text(
          'Are you sure you want to delete the selected category?',
          textAlign: TextAlign.center,
        ),
        actionsAlignment: MainAxisAlignment.spaceAround,
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(14, 161, 125, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {
              // Handle delete action
              Navigator.of(context).pop();
            },
            child: const Text(
              'Delete',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(140, 128, 128, 0.2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {
              // Handle cancel action
              Navigator.of(context).pop();
            },
            child: const Text(
              'Cancel',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  void categoriesBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
                left: 15,
                top: 15,
                right: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 74,
                  height: 74,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 217, 211, 211)),
                  child: Image.asset("assets/images/pic.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Add",
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        "Image URL",
                        style: GoogleFonts.poppins(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Enter URL",
                            hintStyle: GoogleFonts.poppins(
                                fontSize: 13, fontWeight: FontWeight.w400),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(width: 330))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        "Category",
                        style: GoogleFonts.poppins(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Enter category name",
                            hintStyle: GoogleFonts.poppins(
                                fontSize: 13, fontWeight: FontWeight.w400),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(width: 330))),
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const TrashPage();
              }));
            },
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 30,
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.menu,
                    size: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Categories",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  showDeleteDialog(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 25),
                  child: Container(
                      width: 145,
                      height: 150,
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
                            padding: const EdgeInsets.only(top: 20),
                            child: Image.asset("assets/images/food.png"),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Text(
                              "Food",
                              style: GoogleFonts.poppins(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              GestureDetector(
                onTap: () {
                  showDeleteDialog(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 25),
                  child: Container(
                      width: 145,
                      height: 150,
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
                            padding: const EdgeInsets.only(top: 20),
                            child: Image.asset("assets/images/Fuel.png"),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Text(
                              "Fuel",
                              style: GoogleFonts.poppins(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  showDeleteDialog(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 25),
                  child: Container(
                      width: 145,
                      height: 150,
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
                            padding: const EdgeInsets.only(top: 20),
                            child: Image.asset("assets/images/Medicine.png"),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Text(
                              "Medicine",
                              style: GoogleFonts.poppins(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              GestureDetector(
                onTap: () {
                  showDeleteDialog(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 25),
                  child: Container(
                      width: 145,
                      height: 150,
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
                            padding: const EdgeInsets.only(top: 20),
                            child: Image.asset("assets/images/Shopping.png"),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Text(
                              "Shopping",
                              style: GoogleFonts.poppins(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              categoriesBottomSheet();
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                width: 180,
                height: 46,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(159, 156, 156, 1),
                        offset: Offset(1, 2),
                        blurRadius: 8,
                        blurStyle: BlurStyle.outer,
                      )
                    ]),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/images/add.png"),
                    ),
                    Text(
                      "Add Categories ",
                      style: GoogleFonts.poppins(
                          fontSize: 13, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
