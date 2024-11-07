import 'package:flutter/material.dart';
import 'package:notes/components/drawer_tile.dart';
import 'package:notes/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          //header
          DrawerHeader(
            child: Icon(Icons.edit),
          ),

          const SizedBox(height: 25),

          //notes title
          DrawerTile(
            title:"Notes",
            leading:const Icon(Icons.home),
            onTap:() => Navigator.pop(context),
            ),


          //settings title
          DrawerTile(
            title:"Settings",
            leading: const Icon(Icons.settings),
            onTap:() {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(
                builder:(context) => SettingsPage(),
                ),
              );
            },
           ),

       ],
      )
    );
  }
}