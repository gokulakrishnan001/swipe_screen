import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Transfer",
            style: TextStyle(fontSize: 20),
          ),
          leadingWidth: 100,
          leading: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 10,
              ),
              Icon(MaterialIcons.arrow_back_ios),
              Text(
                'Account',
                style: TextStyle(color: Color.fromARGB(255, 2, 46, 82)),
              ),
            ],
          )),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TextView(),
        ButtonView(),
        SizedBox(
          height: 428,
        ),
        BottomView()
      ]),
    );
  }

  Widget TextView() {
    return Container(
      padding: EdgeInsets.all(20),
      child: const Text(
        "Who do you want to \ntransfer money to?",
        style: TextStyle(fontSize: 35, color: Color.fromARGB(255, 61, 1, 71)),
      ),
    );
  }

  Widget ButtonView() {
    return Container(
        padding: const EdgeInsets.all(20),
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
          label: const Expanded(
            child: Text(
              ' New',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Color.fromARGB(255, 71, 58, 58)),
              fixedSize: MaterialStateProperty.all(Size(130, 50))),
        ));
  }

  Widget BottomView() {
    return Row(
      children: [
        Container(
          width: 250,
          height: 200,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 38, 89, 197),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(200),
            ),
          ),
          child: const Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("        Salary",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w700)),
                Text(
                  "      \$12300",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "       drag to the person \n       you want to send money",
                  style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 207, 205, 205),
                      fontWeight: FontWeight.w100),
                )
              ]),
        ),
        const SizedBox(
          width: 30,
        ),
        const CircleAvatar(
          radius: 45,
          backgroundColor: Color.fromARGB(255, 197, 195, 195),
          child: Text(
            "View All",
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
