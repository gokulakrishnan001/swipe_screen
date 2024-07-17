import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _list = <Widget>[
    _HomeScreenState().ScatteredList(),
  ];

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
                style: TextStyle(color: Color.fromARGB(255, 41, 138, 218)),
              ),
            ],
          )),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TextView(),
        ButtonView(),
        Expanded(
          child: PageView.builder(
              itemCount: 2,
              reverse: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ScatteredList()),
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
        style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 61, 1, 71)),
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
          width: 235,
          height: 134,
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
                  height: 8,
                ),
                Text(
                  "             drag to the person \n             you want to send money",
                  style: TextStyle(
                      fontSize: 11,
                      color: Color.fromARGB(255, 207, 205, 205),
                      fontWeight: FontWeight.w100),
                )
              ]),
        ),
        const SizedBox(
          width: 18,
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

  Widget ScatteredList() {
    return StaggeredGrid.count(
      crossAxisCount: 4,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: [
        StaggeredGridTile.count(
          crossAxisCellCount: 3,
          mainAxisCellCount: 2,
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.blueAccent,
            child: Image.network(
              'https://img.icons8.com/?size=100&id=23280&format=png&color=000000',
              fit: BoxFit.cover,
            ),
          ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 2,
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.amberAccent,
            child: Image.network(
              'https://img.icons8.com/?size=100&id=108337&format=png&color=000000',
              fit: BoxFit.cover,
            ),
          ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 2,
          child: CircleAvatar(
            radius: 50,
            backgroundColor: Colors.cyan,
            child: Image.network(
              'https://img.icons8.com/?size=100&id=18738&format=png&color=000000',
              fit: BoxFit.cover,
            ),
          ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 3,
          mainAxisCellCount: 2,
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Color.fromARGB(255, 201, 43, 140),
            child: Image.network(
              'https://img.icons8.com/?size=100&id=23301&format=png&color=000000',
              fit: BoxFit.cover,
            ),
          ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 4,
          mainAxisCellCount: 1,
          child: CircleAvatar(
            radius: 40,
            backgroundColor: const Color.fromARGB(255, 236, 158, 129),
            child: Image.network(
              'https://img.icons8.com/?size=512w&id=23309&format=png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
