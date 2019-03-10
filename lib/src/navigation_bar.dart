import 'package:flutter/material.dart';
import 'package:titled_navigation_bar/src/navigation_bar_item.dart';

class TitledBottomNavigationBar extends StatefulWidget {
  final List<TitledNavigationBarItem> items;
  const TitledBottomNavigationBar({Key key, this.items}) : super(key: key);

  @override
  State createState() => _TitledBottomNavigationBarState();
}

class _TitledBottomNavigationBarState
    extends State<TitledBottomNavigationBar>
    with SingleTickerProviderStateMixin{

  List<TitledNavigationBarItem> get items => widget.items;
  int selectedIndex = 0;
  static const double BAR_HEIGHT = 60;
  static const double INDICATOR_HEIGHT = 2;
  static const double INDICATOR_WIDTH = 10;
  double width = 0;
  double indicatorAlignX = 0;

  Duration duration = Duration(milliseconds: 270);

  @override
  void initState() {
    // select a default item
    _select(selectedIndex);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Container(
      height: BAR_HEIGHT,
      width: width,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 10
            )
          ]
      ),
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Positioned(
            top: INDICATOR_HEIGHT,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: items.map((item){
                var index = items.indexOf(item);
                return GestureDetector(
                  onTap: ()=> setState((){
                    _select(index);
                  }),

                  child: _buildItemWidget(item, index == selectedIndex),
                );
              }).toList(),
            ),
          ),
          Positioned(
            top: 0,
            width: width,
            child: AnimatedAlign(
              alignment: Alignment(indicatorAlignX, 0),
              curve: Curves.linear,
              duration: duration,
              child: Container(
                color: Colors.black,
                width: width/items.length,
                height: INDICATOR_HEIGHT,
              ),
            ),
          ),
        ],
      ),
    );
  }

  _select(int index) {
    selectedIndex = index;
    indicatorAlignX = -1 + (2 / (items.length - 1) * index);
  }

  Widget _buildItemWidget(TitledNavigationBarItem item, bool isSelected){
    return Container(
      color: Colors.white,
      height: BAR_HEIGHT,
      width: width / items.length,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          AnimatedOpacity(
            opacity: isSelected ? 0.0 : 1.0,
            duration: duration,
            curve: Curves.linear,
            child: Text(item.title),
          ),
          AnimatedAlign(
            duration: duration,
            alignment: isSelected ? Alignment.center : Alignment(0, 2.6),
            child: Icon(item.icon),
          ),
        ],
      ),
    );
  }
}
