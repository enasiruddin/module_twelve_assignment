import 'package:flutter/material.dart';
import 'view_model/viewmodel.dart';
import 'widget/desktopLayout.dart';
import 'widget/mobileLayout.dart';
import 'widget/tabletLayout.dart';

class HomePage extends StatelessWidget {
  final ViewModel viewModel = ViewModel();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              viewModel.model.appBarTitle,
              style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            if (screenWidth >600)
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(viewModel.model.menuText[0], style: TextStyle(color: Colors.black)),
                  ),
                  SizedBox(width: 20),
                  TextButton(
                    onPressed: () {},
                    child: Text(viewModel.model.menuText[1], style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
          ],
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: screenWidth <= 600
          ? Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text("Menu"),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text(viewModel.model.menuText[0]),
              onTap: () {},
            ),
            ListTile(
              title: Text(viewModel.model.menuText[1]),
              onTap: () {},
            ),
          ],
        ),
      )
          : null,
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 600) {
            return mobileLayout();
          } else if (constraints.maxWidth > 600 && constraints.maxWidth <= 768) {
            return tabletLayout();
          } else {
            return desktopLayout(context);
          }
        },
      ),
    );
  }



}