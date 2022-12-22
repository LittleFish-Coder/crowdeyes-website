import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameTextEditingController = TextEditingController();
  final TextEditingController _genderTextEditingController = TextEditingController();
  final TextEditingController _birthTextEditingController = TextEditingController();
  final TextEditingController _careerTextEditingController = TextEditingController();
  final TextEditingController _teamTextEditingController = TextEditingController();
  final TextEditingController _playerTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/poster.jpg', fit: BoxFit.fill,),
              feedbackForm(),
            ],
          ),
        ),
      ),

      floatingActionButton: const FloatingActionButton(
        tooltip: 'chatroom',
        onPressed: null,
        child: Icon(Icons.message),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget pageBar(){
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const <Widget>[
          Text("首頁"),
          SizedBox(width: 10),
          Text("球員推薦"),
          SizedBox(width: 10),
          Text("球員戰情室"),
          SizedBox(width: 10),
          Text("問答遊戲"),
        ]
      )
    );
  }

  Widget feedbackForm(){
    return SizedBox(
      width: MediaQuery.of(context).size.width *3/5,
      child: Shortcuts(
          shortcuts: const <ShortcutActivator, Intent>{
            SingleActivator(LogicalKeyboardKey.enter): NextFocusIntent(),
          },
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _nameTextEditingController,
                  decoration: const InputDecoration(
                      labelText: '名稱*',
                      hintText: '王小明'
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: TextFormField(
                          controller: _genderTextEditingController,
                          decoration: const InputDecoration(
                              labelText: '性別*',
                              hintText: 'Male/Female/Other'
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        )
                    ),
                    Expanded(
                        child: TextFormField(
                          controller: _birthTextEditingController,
                          decoration: const InputDecoration(
                              labelText: '生日*',
                              hintText: 'yyyy/mm/dd'
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            } else {
                              List<String> birth = value.split('/');
                              if(birth.length != 3) {
                                return 'format wrong';
                              }
                            }
                            return null;
                          },
                        )
                    ),
                  ],
                ),
                TextFormField(
                  controller: _careerTextEditingController,
                  decoration: const InputDecoration(
                      labelText: '職業*'
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _teamTextEditingController,
                  decoration: const InputDecoration(
                      labelText: '最喜歡的隊伍*'
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _playerTextEditingController,
                  decoration: const InputDecoration(
                      labelText: '最喜歡的球員*'
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Validate returns true if the form is valid, or false otherwise.
                      if (_formKey.currentState!.validate()) {
                        _nameTextEditingController.clear();
                        _genderTextEditingController.clear();
                        _birthTextEditingController.clear();
                        _careerTextEditingController.clear();
                        _teamTextEditingController.clear();
                        _playerTextEditingController.clear();
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      }
                    },
                    child: const Text('提交'),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
