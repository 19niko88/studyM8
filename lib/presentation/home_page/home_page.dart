import 'package:flutter/material.dart';
import 'package:studym8/resources/theme/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ ListTile(contentPadding: EdgeInsets.only(right: 10.0),
              leading: const CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage('resources/images/Ellipse 1.png'),
              ),
              title: const Text('Good Morning', style: TextStyle(
                  fontSize: 16.0, fontWeight: FontWeight.w400)),
              subtitle: const Text('Benjamin', style: TextStyle(
                  fontSize: 16.0, fontWeight: FontWeight.bold)),
          trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications, size: 32.0, color: primaryColor)
        ),
            ),
              TextField(
                onTap: (){},
                decoration: InputDecoration(
                  prefixIcon: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.0),
                      child: Icon(Icons.search, color: Colors.white, size: 30.0)),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
      contentPadding: const EdgeInsets.symmetric(vertical: 16.0),
      filled: true,
      fillColor: primaryColor,
      hintText: 'Search',
      hintStyle: const TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w400),
                  suffixIcon: GestureDetector(
                    child: Image.asset('resources/images/Vector1.png'),
                  )
              )),
              Container(
                decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.0,vertical: 16.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Today’s Special', style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                              Text('30%', style: TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))
                            ],
                          ),
                          Padding(
                              padding: EdgeInsets.only(bottom: 24.0),
                              child: Text("Get a discount for every course order!Only Valid for today", style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white))
                          ),
                        ])
                ),


              ),


            ],
          ),
        ),
      ),
    );
  }
}
