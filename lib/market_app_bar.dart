import 'package:flutter/material.dart';

class MarketAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  MarketAppBar() : preferredSize = Size.fromHeight(74);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 1,
      toolbarHeight: 74,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      iconTheme: IconThemeData(
        color: Theme.of(context).textTheme.bodyText1?.color,
      ),
      flexibleSpace: TabBar(
        isScrollable: true,
        indicatorColor: Theme.of(context).primaryColor,
        labelColor: Theme.of(context).textTheme.bodyText1?.color,
        tabs: [
          Padding(
            padding: const EdgeInsets.all(0),
            child: Tab(
              icon: Icon(Icons.trending_up),
              text: 'Market',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0),
            child: Tab(
              icon: Icon(Icons.whatshot),
              text: 'Trending',
            ),
          ),
        ],
      ),
    );
  }
}
