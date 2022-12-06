import 'package:flutter/material.dart';
import 'package:proyecto_final/ui/input_decorations.dart';
import 'package:proyecto_final/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AuthBackground(
            hijo: SingleChildScrollView(
      child: Column(children: [
        const SizedBox(
          height: 250,
        ),
        CardContainer(
            hijo: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Text('Login', style: Theme.of(context).textTheme.headline4),
            const SizedBox(
              height: 30,
            ),
            //ChangeNotifierProvider(
            //create: (_) => LoginFormProvider(),
            //child: _LoginForm(),
            _LoginForm()
            //)
          ],
        )),
        const SizedBox(
          height: 50,
        ),
        TextButton(
          onPressed: () => Navigator.pushReplacementNamed(context, 'register'),
          style: ButtonStyle(
              overlayColor:
                  MaterialStateProperty.all(Colors.indigo.withOpacity(.1)),
              shape: MaterialStateProperty.all(const StadiumBorder())),
          child: const Text('Crear una nueva cuenta',
              style: TextStyle(fontSize: 18, color: Colors.black87)),
        ),
        const SizedBox(
          height: 50,
        ),
      ]),
    )));
  }
}

class _LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final loginForm = Provider.of<LoginFormProvider>(context);
    return Form(
        //key: loginForm.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                  sugerencia: 'jose.perez@correo.com',
                  etiqueta: 'Correo electrónico',
                  icono: Icons.alternate_email_rounded),
              //onChanged: (value) => loginForm.email = value,
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
                autocorrect: false,
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecorations.authInputDecoration(
                    sugerencia: '****',
                    etiqueta: 'Contraseña',
                    icono: Icons.lock_outline),
                onChanged: null
                //(value) => loginForm.password = value,
                /*
                validator:(value) {
                  return (value != null && value.length >= 6)
                      ? null
                      : 'La contraseña debe tener 6 caracteres';
                }*/
                ),
            const SizedBox(
              height: 30,
            ),
            MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                disabledColor: Colors.grey,
                elevation: 0,
                color: Colors.deepPurple,
                onPressed: null
                //loginForm.isLoading
                //   ? null
                //  : () async {
                //     FocusScope.of(context).unfocus();

                //if (!loginForm.isValidForm()) return;
                //loginForm.isLoading = true;

                //TODO: validar si el login es correcto
                //final String? errorMessage = await authService.login(
                //    loginForm.email, loginForm.password);
/*
                        if (errorMessage == null) {
                          // ignore: use_build_context_synchronously
                          Navigator.pushReplacementNamed(context, 'home');
                        } else {
                          //TODO: mostrar error en pantalla
                          print(errorMessage);

                          loginForm.isLoading = false;
                        }
                        */
                // },
                /*
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                  child: Text("hjh"
                    //loginForm.isLoading ? 'Espere...' : 'Ingresar',
                    //style: const TextStyle(color: Colors.white),
                  ),
                )*/
                )
          ],
        ));
  }
}
