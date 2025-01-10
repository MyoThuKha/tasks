
import 'package:flutter/cupertino.dart';
import 'package:macos_ui/macos_ui.dart';

class HomeScreenMac extends StatefulWidget {
  const HomeScreenMac({super.key});

  @override
  State<HomeScreenMac> createState() => _HomeScreenMacState();
}

class _HomeScreenMacState extends State<HomeScreenMac> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MacosWindow(
      sidebar: Sidebar(minWidth: 200,
      builder:(context, scrollController) {
         return SidebarItems(
            currentIndex: _pageIndex,
            onChanged: (index) {
              setState(() {
                _pageIndex = index;
              });
            },
            items: [
                  SidebarItem(
                    selectedColor: CupertinoColors.activeOrange,
                leading: MacosIcon(CupertinoIcons.home),
                label: Text('Home'),
              ),
              SidebarItem(
                leading: MacosIcon(CupertinoIcons.search),
                label: Text('Explore'),
              ),

            ],
          );

      },),
      child: IndexedStack(
        index: _pageIndex,
        children: [
          MacosScaffold(
            toolBar: ToolBar(
              title: Text('Home'),
            ),
            backgroundColor: CupertinoColors.activeOrange,
            children: [
              ContentArea(

                builder: (context, scrollController) {
                return ListView(
                  controller: scrollController,
                  children: [
                    Text('Home'),
                  ],
                );
              }),

              ResizablePane(builder:(context, scrollController) {
                return Column(
                  children: [
                    Text("hi"),
                  ],
                );
              }, minSize: 100, resizableSide: ResizableSide.top, startSize: 100)
            ],
          ),

          MacosScaffold(
            children: [
              ContentArea(builder: (context, scrollController) {
                return ListView(
                  controller: scrollController,
                  children: [
                    Text('Explore'),
                  ],
                );
              }),
            ],
          ),
        ],
      ),
    );
  }
}