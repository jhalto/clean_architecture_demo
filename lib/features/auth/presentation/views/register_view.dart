import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: Text("App Starts"),)
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:clean_architecture_demo/features/auth/domain/entities/register_request_entity.dart';
// import 'package:clean_architecture_demo/features/auth/presentation/bloc/register_bloc.dart';
// import 'package:clean_architecture_demo/features/auth/presentation/bloc/register_event.dart';
// import 'package:clean_architecture_demo/features/auth/presentation/bloc/register_state.dart';

// class RegisterView extends StatefulWidget {
//   const RegisterView({super.key});

//   @override
//   State<RegisterView> createState() => _RegisterViewState();
// }

// class _RegisterViewState extends State<RegisterView> {
//   final _formKey = GlobalKey<FormState>();

//   final nameController = TextEditingController();
//   final emailController = TextEditingController();
//   final phoneController = TextEditingController();
//   final organizationController = TextEditingController();
//   final designationController = TextEditingController();
//   final passwordController = TextEditingController();
//   final sourceController = TextEditingController();

//   @override
//   void dispose() {
//     nameController.dispose();
//     emailController.dispose();
//     phoneController.dispose();
//     organizationController.dispose();
//     designationController.dispose();
//     passwordController.dispose();
//     sourceController.dispose();
//     super.dispose();
//   }

//   void _submit() {
//     if (!_formKey.currentState!.validate()) return;

//     final request = RegisterRequestEntity(
//       name: nameController.text.trim(),
//       email: emailController.text.trim(),
//       phone: phoneController.text.trim(),
//       organization: organizationController.text.trim(),
//       designation: designationController.text.trim(),
//       password: passwordController.text.trim(),
//       source: sourceController.text.trim(),
//     );

//     context.read<RegisterBloc>().add(
//           RegisterSubmitted(request),
//         );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<RegisterBloc, RegisterState>(
//       listener: (context, state) {
//         if (state is RegisterSuccess) {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(
//               content: Text(state.data.message),
//               backgroundColor: Colors.green,
//             ),
//           );

//           debugPrint('Subscriber ID: ${state.data.subscriberId}');
//         }

//         if (state is RegisterFailure) {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(
//               content: Text(state.message),
//               backgroundColor: Colors.red,
//             ),
//           );
//         }
//       },
//       builder: (context, state) {
//         final isLoading = state is RegisterLoading;

//         return Scaffold(
//           appBar: AppBar(
//             title: const Text('Register'),
//           ),
//           body: SingleChildScrollView(
//             padding: const EdgeInsets.all(16),
//             child: Form(
//               key: _formKey,
//               child: Column(
//                 children: [
//                   _CustomTextField(
//                     controller: nameController,
//                     label: 'Name',
//                   ),
//                   _CustomTextField(
//                     controller: emailController,
//                     label: 'Email',
//                     keyboardType: TextInputType.emailAddress,
//                   ),
//                   _CustomTextField(
//                     controller: phoneController,
//                     label: 'Phone',
//                     keyboardType: TextInputType.phone,
//                   ),
//                   _CustomTextField(
//                     controller: organizationController,
//                     label: 'Organization',
//                   ),
//                   _CustomTextField(
//                     controller: designationController,
//                     label: 'Designation',
//                   ),
//                   _CustomTextField(
//                     controller: sourceController,
//                     label: 'Source',
//                   ),
//                   _CustomTextField(
//                     controller: passwordController,
//                     label: 'Password',
//                     obscureText: true,
//                   ),
//                   const SizedBox(height: 24),
//                   SizedBox(
//                     width: double.infinity,
//                     height: 48,
//                     child: ElevatedButton(
//                       onPressed: isLoading ? null : _submit,
//                       child: isLoading
//                           ? const CircularProgressIndicator()
//                           : const Text('Register'),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// class _CustomTextField extends StatelessWidget {
//   final TextEditingController controller;
//   final String label;
//   final TextInputType? keyboardType;
//   final bool obscureText;

//   const _CustomTextField({
//     required this.controller,
//     required this.label,
//     this.keyboardType,
//     this.obscureText = false,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 14),
//       child: TextFormField(
//         controller: controller,
//         keyboardType: keyboardType,
//         obscureText: obscureText,
//         validator: (value) {
//           if (value == null || value.trim().isEmpty) {
//             return '$label is required';
//           }

//           return null;
//         },
//         decoration: InputDecoration(
//           labelText: label,
//           border: const OutlineInputBorder(),
//         ),
//       ),
//     );
//   }
// }
