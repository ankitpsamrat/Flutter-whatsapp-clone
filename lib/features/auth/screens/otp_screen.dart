import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp/colors.dart';
import 'package:whatsapp/features/auth/controller/auth_controller.dart';

class OtpScreen extends ConsumerWidget {
  const OtpScreen({
    Key? key,
    required this.verificationId,
  }) : super(key: key);

  final String verificationId;

  static const String routeName = '/otp_screen';

  void verifyOTP(
    WidgetRef ref,
    BuildContext context,
    String userOTP,
  ) {
    ref.read(authControllerProvider).verifyOTP(
          context,
          verificationId,
          userOTP,
        );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Verify your number'),
        backgroundColor: backgroundColor,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
              child: Text('We have sent a code on your number'),
            ),
            SizedBox(
              width: size.width * 0.5,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: '_ _ _ _ _ _',
                  hintStyle: TextStyle(
                    fontSize: 30,
                  ),
                ),
                keyboardType: TextInputType.number,
                onChanged: (val) {
                  if (val.length == 6) {
                    verifyOTP(ref, context, val.trim());
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
