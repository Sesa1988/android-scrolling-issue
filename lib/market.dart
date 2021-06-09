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
      separatorBuilder: (context, index) => Divider(height: 1),
      shrinkWrap: true,
      itemCount: 200,
      itemBuilder: (context, index) {
        return Container(
          height: 70,
          child: Text('market' + index.toString()),
          color: Colors.red[50],
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
