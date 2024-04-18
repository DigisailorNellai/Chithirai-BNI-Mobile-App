import 'package:flutter/material.dart';

class EventDetails extends StatefulWidget {
  const EventDetails({super.key});

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){

        }, 
        icon: Icon(Icons.arrow_back)),
        title: Text('Event Details'),
        actions: [
          IconButton(onPressed: (){

          }, 
          icon: const Icon(Icons.menu))
        ],
        
      ),
    );
  }
}