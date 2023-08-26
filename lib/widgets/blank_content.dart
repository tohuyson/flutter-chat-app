import 'package:flutter/material.dart';

class BlankContent extends StatelessWidget {
  final String? content;
  final bool? isLoading;
  final IconData? icon;

  const BlankContent({Key? key, this.content, this.isLoading, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: isLoading != null && isLoading == true
            ? const [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: CircularProgressIndicator(),
                ),
              ]
            : [
                Icon(
                  icon ?? Icons.receipt,
                  size: 80,
                  color: Theme.of(context).hintColor.withOpacity(0.4),
                ),
                Text(
                  content ?? "No Data Available",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).hintColor.withOpacity(0.4),
                  ),
                )
              ],
      ),
    );
  }
}
