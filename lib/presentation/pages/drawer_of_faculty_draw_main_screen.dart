import 'package:flutter/material.dart';
import 'package:nricse123/data/data_source/data.dart';

class DrawerOfFacultyDrawMainScreen extends StatelessWidget {
  const DrawerOfFacultyDrawMainScreen(
      {Key? key, required this.changeUpdate, required this.currentScreen})
      : super(key: key);
  final Function(int) changeUpdate;
  final int currentScreen;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Drawer(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: mainThemeColor),
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              clipBehavior: Clip.antiAlias,
              child: SafeArea(
                child: AnimatedSize(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const CircleAvatar(
                            foregroundImage:
                                AssetImage("asserts/images/admin.png"),
                            radius: 50),
                        Text(
                          "Faculty",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 20, left: 4, right: 4),
                          child: Column(
                            children: [
                              ...listContentDrawerForFaculty.map((e) =>
                                  listContentDrawerForFaculty.indexOf(e) != 1
                                      ? InkWell(
                                          onTap: () {
                                            changeUpdate(
                                                listContentDrawerForFaculty
                                                    .indexOf(e));
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: ListTile(
                                              tileColor: mainThemeColor
                                                  .withOpacity(currentScreen ==
                                                          listContentDrawerForFaculty
                                                              .indexOf(e)
                                                      ? 0.8
                                                      : 0.3),
                                              shape:
                                                  const RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  20))),
                                              title: Text(
                                                e.toString(),
                                                style: TextStyle(
                                                    color: currentScreen ==
                                                            listContentDrawerForFaculty
                                                                .indexOf(e)
                                                        ? Colors.white
                                                        : Colors.black38),
                                              ),
                                            ),
                                          ),
                                        )
                                      : Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Container(
                                            decoration: ShapeDecoration(
                                              color: mainThemeColor
                                                  .withOpacity(0.3),
                                              shape:
                                                  const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(20),
                                                ),
                                              ),
                                            ),
                                            child: ExpansionTile(
                                              title: Text(
                                                e.toString(),
                                              ),
                                              // backgroundColor: Colors.white,
                                              collapsedShape:
                                                  const RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  20))),
                                              textColor: currentScreen ==
                                                      listContentDrawerForFaculty
                                                          .indexOf(e)
                                                  ? Colors.white
                                                  : Colors.black38,
                                              shape:
                                                  const RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  20))),
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    children: [
                                                      ...listOfAcademics.map(
                                                        (e) => InkWell(
                                                          onTap: () {
                                                            changeUpdate(
                                                                listContentDrawerForFaculty
                                                                        .length +
                                                                    listOfAcademics
                                                                        .indexOf(
                                                                            e));
                                                          },
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 10,
                                                                    right: 2,
                                                                    bottom: 2,
                                                                    top: 2),
                                                            child: ListTile(
                                                              tileColor: mainThemeColor
                                                                  .withOpacity(
                                                                      currentScreen ==
                                                                              listContentDrawerForFaculty.length + listOfAcademics.indexOf(e)
                                                                          ? 0.8
                                                                          : 0.3),
                                                              shape: const RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              20))),
                                                              title: Text(
                                                                e.toString(),
                                                                style: TextStyle(
                                                                    color: currentScreen ==
                                                                            listContentDrawerForFaculty.length +
                                                                                listOfAcademics.indexOf(
                                                                                    e)
                                                                        ? Colors
                                                                            .white
                                                                        : Colors
                                                                            .black38),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ))),
    );
  }
}
