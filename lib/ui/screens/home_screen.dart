import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(12),
        color: Colors.green,
        child: Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.amber,
                child: Column(
                  children: [Text("Side bar section")],
                ),
              ),
            ),

            gap,

            // main body
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      child: Text("Header Section"),
                    ),
                  ),
                  gap,
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.pink,
                      child: Text("Tasks section"),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const gap = SizedBox(width: 12, height: 12);
