import 'package:flutter/material.dart';
import '/ui/ui_files.dart';
import '/helpers/helpers.dart';
import '/widget/widgets.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final formKey = GlobalKey<FormState>();
  bool loading = false;
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    submitLogin() async {
      FocusScope.of(context).unfocus();
      if(!formKey.currentState!.validate()) return;
      setState(() => loading = true);
      await Future.delayed(const Duration(seconds: 3));
      setState(() => loading = false);
      if(context.mounted) Navigator.pushReplacementNamed(context, 'login');
    }

    chanceObscureText() => setState(()=>obscureText = !obscureText);

    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          const SizedBox(height: 50),
          const Text('Login', style: TextStyles.tStyleBold24,),
          const SizedBox(height: 20),
          TextFormField(
            enabled: !loading,
            style: const TextStyle(color: ColorPalette.colorNegro, fontWeight: FontWeight.bold),
            //textAlign: TextAlign.center,
            decoration: InputDecorations.authInputDecoration(hintText: '', labelText: 'Usuario', prefixIcon: null ),
            validator: (value){
              String? val;
              val = FormValidators.existValidator(value);
              return val;
            },
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
          ),
          const SizedBox(height: 20,),
          TextFormField(
            enabled: !loading,
            style: const TextStyle(color: ColorPalette.colorNegro, fontWeight: FontWeight.bold),
            //textAlign: TextAlign.center,
            autocorrect: false,
            obscureText: obscureText,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecorations.authInputDecoration(hintText: '', labelText: 'Pass', prefixIcon: null, suffixIconOnPressed: chanceObscureText, visibility: obscureText ),
            validator: (value) => FormValidators.lengthValidator(value, 6),
            onFieldSubmitted: (value) => submitLogin() ,
          ),
          // TextButton(
          //   style: TextButton.styleFrom(
          //     padding: EdgeInsets.zero,
          //     minimumSize: const Size(50, 30),
          //     tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          //     alignment: Alignment.centerLeft),
          //   child: const Text('OLVIDE MI PASSWORD', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white, decoration: TextDecoration.underline, decorationColor: Colors.white)),
          //   onPressed: ()=>(),  
          // ),
          const SizedBox(height: 40,),
          CustomElevatedButton(
            text: !loading ? 'Entrar' : 'Espere ...',
            onPressed: loading ? null : () => submitLogin(),
          ),
        ]
      )
    );
  }
}