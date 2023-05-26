import 'package:flutter/material.dart';
import 'package:superstore/fb_controllers/fb_auth_controllers.dart';
import 'package:superstore/widget/myAppBar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        children: [
          SizedBox(
            height: 180,
            child: Row(
              children: [
                Image.asset(
                  'images/images.jpeg',
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'User Profile',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
          
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [                    
                ListTile(
                  leading: const Icon(Icons.logout_outlined, color: Colors.redAccent),
                  title: const Text('Log Out'),
                  onTap: () async{
                    await FbAuthController().signOut();
                    Navigator.pushReplacementNamed(context, '/LoginScreen');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
