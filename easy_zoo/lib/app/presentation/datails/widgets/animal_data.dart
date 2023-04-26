import 'package:flutter/material.dart';

import '../../../shared/app_styles.dart';

class AnimalData extends StatelessWidget {
  AnimalData({Key? key, this.data, required this.title, this.trailing})
      : super(key: key);

  String title;
  String? data;
  Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: AppStyles.dataTitleTextStyle,
      ),
      trailing: trailing,
      subtitle: Text(
        data ?? '',
        style: AppStyles.dataTextStyle,
      ),
    );
  }
}
