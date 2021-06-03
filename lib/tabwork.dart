// import 'package:flutter/material.dart';
// import 'package:welcome/Screens/AddUser/addUser.dart';

// class TabWork extends StatefulWidget {
//   TabWork({Key? key}) : super(key: key);

//   @override
//   _TabWorkState createState() => _TabWorkState();
// }

// class _TabWorkState extends State<TabWork> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 4,
//           child: Scaffold(
            
            
//          body: SafeArea(child: 
//          NestedScrollView(
//                   headerSliverBuilder:
//                       (BuildContext context, bool innerBoxIsScrolled) {
//                     return <Widget>[
//                       SliverOverlapAbsorber(
//                         // sliver: ,
                        
//                         handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
//                             context),
//                         sliver: SliverSafeArea(
//                           top: true,
//                           sliver: SliverAppBar(
//                             pinned:true,

//                             title: _renderHeader(),
//                             flexibleSpace: _renderHeading(),
//                             expandedHeight:250,
//                             backgroundColor: Colors.white,
//                             titleSpacing: 0.0,
//                             floating: true,
                            
//                             snap: true,
//                             primary: true,
//                             automaticallyImplyLeading: false,
//                             // forceElevated: innerBoxIsScrolled,
//                             // bottom: _renderTabBar(context)), //Context Bhejna Hai
//                           ),
//                         ),
//                       )
//                     ];
//                   },
//                   body: _renderView(),
//                 ),
//          ),
//       ),
//     );
//   }
//   Widget _renderView(){
// return TabBarView(
//       physics: NeverScrollableScrollPhysics(),
//       children: [
//         AddUser(),
//         AddUser(),
//         AddUser(),
//         AddUser(),
//       ],
//     );
//   }
//   Widget _renderTabBar(BuildContext context){
//     return PreferredSize(
//       preferredSize: Size.fromHeight(300),
//           child: TabBar(
//         isScrollable: true,
//         indicatorPadding: EdgeInsets.symmetric(
//           horizontal: 10,
//         ),
//         labelPadding: EdgeInsets.symmetric(
//           horizontal: 3.5,
//         ),
//         labelColor: Colors.orange,
//         unselectedLabelColor: Colors.grey[300],
//         indicatorColor:Colors.black,
//         unselectedLabelStyle: TextStyle(
//           fontSize: 17,
//           letterSpacing: 0,
//           fontWeight: FontWeight.w500,
//         ),
//         labelStyle: TextStyle(
//           fontSize: 17,
//           letterSpacing: 0,
//           fontWeight: FontWeight.w500,
//         ),
//         tabs: [
//           Container(
//             width: 90,
//             child: Tab(text: 'All'),
//           ),
//           Container(
//             width: 90,
//             child: Tab(text: "Today"),
//           ),
//           Container(
//             width: 90,
//             child: Tab(text: "Tomorrow"),
//           ),
//           Container(
//             width: 90,
//             child: Tab(text: "This Week"),
//           ),
//         ],
//       ),
//     );
//   }
//   Widget _renderHeading(){
//     return Container(
//         padding: EdgeInsets.only(
//           left: 18,
//           right: 20,
//           top: 60,
//         ),
//         alignment: Alignment.centerLeft,
//         child: ListView(
//           physics: NeverScrollableScrollPhysics(),
//           children: <Widget>[
//             Text(
//               'Events\nNear Me',
//               style: TextStyle(
//                 fontSize: 40,
//                 fontWeight: FontWeight.w800,
//                 color: Colors.orange,
//                 letterSpacing: 1.0,
//               ),
//             ),
//           ],
//         ));
//   }
//   Widget _renderHeader(){
//     return Container(
//       height: 50,
//       color: Colors.black,
//       child: ListTile(
//         leading: IconButton(icon: Icon(Icons.arrow_back,
//         color: Colors.white,
//         ),
//         onPressed: (){},
//         ),
//         title: Text("TabWork",
//         textAlign: TextAlign.center,
//         style: TextStyle(color: Colors.white),
//         ),
        
//       ),
//     );
//   }
// }