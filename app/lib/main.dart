import 'package:app/packages/austerity/austerity.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  final GlobalKey<ScaffoldState> scaffoldStateKey = GlobalKey();

  final Uri austerityRoute = Uri.parse('/austerity');

  runApp(
    MaterialApp.router(
      routerConfig: GoRouter(
        debugLogDiagnostics: true,
        routes: [
          ShellRoute(
            routes: [
              GoRoute(
                builder: (context, state) => Placeholder(),
                path: '/',
              ),
              GoRoute(
                builder: (context, state) => AusterityView(),
                name: 'austerity',
                path: austerityRoute.toString(),
              ),
            ],
            builder: (context, state, child) => Scaffold(
              appBar: AppBar(
                title: Text((GoRouter.of(context)
                            .routerDelegate
                            .currentConfiguration
                            .matches
                            .last
                            .route as GoRoute)
                        .name ??
                    'Flutter Packages A-Z'),
                leading: IconButton(
                  onPressed: () {
                    (scaffoldStateKey.currentState?.isDrawerOpen ?? false)
                        ? scaffoldStateKey.currentState?.closeDrawer()
                        : scaffoldStateKey.currentState?.openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                ),
              ),
              body: child,
              drawer: NavigationDrawer(
                onDestinationSelected: (value) {
                  switch (value) {
                    case 0:
                      context.go(austerityRoute.toString());
                      break;
                    default:
                  }
                  scaffoldStateKey.currentState?.closeDrawer();
                },
                children: <Widget>[
                  NavigationDrawerDestination(
                    icon: Icon(Icons.home),
                    label: Text('austerity'),
                  ),
                ],
              ),
              key: scaffoldStateKey,
            ),
          ),
        ],
      ),
    ),
  );
}
