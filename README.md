# Titled Bottom Navigation Bar

A beautiful, clean and simple bottom navigation bar with smooth animation on click. This package is high customizable, read more bellow for more details.


You can see the source code of this lib inside the [/lib](https://github.com/pedromassango/titled_navigation_bar/tree/master/lib) folder.

### Show some :heart: and star the repo to support this project

## Preview (default mode)

![Default Mode Gif](screenshots/preview.gif "TitledNavigationBar")


## Preview (reverse mode)

![Reversed Mode Gif](screenshots/reverse.gif "TitledNavigationBar")


## Package overview

- [x] Custom icon color
- [x] Custom indicator color
- [x] Support from two to five items
- [x] Reverse mode (show selected item as icon or title)

## Getting Started
Follow these steps to use this library

### Add the plugin:

```yaml
dependencies:
  ...
  titled_navigation_bar: ^1.5.0
```

### Import the package
```Dart
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
```

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

## Customization (Optional)

### TitledBottomNavigationBar
**onTap** - Use this to get notified when a item is clicked, you can retrieve the current item's index on this function. Should not be null!<br/>
**items** - The items of your bottom navigation bar. Use the **TitledNavigationBarItem** class to add items. Should not be null!<br/>
**reverse** - If true, the visible widget of the selected item will be the Text (with the title of the item). If false, the visible widget of the selected item will be the icon. Default to false<br/>
**activeColor** - The active Text/Icon color. The default color is the indicatorColor of your app Theme.<br/>
**inactiveColor** - The inactive Text/Icon color. The default is the black color.<br/>
**indicatorColor** - The indicator color. The default color is the indicatorColor of your app Theme.<br/>

### TitledNavigationBarItem
**icon** -The icon of this item. This will be used as default state if reverse mode is disabled<br/>
**title** -  The title of this item. This will be used as default state if reverse mode is enabled<br/>