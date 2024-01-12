import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: LayoutBuilder(builder: (context, constrains) {
        // log(constrains.maxWidth.toString());
        if (constrains.maxWidth <= 500) {
          return const MobileLayout();
        } else {
          return const DesktopLayout();
        }
      }),
    );
  }
}

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    number = index + 1;
                    setState(() {});
                  },
                  child: ListTile(
                    title: Container(
                      color: Colors.green,
                      margin: const EdgeInsets.only(
                        bottom: 20,
                      ),
                      padding: const EdgeInsets.all(
                        20,
                      ),
                      child: Text(
                        "${index + 1}",
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                "$number",
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return DetailsView(number: index + 1);
            }));
          },
          child: ListTile(
            title: Container(
              color: Colors.green,
              margin: const EdgeInsets.only(
                bottom: 20,
              ),
              padding: const EdgeInsets.all(
                20,
              ),
              child: Text(
                "${index + 1}",
              ),
            ),
          ),
        );
      },
    );
  }
}

class DetailsView extends StatelessWidget {
  final int number;
  const DetailsView({
    super.key,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          number.toString(),
        ),
      ),
    );
  }
}
