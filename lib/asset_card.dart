import 'package:flutter/material.dart';

class AssetCard extends StatefulWidget {
  final String title;
  final String rank;
  final String symbol;
  final int heroId;

  const AssetCard(this.title, this.rank, this.symbol, this.heroId);

  @override
  _AssetCardState createState() => _AssetCardState();
}

class _AssetCardState extends State<AssetCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () => {},
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _image(),
              SizedBox(width: 12),
              Expanded(child: _name(context)),
              SizedBox(width: 12),
              Expanded(child: _value()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _image() {
    return Hero(
      tag: widget.heroId,
      child: Container(
        height: 40,
        width: 40,
        child: Container(
          width: 35,
          height: 35,
        ),
      ),
    );
  }

  Widget _name(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _title(widget.title),
        SizedBox(height: 2),
        FittedBox(
          child: Row(
            children: [
              _symbol(context),
              SizedBox(width: 5),
              _hourTrend24(context),
            ],
          ),
        ),
      ],
    );
  }

  Widget _title(String title) {
    return Text(
      title,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.subtitle1,
    );
  }

  Widget _symbol(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: new BoxDecoration(
              color: Theme.of(context).chipTheme.backgroundColor,
              borderRadius: BorderRadius.horizontal(
                  left: Radius.elliptical(4, 4),
                  right: Radius.elliptical(4, 4))),
          child: Padding(
            padding: EdgeInsets.only(top: 5, bottom: 1, left: 3, right: 2.5),
            child: Text(
              widget.rank.toString(),
              style:
                  Theme.of(context).textTheme.subtitle2?.copyWith(height: 0.7),
            ),
          ),
        ),
        SizedBox(width: 4),
        Text(
          widget.symbol.toUpperCase(),
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }

  Widget _hourTrend24(BuildContext context) {
    return Text(
      '5%',
      maxLines: 1,
      style: Theme.of(context).textTheme.bodyText1,
    );
  }

  Widget _value() {
    return Text(
      '1,000.80',
      maxLines: 1,
      style: Theme.of(context).textTheme.bodyText1,
    );
  }
}
