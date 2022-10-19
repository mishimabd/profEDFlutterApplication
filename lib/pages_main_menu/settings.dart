import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsMain extends StatefulWidget {
  const SettingsMain({super.key});

  @override
  State<SettingsMain> createState() => _SettingsMainState();
}

class _SettingsMainState extends State<SettingsMain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: light ? lightTheme : darkTheme,
      home:  const SettingsPage(),
    );
  }
}

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

ThemeData lightTheme = ThemeData(brightness: Brightness.light);
ThemeData darkTheme = ThemeData(brightness: Brightness.dark);
bool light = true;
// 3
class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Settings',
                  textAlign: TextAlign.right,
                  style: GoogleFonts.poppins(
                      fontSize: 42, fontWeight: FontWeight.bold),
                ),
                Switch(
                    value: light,
                    onChanged: (state) {
                      setState(() {
      
                        light = state;
                      });
                    })
              ],
            ),
          ),
          Column(
            children: const [
              ProfilePic(),
            ],
          ),
          const SizedBox(height: 20),
          ProfileMenu(
            leadingIcon:Icons.account_circle_rounded,
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
            press: () => {},
          ),
          ProfileMenu(
            leadingIcon:Icons.notifications,
            text: "Notifications",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          ProfileMenu(
            leadingIcon:Icons.settings,
            text: "Advanced Settings",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            leadingIcon: Icons.help_center,
            text: "Help Center",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            leadingIcon: Icons.logout_outlined,
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.leadingIcon,
    required this.text,
    required this.icon,
    this.press,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback? press;
  final IconData leadingIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: const Color.fromARGB(255, 169, 228, 178),
        ),
        onPressed: press,
        child: Row(
          children: [
            const SizedBox(width: 10),
            Icon(leadingIcon, color: Colors.green,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(text,
                    style:
                        GoogleFonts.poppins(fontSize: 15, color: Colors.black)),
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.green,
              size: 15,
            ),
          ],
        ),
      ),
    );
  }
}

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: 140,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          const CircleAvatar(
            radius: 50  ,
            backgroundColor: Colors.green,
            backgroundImage: AssetImage("assets/images/photo.jpg"),
          ),
          Positioned(
            right: -16,
            bottom: 0,
            child: SizedBox(
              height: 46,
              width: 46,
              child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: const BorderSide(color: Colors.white),
                    ),
                    backgroundColor: const Color(0xFFF5F6F9),
                  ),
                  onPressed: () {},
                  child: const Icon(
                    Icons.add,
                    color: Colors.green,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
