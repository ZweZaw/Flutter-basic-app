import 'package:flutter/material.dart';
import 'package:flutter_basic_app/preview_page.dart';
import 'package:flutter_basic_app/widgets/Text_fields.dart';
import 'package:flutter_basic_app/widgets/button.dart';
import 'package:flutter_basic_app/widgets/card.dart';
import 'package:flutter_basic_app/widgets/dropdown_button.dart';
import 'package:flutter_basic_app/widgets/gradient.dart';
import 'package:flutter_basic_app/widgets/icon.dart';
import 'package:flutter_basic_app/widgets/image.dart';
import 'package:flutter_basic_app/widgets/stateful_widgets.dart';
import 'package:flutter_basic_app/widgets/text.dart';
import 'package:flutter_basic_app/widgets/text_form_field.dart';
class WidgetPage extends StatelessWidget {
  const WidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void gotoPreview(String title, Widget previewWidget, String filePath){
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext ctx)=>  PreviewPage(
              title: title,
              previewWidget: previewWidget,
              filePath: filePath,
            ),
          )
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widgets"),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            ListTile(
              leading: const Icon(Icons.widgets_outlined),
              title: const Text("Icon"),
              onTap: (){
                gotoPreview("Icon", const IconWidget(), "../lib/widgets/icon.dart");
                //Navigate to Widget Page
              },
            ),
            const Divider(
              height: 10,
              color: Colors.black54,
            ),
            ListTile(
              leading: const Icon(Icons.widgets_outlined),
              title: const Text("Text"),
              onTap: (){
                gotoPreview("Text", const TextWidget(), "../lib/widgets/text.dart");
                //Navigate to Widget Page
              },
            ),
            const Divider(
              height: 10,
              color: Colors.black54,
            ),
            ListTile(
              leading: const Icon(Icons.widgets_outlined),
              title: const Text("TextField"),
              subtitle: const Text("Text Input"),
              onTap: (){
                gotoPreview("TextField", const TextFieldWidget(), "../lib/widgets/Text_fields.dart");
                //Navigate to Widget Page
              },
            ),
            const Divider(
              height: 10,
              color: Colors.black54,
            ),
            ListTile(
              leading: const Icon(Icons.widgets_outlined),
              title: const Text("TextFormField"),
              subtitle: const Text("Conveniene widget with wrapping a TextField in FormField"),
              onTap: (){
                gotoPreview("TextFormField", const TextFormFieldExample(), "../lib/widgets/text_form_field.dart");
              },
            ),
            const Divider(
              height: 10,
              color: Colors.black54,
            ),
            ListTile(
              leading: const Icon(Icons.widgets_outlined),
              title: const Text("Image"),
              onTap: (){
                gotoPreview("Image", const ImageExample(), "../lib/widgets/image.dart");
                //Navigate to Widget Page
              },
            ),
            const Divider(
              height: 10,
              color: Colors.black54,
            ),
            ListTile(
              leading: const Icon(Icons.widgets_outlined),
              title: const Text("Card, Inkwell"),
              subtitle: const Text("Container with corner and shadow; inkwell effect"),
              onTap: (){
                gotoPreview("Card, Inkwell", const CardExample(), "../lib/widgets/card.dart");
              },
            ),
            const Divider(
              height: 10,
              color: Colors.black54,
            ),
            ListTile(
              leading: const Icon(Icons.widgets_outlined),
              title: const Text("Gradient"),
              subtitle: const Text("Gradient and BoxDecoration for better UI"),
              onTap: (){
                gotoPreview("Gradient", const GradientExample(), "../lib/widgets/gradient.dart");
              },
            ),
            const Divider(
              height: 10,
              color: Colors.black54,
            ),
            ListTile(
              leading: const Icon(Icons.widgets_outlined),
              title: const Text("Buttons"),
              subtitle: const Text("Elevated Button, TexButton, OutlineButton, IconButton&Tooltips "),
              onTap: (){
                gotoPreview("Buttons", const ButtonExample(), "../lib/widgets/button.dart");
              },
            ),
            const Divider(
              height: 10,
              color: Colors.black54,
            ),
            ListTile(
              leading: const Icon(Icons.widgets_outlined),
              title: const Text("DropDownButton, MenuButton"),
              onTap: (){
                gotoPreview("DropDownButton, MenuButton", const DropdownButtonExample(), "../lib/widgets/dropdown_button.dart");
              },
            ),
            const Divider(
              height: 10,
              color: Colors.black54,
            ),
            ListTile(
              leading: const Icon(Icons.widgets_outlined),
              title: const Text("Other Stateful Widgets"),
              subtitle: const Text("Switch, CheckBox, Slider, etc"),
              onTap: (){
                gotoPreview("Other Stateful Widgets", const StatefulWidgetsExample(), "../lib/widgets/stateful_widgets.dart");
              },
            ),
            const Divider(
              height: 10,
              color: Colors.black54,
            ),
          ],
      ),
    );
  }
}
