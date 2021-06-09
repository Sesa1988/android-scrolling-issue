import 'package:android_scrolling_issue/asset_card.dart';
import 'package:flutter/material.dart';

class Market extends StatefulWidget {
  @override
  _MarketState createState() => _MarketState();
}

class _MarketState extends State<Market> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red[200],
        body: _main(),
      ),
    );
  }

  Widget _main() {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(
        height: 1,
        color: Colors.white,
      ),
      shrinkWrap: true,
      itemCount: 200,
      itemBuilder: (context, index) {
        return AssetCard(index.toString(), index.toString(), 'o', index);
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
