

import 'dart:async';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:open_file/open_file.dart';
import 'package:permission_handler/permission_handler.dart';


class HideHome extends StatefulWidget {
  const HideHome({Key? key}) : super(key: key);

  @override
  State<HideHome> createState() => _HideHomeState();
}
late final List<FileSystemEntity> entities;
Future<List<FileSystemEntity>> load(Directory dir) {
  var files = <FileSystemEntity>[];
  var completer = Completer<List<FileSystemEntity>>();
  var lister = dir.list(recursive: false);
  lister.listen (
          (file) => files.add(file),
      // should also register onError
      onDone:   () => completer.complete(files)
  );
  return completer.future;
}

class _HideHomeState extends State<HideHome> {
  final pathFile = 'storage/emulated/0/Android/data/com.example.callender/files/photos';
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Hide File"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          foregroundColor: Colors.white,
          onPressed: ()  async {

        final checkPathExistence = await Directory(pathFile).exists();
        print("check file :- ${checkPathExistence}");
        if(checkPathExistence == false){
         _createFolder();
        }else{
          _pickFile();
        }
             //_pickFile();
          },
        ),
        body: Column(
          children: [

          ],
        ),
      ),
    );

  }
  void _pickFile() async {
    FilePickerResult? pickedFile = await FilePicker.platform.pickFiles();

    /// XFile? pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);


    if (pickedFile != null) {
      File file = File(pickedFile.files.first.path!);
      print(file.parent.path);
      print("File Path : ${pickedFile.files.first.path}");


      final Uint8List bytes = await file.readAsBytes();
      final filef = File('${pathFile}/${DateTime.now()}.JPG');
      await filef.writeAsBytes(bytes);


      final b = File(pickedFile.files.first.path!);
      b.delete();
    }

  }
  void _openFile(PlatformFile file) {
    OpenFile.open(file.path);
  }


  _createFolder()async{

    final path= Directory("storage/emulated/0/Android/data/com.example.callender/files/photos");
    if ((await path.exists())){
      // TODO:
      _pickFile();
      print("exist");
    }else{
      // TODO:
      print("not exist");
      path.create();
    }

}
}
