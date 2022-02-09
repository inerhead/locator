import 'package:flutter/material.dart';
import 'package:locator/providers/ui_provider.dart';
import 'package:provider/provider.dart';

class CustomWidgetNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final notifyContext = Provider.of<UIProvider>(context);
    final int currentPageNumber = notifyContext.currentPage;

    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Pedidos',
          backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Historial',
          backgroundColor: Colors.green,
        ),
      ],
      currentIndex: currentPageNumber,
      selectedItemColor: Colors.green[800],
      onTap: (i) {
        notifyContext.currentPage = i;
      },
    );
  }
}
