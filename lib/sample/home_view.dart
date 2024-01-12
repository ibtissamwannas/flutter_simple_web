import 'package:flutter/material.dart';
import 'package:flutter_web/sample/widget/custom_drawer.dart';
import 'package:flutter_web/sample/widget/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDBDBDB),
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      appBar: MediaQuery.of(context).size.width < 900 + 32
          ? AppBar(
              backgroundColor: Colors.black,
              leading: GestureDetector(
                onTap: () {
                  scaffoldKey.currentState?.openDrawer();
                },
                child: const Icon(
                  Icons.menu,
                ),
              ),
            )
          : null,
      body: const HomeViewWidget(),
    );
  }
}

// class CustomAdaptiveAppBar extends StatelessWidget implements PreferredSizeWidget{
//   const CustomAdaptiveAppBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  LayoutBuilder(builder: (context, constrains) {
//         if (constrains.maxWidth > 900) {
//           return Container();
//         }else{
//           return AppBar(
//         backgroundColor: Colors.black,
//         leading: GestureDetector(
//           onTap: () {
//             scaffoldKey.currentState?.openDrawer();
//           },
//           child: const Icon(
//             Icons.menu,
//           ),
//         ),
//       );
//         }
//       });
//   }
  
//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => const Size.fromHeight(56,);
// }
