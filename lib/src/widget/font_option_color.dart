import 'package:flutter/material.dart';
import 'package:text_editor/src/font_option_model.dart';
import 'package:text_editor/text_editor_data.dart';

class FontOptionColor extends StatefulWidget {
  final Widget? colorPaletteSwitch;

  FontOptionColor({this.colorPaletteSwitch});

  @override
  _FontOptionColor createState() => _FontOptionColor();
}

class _FontOptionColor extends State<FontOptionColor> {
  @override
  Widget build(BuildContext context) {
    final model = TextEditorData.of(context).fontOptionModel;
    return GestureDetector(
      onTap: () => model.changeFontOptionStatus(model.status),
      child: (widget.colorPaletteSwitch == null
          ? _ColorOption()
          : widget.colorPaletteSwitch),
    );
  }
}

class _ColorOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.5),
        border: Border.all(color: Colors.white, width: 1.5),
        gradient: SweepGradient(
          colors: [
            Colors.blue,
            Colors.green,
            Colors.yellow,
            Colors.red,
            Colors.blue,
          ],
          stops: [0.0, 0.25, 0.5, 0.75, 1],
        ),
      ),
    );
  }
}
