import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            const Positioned(
              top: 130,
              left: -150,
              child: CircleAvatar(
                radius: 405,
                backgroundColor: Color.fromARGB(255, 226, 220, 220),
                // backgroundImage: AssetImage('assets/images/fondo.png'),
              ),
            ),
            Column(
              children: [
                Padding(padding: EdgeInsets.symmetric(vertical: h*0.0025)),
                Image.asset('assets/images/oficial.png', height: h*0.15),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: w*0.15, vertical: h*0.04),
                    child: Card(
                      color: Colors.white,
                      elevation: 15,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: h*0.02,horizontal: w*0.01),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(width: w*0.04),
                                Image.asset(
                                  'assets/images/mapfre.png',
                                  height: h*0.030,
                                ),
                                SizedBox(width: w*0.13),
                                Image.asset(
                                  'assets/images/nfc.jpg',
                                  height: h*0.030,
                                ),
                              ],
                            ),
                            const SizedBox(height: 25),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(75),
                              child: Image.asset(
                                'assets/images/useri.jpg',
                                height: 150,
                            
                              ),
                            ),
                            SizedBox(height: h*0.02),
                            const Text(
                              'DANY LACUZA',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: h*0.001),
                            const Text(
                              'Director Comercial',
                              style: TextStyle(fontSize: 22),
                            ),
                            SizedBox(height: h*0.03),
                            Image.asset(
                              'assets/images/qr.jpg',
                              width: 135,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.deepPurple,
                      child: IconButton(
                        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                        color: Colors.white,
                        onPressed: () {},
                        icon: const Icon(Icons.share, size: 25),
                      ),
                    ),
                    SizedBox(width: w*0.075),
                    OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        side: MaterialStateProperty.all(const BorderSide(color: Colors.deepPurple, width: 2)),
                        backgroundColor: const MaterialStatePropertyAll(Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: w*0.02,vertical: h*0.0165),
                        child: const Text(
                          'Offline Version',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.deepPurple
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: h*0.03),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.deepPurple,
                  child: Image.asset(
                    'assets/images/morada.png',
                    width: 300,
                  ),
                ),
                Row(
                  children: [
                    const SizedBox(width: 40),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.settings_backup_restore,
                        size: 60,
                      ),
                    ),
                    const SizedBox(width: 270),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.account_circle,
                        size: 60,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}