import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FAButton extends StatefulWidget {
  const FAButton({Key? key, required this.type, required this.onPressed})
      : super(key: key);

  final type; //Type of button (anonyme, connexion, inscription, google, facebook)
  final VoidCallback onPressed; //Animation
  @override
  State<FAButton> createState() => _FAButtonState();
}

class _FAButtonState extends State<FAButton> {
  String text = 'anonyme';
  Icon icon = const Icon(FontAwesomeIcons.userSecret);
  Color color = const Color(0xff000000);
  void buttonType() {
    switch (widget.type) {
      case "anonyme":
        text = "Se connecter anonymement";
        icon = const Icon(
          FontAwesomeIcons.userSecret,
          size: 30.0,
        );
        color = const Color(0xff0F9D58);
        break;
      case "connexion":
        text = "Se connecter";
        icon = const Icon(
          // ignore: deprecated_member_use
          FontAwesomeIcons.userAlt,
          size: 30.0,
        );
        color = const Color(0xff0F9D58);
        break;
      case "inscription":
        text = "S'inscrire";
        icon = const Icon(
          // ignore: deprecated_member_use
          FontAwesomeIcons.userAlt,
          size: 30.0,
        );
        color = const Color(0xff0F9D58);
        break;
      case "google":
        text = "Se connecter avec Google";
        icon = const Icon(
          FontAwesomeIcons.googlePlusG,
          size: 35.0,
        );
        color = const Color(0xffDB4437);
        break;
      case "facebook":
        text = "Se connecter avec Facebook";
        icon = const Icon(
          FontAwesomeIcons.facebookF,
          size: 35.0,
        );
        color = const Color(0xff4267B2);
        break;
    // ignore: todo
      default: //TODO #1 Implement error screen
        text = "Se connecter anonymement";
        icon = const Icon(
          FontAwesomeIcons.userSecret,
          size: 35.0,
        );
        color = const Color(0xff0F9D58);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    buttonType();
  }

  @override
  Widget build(BuildContext context) {
    final textScale = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      body:
      Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: color, elevation: 7.0),
            onPressed: widget.onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon,
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 15, bottom: 15),
                  child: Text(
                    text,
                    style: TextStyle(
                        color: Colors.white, fontSize: 17.0 * textScale),
                  ),
                ),
              ],
            ),
            // ),
          ),
        ),
      ),
    );
  }
}