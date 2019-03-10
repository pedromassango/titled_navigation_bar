# Titled Bottom Navigation Bar

A beautiful, clean and simple bottom navigation bar with smooth animation on click. This package is high customizable, read more bellow.


You can see the source code of this lib inside the [/lib](https://github.com/pedromassango/titled_navigation_bar/tree/master/lib) folder.

### Show some :heart: and star the repo to support this project

## Preview

![Example Gif](screenshots/preview.gif "TitledNavigationBar")

## Info

- [x] Custom icon color
- [x] Custom indicator color
- [x] Support from two to five items

## Getting Started

Add the plugin:

```yaml
dependencies:
  ...
  titled_navigation_bar: ^1.0.0
```

## Basic Usage

### Import this class

````Dart
import 'package:titled_navigation_bar/titled_navigation_bar.dart';
``

### Adding the widget

````Dart
bottomNavigationBar: TitledBottomNavigationBar(
  onTap: (index){
    print("Selected Index: $index");
  },
  items: [
      TitledNavigationBarItem(title: 'Home', icon: Icons.home),
      TitledNavigationBarItem(title: 'Search', icon: Icons.search),
      TitledNavigationBarItem(title: 'Bag', icon: Icons.card_travel),
      TitledNavigationBarItem(title: 'Orders', icon: Icons.shopping_cart),
      TitledNavigationBarItem(title: 'Profile', icon: Icons.person_outline),
  ]
)
```