import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/bloc/app_bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final textTheme = Theme.of(context).textTheme;
    final appBloc = Provider.of<AppBloc>(context);
    return Scaffold(
      body: Center(
        child: Container(
          height: height / 2,
          margin: EdgeInsets.all(40),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: appBloc.isEmptyAt(0, 0) == false
                        ? null
                        : () {
                            appBloc.playChance(0, 0);
                          },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(width: 1.0, color: Colors.white),
                          bottom: BorderSide(width: 1.0, color: Colors.white),
                        ),
                      ),
                      height: width / 4,
                      width: width / 4,
                      child: appBloc.isEmptyAt(0, 0) == true
                          ? Container()
                          : Center(
                              child: Text(
                                '${appBloc.elementAt(0, 0)}',
                                style: textTheme.headline4,
                              ),
                            ),
                    ),
                  ),
                  InkWell(
                    onTap: appBloc.isEmptyAt(0, 1) == false
                        ? null
                        : () {
                            appBloc.playChance(0, 1);
                          },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(width: 1.0, color: Colors.white),
                          bottom: BorderSide(width: 1.0, color: Colors.white),
                        ),
                      ),
                      height: width / 4,
                      width: width / 4,
                      child: appBloc.isEmptyAt(0, 1) == true
                          ? Container()
                          : Center(
                              child: Text(
                                '${appBloc.elementAt(0, 1)}',
                                style: textTheme.headline4,
                              ),
                            ),
                    ),
                  ),
                  InkWell(
                    onTap: appBloc.isEmptyAt(0, 2) == false
                        ? null
                        : () {
                            appBloc.playChance(0, 2);
                          },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(width: 0.0, color: Colors.white),
                          bottom: BorderSide(width: 1.0, color: Colors.white),
                        ),
                      ),
                      height: width / 4,
                      width: width / 4,
                      child: appBloc.isEmptyAt(0, 2) == true
                          ? Container()
                          : Center(
                              child: Text(
                                '${appBloc.elementAt(0, 2)}',
                                style: textTheme.headline4,
                              ),
                            ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: appBloc.isEmptyAt(1, 0) == false
                        ? null
                        : () {
                            appBloc.playChance(1, 0);
                          },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(width: 1.0, color: Colors.white),
                          bottom: BorderSide(width: 1.0, color: Colors.white),
                        ),
                      ),
                      height: width / 4,
                      width: width / 4,
                      child: appBloc.isEmptyAt(1, 0) == true
                          ? Container()
                          : Center(
                              child: Text(
                                '${appBloc.elementAt(1, 0)}',
                                style: textTheme.headline4,
                              ),
                            ),
                    ),
                  ),
                  InkWell(
                    onTap: appBloc.isEmptyAt(1, 1) == false
                        ? null
                        : () {
                            appBloc.playChance(1, 1);
                          },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(width: 1.0, color: Colors.white),
                          bottom: BorderSide(width: 1.0, color: Colors.white),
                        ),
                      ),
                      height: width / 4,
                      width: width / 4,
                      child: appBloc.isEmptyAt(1, 1) == true
                          ? Container()
                          : Center(
                              child: Text(
                                '${appBloc.elementAt(1, 1)}',
                                style: textTheme.headline4,
                              ),
                            ),
                    ),
                  ),
                  InkWell(
                    onTap: appBloc.isEmptyAt(1, 2) == false
                        ? null
                        : () {
                            appBloc.playChance(1, 2);
                          },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(width: 0.0, color: Colors.white),
                          bottom: BorderSide(width: 1.0, color: Colors.white),
                        ),
                      ),
                      height: width / 4,
                      width: width / 4,
                      child: appBloc.isEmptyAt(1, 2) == true
                          ? Container()
                          : Center(
                              child: Text(
                                '${appBloc.elementAt(1, 2)}',
                                style: textTheme.headline4,
                              ),
                            ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: appBloc.isEmptyAt(2, 0) == false
                        ? null
                        : () {
                            appBloc.playChance(2, 0);
                          },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(width: 0.0, color: Colors.white),
                          right: BorderSide(width: 1.0, color: Colors.white),
                        ),
                      ),
                      height: width / 4,
                      width: width / 4,
                      child: appBloc.isEmptyAt(2, 0) == true
                          ? Container()
                          : Center(
                              child: Text(
                                '${appBloc.elementAt(2, 0)}',
                                style: textTheme.headline4,
                              ),
                            ),
                    ),
                  ),
                  InkWell(
                    onTap: appBloc.isEmptyAt(2, 1) == false
                        ? null
                        : () {
                            appBloc.playChance(2, 1);
                          },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(width: 0.0, color: Colors.white),
                          right: BorderSide(width: 1.0, color: Colors.white),
                        ),
                      ),
                      height: width / 4,
                      width: width / 4,
                      child: appBloc.isEmptyAt(2, 1) == true
                          ? Container()
                          : Center(
                              child: Text(
                                '${appBloc.elementAt(2, 1)}',
                                style: textTheme.headline4,
                              ),
                            ),
                    ),
                  ),
                  InkWell(
                    onTap: appBloc.isEmptyAt(2, 2) == false
                        ? null
                        : () {
                            appBloc.playChance(2, 2);
                          },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(width: 0.0, color: Colors.white),
                          top: BorderSide(width: 0.0, color: Colors.white),
                        ),
                      ),
                      height: width / 4,
                      width: width / 4,
                      child: appBloc.isEmptyAt(2, 2) == true
                          ? Container()
                          : Center(
                              child: Text(
                                '${appBloc.elementAt(2, 2)}',
                                style: textTheme.headline4,
                              ),
                            ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
