import 'package:flutter/material.dart';
import 'package:proyecto_final/routes/app_routes.dart';

class AlertaScreen extends StatelessWidget {
  const AlertaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: ListView.separated(
        itemCount: AppRoutes.menuOptions.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(AppRoutes.menuOptions[index].title),
          leading: Icon(AppRoutes.menuOptions[index].icon),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          onTap: () =>
              Navigator.pushNamed(context, AppRoutes.menuOptions[index].route),
        ),
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}
