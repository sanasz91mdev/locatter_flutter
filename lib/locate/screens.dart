import 'package:flutter/material.dart';

class MapScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  FocusNode searchFocus = FocusNode();
  String searchText = "";
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Container(
        child: Center(child: Text("Maps appear here")),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    print("sana");
    return AppBar(
      backgroundColor: Theme.of(context).canvasColor,
      title: TextField(
        autofocus: true,
        focusNode: searchFocus,
        onChanged: (value) => searchText = value,
        keyboardType: TextInputType.text,
        decoration:
            InputDecoration(hintText: "search at: ", border: InputBorder.none),
        onSubmitted: (String value) {
          //TODO: do something
          print(value);
          searchFocus.unfocus();
        },
      ),
      actions: <Widget>[
        new IconButton(
          onPressed: _isLoading
              ? null
              : () {
                  //TODO: do something
                },
          icon: new Icon(
            Icons.search,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }
}
