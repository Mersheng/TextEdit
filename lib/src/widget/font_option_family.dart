import 'package:flutter/material.dart';
import 'package:text_editor/src/font_option_model.dart';
import 'package:text_editor/text_editor_data.dart';

class FontOptionFamily extends StatefulWidget {
  final Widget? fontFamilySwitch;

  FontOptionFamily({this.fontFamilySwitch});

  @override
  _FontOptionFamily createState() => _FontOptionFamily();
}

class _FontOptionFamily extends State<FontOptionFamily> {
  @override
  Widget build(BuildContext context) {
    final model = TextEditorData.of(context).fontOptionModel;
    return GestureDetector(
      onTap: () => model.changeFontOptionStatus(model.status),
      child: (widget.fontFamilySwitch == null
          ? _FontOption()
          : widget.fontFamilySwitch),
    );
  }
}

class _FontOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.5),
        border: Border.all(color: Colors.white, width: 1.5),
      ),
      child: Center(
        child: Text(
          'A',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
