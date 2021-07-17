import 'package:estate_plus/frontend/providers/app_provider.dart';
import 'package:estate_plus/frontend/widgets/side_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context, listen: false);
    return Scaffold(
      drawer: SideBarWidget(
        selected: 'dashboard',
      ),
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            child: Text("Change Theme"),
            onPressed: () => appProvider.changeTheme(),
          ),
          Icon(
            Icons.home,
            size: 100,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
