import 'package:flutter/material.dart';
import 'package:flutter_json_schema_form/flutter_json_schema_form.dart';
import 'package:json_schema_document/json_schema_document.dart';
import 'package:flutter_json_schema_form/controller/flutter_json_schema_form_controller.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Map<String, dynamic> formState = {
    "propertyType": "Apartment",
  };



  final controller = FlutterJsonSchemaFormController(
    jsonSchema: jsonSchema,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterJsonSchemaForm(
          jsonSchema: controller.jsonSchema,
          controller: controller,
      formState: formState,
      onSubmit: (){},
        onChanged: (newState){
            setState(() {
              formState = newState;
            });
        },
      ),
    );
  }


}


final jsonSchema = JsonSchema.fromMap({
  "text" : "Hello",
  "name" : "aditya",
  "number": 8976
});