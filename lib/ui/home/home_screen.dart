import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/bloc/app_bloc.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

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
                    onTap: appBloc.isEmptyAt(0) == false
                        ? null
                        : () {
                            appBloc.playChance(0);
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
                      child: appBloc.isEmptyAt(0) == true
                          ? Container()
                          : Center(
                              child: Text(
                                '${appBloc.elementAt(0)}',
                                style: textTheme.headline4,
                              ),
                            ),
                    ),
                  ),
                  InkWell(
                    onTap: appBloc.isEmptyAt(1) == false
                        ? null
                        : () {
                            appBloc.playChance(1);
                            setState(() {});
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
                      child: appBloc.isEmptyAt(1) == true
                          ? Container()
                          : Center(
                              child: Text(
                                '${appBloc.elementAt(1)}',
                                style: textTheme.headline4,
                              ),
                            ),
                    ),
                  ),
                  InkWell(
                    onTap: appBloc.isEmptyAt(2) == false
                        ? null
                        : () {
                            appBloc.playChance(2);
                            setState(() {});
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
                      child: appBloc.isEmptyAt(2) == true
                          ? Container()
                          : Center(
                              child: Text(
                                '${appBloc.elementAt(2)}',
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
                    onTap: appBloc.isEmptyAt(3) == false
                        ? null
                        : () {
                            appBloc.playChance(3);
                            setState(() {});
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
                      child: appBloc.isEmptyAt(3) == true
                          ? Container()
                          : Center(
                              child: Text(
                                '${appBloc.elementAt(3)}',
                                style: textTheme.headline4,
                              ),
                            ),
                    ),
                  ),
                  InkWell(
                    onTap: appBloc.isEmptyAt(4) == false
                        ? null
                        : () {
                            appBloc.playChance(4);
                            setState(() {});
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
                      child: appBloc.isEmptyAt(4) == true
                          ? Container()
                          : Center(
                              child: Text(
                                '${appBloc.elementAt(4)}',
                                style: textTheme.headline4,
                              ),
                            ),
                    ),
                  ),
                  InkWell(
                    onTap: appBloc.isEmptyAt(5) == false
                        ? null
                        : () {
                            appBloc.playChance(5);
                            setState(() {});
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
                      child: appBloc.isEmptyAt(5) == true
                          ? Container()
                          : Center(
                              child: Text(
                                '${appBloc.elementAt(5)}',
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
                    onTap: appBloc.isEmptyAt(6) == false
                        ? null
                        : () {
                            appBloc.playChance(6);
                            setState(() {});
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
                      child: appBloc.isEmptyAt(6) == true
                          ? Container()
                          : Center(
                              child: Text(
                                '${appBloc.elementAt(6)}',
                                style: textTheme.headline4,
                              ),
                            ),
                    ),
                  ),
                  InkWell(
                    onTap: appBloc.isEmptyAt(7) == false
                        ? null
                        : () {
                            appBloc.playChance(7);
                            setState(() {});
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
                      child: appBloc.isEmptyAt(7) == true
                          ? Container()
                          : Center(
                              child: Text(
                                '${appBloc.elementAt(7)}',
                                style: textTheme.headline4,
                              ),
                            ),
                    ),
                  ),
                  InkWell(
                    onTap: appBloc.isEmptyAt(8) == false
                        ? null
                        : () {
                            appBloc.playChance(8);
                            setState(() {});
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
                      child: appBloc.isEmptyAt(8) == true
                          ? Container()
                          : Center(
                              child: Text(
                                '${appBloc.elementAt(8)}',
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

  @override
  void dispose() {
    super.dispose();
  }
}
