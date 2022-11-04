import 'package:flutter/material.dart';

import '../../../shared/app_styles.dart';

class ListTileFavorite extends StatelessWidget {
  ListTileFavorite({Key? key, this.data, required this.title, this.trailing})
      : super(key: key);

  String title;
  String? data;
  Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: trailing,
      leading: IconButton(
        icon: const Icon(Icons.remove_circle),
        onPressed: () {},
        color: Colors.red,
      ),
      subtitle: Text(
        data ?? '',
        style: AppStyles.dataTextStyle,
      ),
    );
  }
}
