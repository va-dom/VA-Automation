import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_lsg/components/elevated_button_demo.dart';
import 'package:flutter_lsg/components/primary_button_demo.dart';
import 'package:flutter_lsg/components/secondary_button_demo.dart';
import 'package:flutter_lsg/components/text_button_demo.dart';
import 'package:flutter_lsg/components/tonal_button_demo.dart';
import 'package:va_reusable_components/va_reusable_components.dart';

class LSGHome extends StatelessWidget {
  const LSGHome({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: VaTheme.themeData.primaryColor,
        title: Text(
          "LIVE STYLE GUIDE",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: VaTheme.themeData.secondaryHeaderColor,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: VAAvatar(
                imageUrl: "",
                name: "Flutter Team",
                subtitle: "Flutter Developers",
                onLogout: () => _handleLogout(context),
                onProfileSettings: () => _handleProfileSettings(context),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Row(
                children: [
                  Expanded(
                    child: Center(
                      child: SizedBox(
                        height: 100,
                        width: 600,
                        child: VaTextFormFieldOutlined(
                            labelText: 'Enabled TextFormField',
                            placeholder: "Hi, I'm a placeholder",
                            helperText: "I'm the helper text",
                            bottomMargin: 8,
                            controller: textController),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: SizedBox(
                        height: 100,
                        width: 600,
                        child: VaTextFormFieldOutlined(
                            enabled: false,
                            labelText: 'Disabled TextFormField',
                            placeholder: "Testing in your area",
                            helperText: "I'm the helper text",
                            bottomMargin: 8,
                            controller: textController),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Row(
                children: [
                  Expanded(
                    child: Center(
                      child: SizedBox(
                        height: 100,
                        width: 600,
                        child: VaTextFormFieldOutlined(
                            leadingIcon: const Icon(Icons.search),
                            labelText:
                                'Enabled TextFormField with Leading Icon',
                            placeholder: "Testing in your area",
                            helperText: "I'm the helper text",
                            controller: textController),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: SizedBox(
                        height: 100,
                        width: 600,
                        child: VaTextFormFieldOutlined(
                            enabled: false,
                            leadingIcon: const Icon(Icons.search),
                            labelText:
                                'Disabled TextFormField with Leading Icon',
                            placeholder: "Testing in your area",
                            helperText: "I'm the helper text",
                            controller: textController),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Expanded(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: PrimaryButtonDemo(),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: SecondaryButtonDemo(),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: TextButtonDemo(),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: ElevatedButtonDemo(),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: TonalButtonDemo(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: SizedBox(
                        height: 100,
                        width: 300,
                        child: VACard(
                          cardModel: ReusableCardModel(
                            icon: Icons.person,
                            header: "Aaron",
                            subheader: "card",
                            actionIcon: Icons.notification_add,
                            elevation: 10,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: SizedBox(
                        height: 100,
                        width: 300,
                        child: VACard(
                          cardModel: ReusableCardModel(
                            icon: Icons.person_2,
                            header: "Dom",
                            subheader: "card",
                            actionIcon: Icons.add_alert,
                            elevation: 5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: SizedBox(
                        height: 100,
                        width: 300,
                        child: VACard(
                          cardModel: ReusableCardModel(
                            icon: Icons.person_3,
                            header: "Robertson",
                            subheader: "card",
                            actionIcon: Icons.remove_done,
                            elevation: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: SizedBox(
                        height: 100,
                        width: 300,
                        child: VACard(
                          cardModel: ReusableCardModel(
                            icon: Icons.person_4,
                            header: "Vole",
                            subheader: "card",
                            actionIcon: Icons.remove_road,
                            elevation: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void _handleLogout(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text('You have been logged out.'),
      duration: Duration(seconds: 2),
    ),
  );
}

void _handleProfileSettings(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text('Welcome to Profile Settings'),
      duration: Duration(seconds: 2),
    ),
  );
}


//  Expanded(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Center(
//                   child: SizedBox(
//                     height: 100,
//                     width: 500,
//                     child: VaTextFormFieldOutlined(
//                         labelText: 'Enabled TextFormField',
//                         placeholder: "Hi, I'm a placeholder",
//                         helperText: "I'm the helper text",
//                         bottomMargin: 8,
//                         controller: textController),
//                   ),
//                 ),
//                 Center(
//                   child: SizedBox(
//                     height: 100,
//                     width: 500,
//                     child: VaTextFormFieldOutlined(
//                         enabled: false,
//                         labelText: 'Disabled TextFormField',
//                         placeholder: "Testing in your area",
//                         helperText: "I'm the helper text",
//                         bottomMargin: 8,
//                         controller: textController),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Center(
//                   child: SizedBox(
//                     height: 100,
//                     width: 500,
//                     child: VaTextFormFieldOutlined(
//                         leadingIcon: const Icon(Icons.search),
//                         labelText: 'Enabled TextFormField with Leading Icon',
//                         placeholder: "Testing in your area",
//                         helperText: "I'm the helper text",
//                         controller: textController),
//                   ),
//                 ),
//                 Center(
//                   child: SizedBox(
//                     height: 100,
//                     width: 500,
//                     child: VaTextFormFieldOutlined(
//                         enabled: false,
//                         leadingIcon: const Icon(Icons.search),
//                         labelText: 'Disabled TextFormField with Leading Icon',
//                         placeholder: "Testing in your area",
//                         helperText: "I'm the helper text",
//                         controller: textController),
//                   ),
//                 ),
//               ],
//             ),
//           ),
        