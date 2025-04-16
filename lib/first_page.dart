import 'package:flutter/material.dart';
import 'utils.dart';
import 'package:video_player/video_player.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

TextEditingController usernameController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController cvcController = TextEditingController();

String? _videoURL;
VideoPlayerController? _controller

@override
Void dispose(){

_controller.dispose();
super.dispose();
}
String username='';
String password='';
String cvc='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Text(  
                "16 digits number",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
              ),
         TextField(
          decoration: InputDecoration(
            label: 
            Text('16 digits number',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal,color: Colors.blueGrey)
          ),),
          controller: usernameController),
          SizedBox(height: 100,),
          
           Text(  
                "Expiration date",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
              ),
          TextField(
           decoration: InputDecoration(
            label: 
            Text('06/24',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal,color: Colors.blueGrey),)
           ),
          controller: passwordController,),
          
          Text(  
                "CVC",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
              ),
          TextField(
           decoration: InputDecoration(
            label: 
            Text('***',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal,color: Colors.blueGrey),)
           ),
          controller: passwordController,),
          

          Text(username),
          Text(password),

           floatingActionButton:FloatingActionButton(

          ElevatedButton(
            onPressed:_pickVideo

             child: const Icon(Icons.video_library)))
        ],
      ),
    );
  }
  void _pickVideo() async{
    _videoURL = pickVideo();
  }
  void _initilizeVideoPlayer(){
    _controller = VideoPlayerController.file(
      File(_videoURL!)
    )
    ..initilize().then((_){
      setState(() { });
      _controller!.play();
    });

  }
  Widget_videoPreviewWidget(){
    if(_controller1= null){
      return AspectRatio(aspectRatio: _controller!.value.aspectRatio,
      child: VideoPlayer(_controller!),
      );
    }
    else{
      return const CircularProgressIndicator();
    }
  }
}