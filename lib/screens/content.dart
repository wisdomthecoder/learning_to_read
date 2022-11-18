import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/route_manager.dart';
import 'package:learning_to_read/data/data.dart';
import 'package:learning_to_read/model/drawerData.dart';
import 'package:learning_to_read/styles/config.dart';
import 'package:learning_to_read/styles/textstyles.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({super.key});

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  List<DrawerData> drawerData = [
    DrawerData(name: 'About Us', onTap: () {}, icon: Icons.book),
    DrawerData(name: 'Contact Us', onTap: () {}, icon: Icons.contact_mail),
    DrawerData(name: 'More App', onTap: () {}, icon: Icons.apps),
    DrawerData(name: 'Report', onTap: () {}, icon: Icons.report),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text(
                  "Dashon Educational Apps",
                  style: mediumTextBold,
                ),
                accountEmail: Text(
                  "dashoneduserv@gmail.com",
                  style: mediumText,
                )),
            SwitchListTile(
              title: Text('Dark Theme'),
              value: currentTheme.isDark,
              onChanged: (value) {
                currentTheme.switchTheme();
              },
            ),
            ...drawerData.map((e) => ListTile(
                  leading: Icon(e.icon),
                  title: Text(
                    e.name,
                    style: mediumText,
                  ),
                  onTap: () => e.onTap,
                ))
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          'Learning to Read',
          style: largeTextBold,
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: content.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 50,
              color: Theme.of(context).brightness == Brightness.dark
                  ? Color.fromARGB(60, 122, 122, 122)
                  : Color.fromARGB(95, 121, 121, 121),
              child: ListTile(
                  title: Text(
                    content[index].name,
                  ),
                  leading: Text(
                    (index + 1).toString(),
                  ),
                  onTap: () => Get.to(() => content[index].page)),
            ),
          ),
        ),
      ),
    );
  }
}
