# Titled Bottom Navigation Bar

A beautiful and simple bottom navigation bar with smooth animation on click.


## Preview

![Example Gif](screenshots/preview.gif "TitledNavigationBar")

## Getting Started

Add the plugin:

```yaml
dependencies:
  ...
  titled_navigation_bar: ^0.0.1
```

## Basic Usage

Adding the widget

````Dart
bottomNavigationBar: TitledBottomNavigationBar(
   items: [
       TitledNavigationBarItem(title: 'Home', icon: Icons.home),
       TitledNavigationBarItem(title: 'Search', icon: Icons.search),
       TitledNavigationBarItem(title: 'Bag', icon: Icons.card_travel),
       TitledNavigationBarItem(title: 'Orders', icon: Icons.shopping_cart),
       TitledNavigationBarItem(title: 'Profile', icon: Icons.person_outline),
   ],
)
```