import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        centerTitle: true,
        title: Text(
          "SKYLENIA",
          style: TextStyle(
            fontSize: 21,
            letterSpacing: 15,
            color: Colors.amber[200],
            fontWeight: FontWeight.w400,
          ),
        ),
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Rahatul Islam Shahi", style: TextStyle(color: Colors.white),
              ),
              accountEmail: Text("shahi69@gmail.com", style: TextStyle(color: Colors.white70),
              ),
              decoration: BoxDecoration(color: Colors.indigo[700]),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYDHyRftJaZ53vCrRLLPt9txivVJ8Asky_qsTW45aJJLpb1iMay2y0gV9jgnUMvxQoiFs&usqp=CAU"
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.man, color: Colors.indigo[800]),
              title: Text("Man"),
              subtitle: Text("Clothing,Shoes & More..."),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.indigo[800]),
              onTap: () {},
            ),

            SizedBox(height: 15),

            ListTile(
              leading: Icon(Icons.woman, color: Colors.pink[400]),
              title: Text("Woman"),
              subtitle: Text("Clothing,Shoes & More..."),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.pink[400]),
              onTap: () {},
            ),

            SizedBox(height: 15),

            ListTile(
              leading: Icon(Icons.baby_changing_station_rounded, color: Colors.teal[400]),
              title: Text("Baby"),
              subtitle: Text("Clothing,Shoes & More..."),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.teal[400]),
              onTap: () {},
            ),

            SizedBox(height: 15),

            ListTile(
              leading: Icon(Icons.hardware_outlined, color: Colors.orange[600]),
              title: Text("Computer's part"),
              subtitle: Text("Keyboard,Gaming & More..."),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.orange[600]),
            ),

            SizedBox(height: 15),

            ListTile(
              leading: Icon(Icons.settings, color: Colors.grey[700]),
              title: Text("Setting"),
              onTap: () {},
            ),
          ],
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search items...",
            prefixIcon: Icon(Icons.search, color: Colors.indigo[900]),
            filled: true,
            fillColor: Colors.grey[200],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
