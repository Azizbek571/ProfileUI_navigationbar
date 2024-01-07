import 'package:profile_ui_drawer_example/dafaults/imports.dart';

class Divider extends StatelessWidget {
  const Divider({
    super.key,
    required int height,
    required int thickness,
    required Color color,
    required int indent,
    required int endIndent,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1,
      thickness: 1,
      color: Defaults.drawerItemColor,
      indent: 15,
      endIndent: 15,
    );
  }
}
