import 'package:flutter/material.dart';

void main() {
  runApp(SalesPage());
}

class SalesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false, // Remove default back button
          title: SizedBox.shrink(), // Hide the title
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Add functionality to go back
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
               
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Builder(
            builder: (BuildContext context) {
              return Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                       
                        Image.asset(
                          'assets/cat.png', 
                          height: MediaQuery.of(context).size.height * 0.3, 
                          width: MediaQuery.of(context).size.width, 
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 20),
                        
                        Text(
                          'Maggie Pegion India',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                       
                        Row(
                          children: [
                            Icon(Icons.location_on, size: 18, color: Colors.grey),
                            SizedBox(width: 5),
                            Expanded(
                              child: Text(
                                '318 Grand St, New York 10002, US',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Text(
                              '₹8000',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        // Attributes
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildAttributeBox('Sex', 'Male', Colors.blueGrey),
                            _buildAttributeBox('Color', 'Yellow', Colors.amber),
                            _buildAttributeBox('Breed', 'Columba', Colors.green),
                            _buildAttributeBox('Weight', '5.5', Colors.purple),
                          ],
                        ),
                        SizedBox(height: 10),
                        
                        Text(
                          'Description:',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                       
                        Text(
                          'The kindest samoyed we have ever met. Likes to play with balls.Is friends with other animals. loves to play in dirt and puddles.The kindest samoyed we have ever met. Likes to play with balls.Is friends with other animals.One of the most intriguing aspects of cats is their unique personalities. Each cat has its own quirks and preferences, from playful antics to moments of quiet contemplation. They can be affectionate and loving, curling up in your lap for a cozy nap, or they might prefer to observe the world from a distance, perched high on a windowsill.',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 20), // Add some space at the bottom
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.phone, color: Colors.white),
                          SizedBox(width: 10),
                          Text(
                            'Whatsapp',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildAttributeBox(String label, String value, Color color) {
    return Container(
      width: 80,
      height: 50,
      decoration: BoxDecoration(
        color: color.withOpacity(0.5),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
