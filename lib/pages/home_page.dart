import 'package:flutter/material.dart';
import 'package:locator/pages/historia_page.dart';
import 'package:locator/pages/pedidos_page.dart';
import 'package:locator/providers/ui_provider.dart';
import 'package:locator/widgets/custom_nav.dart';
import 'package:locator/widgets/floating_buttom.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        centerTitle: true,
        title: Text('Localizador Virtual'),
        elevation: 1,
        actions: [
          IconButton(
            onPressed: () {
              print('Buttom REFRESH');
            },
            icon: Icon(Icons.refresh_sharp),
          )
        ],
      ),
      body: _HomePage(),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: CustomWidgetFloatingButtom(),
      bottomNavigationBar: CustomWidgetNavBar(),
    );
  }
}

class _HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = <Widget>[
      Pedidos(),
      Historial(),
    ];

    final notifyContext = Provider.of<UIProvider>(context);
    final int currentPageNumber = notifyContext.currentPage;
    final Widget current = _pages[currentPageNumber];

    return current;
  }
}
