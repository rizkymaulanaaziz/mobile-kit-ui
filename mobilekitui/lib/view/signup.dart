import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SingUp extends StatefulWidget {
  const SingUp({ Key? key }) : super(key: key);

  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  bool _isObscure = true;
  bool _isChecked = false;
  String suflixText = "Show";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Sign Up", style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w600,
              )),
        centerTitle: true,
        leading: IconButton(
                onPressed: (){}, 
                icon: const Icon(Icons.close, color: Color.fromRGBO(189, 189, 189, 1))),   
        actions: [
          TextButton(
                onPressed: (){}, 
                child: Text("Login", style: GoogleFonts.inter(
                  color: const Color.fromRGBO(93, 176, 117, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                ),))            
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 15),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintStyle: GoogleFonts.inter(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                              fillColor: Colors.grey[200],
                              hintText: "Name",
                              border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(11))),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintStyle: GoogleFonts.inter(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                              fillColor: Colors.grey[200],
                              hintText: "Email",
                              border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(11))),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          obscureText: _isObscure,
                          decoration: InputDecoration(
                            hintStyle: GoogleFonts.inter(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                              fillColor: Colors.grey[200],
                              hintText: "Password",
                              border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(11)),
                              suffixIconConstraints: const BoxConstraints(maxHeight: 25,maxWidth: 75),
                              suffixIcon: Center(
                                child: GestureDetector(
                                  onTap: (){
                                    (_isObscure) ? 
                                     setState(() {
                                       _isObscure = false;
                                       suflixText = "Hide";
                                    }) :
                                    setState(() {
                                       _isObscure = true;
                                       suflixText = "Show";

                                    });
                                  },
                                  child: Text(suflixText, style: GoogleFonts.inter(
                                    fontSize: 16,
                                    color: const Color.fromRGBO(93, 176, 117, 1),
                                    fontWeight: FontWeight.w500,
                                  ),),
                                ),
                              )
                              ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(value: _isChecked, onChanged: (bool? value) {
                              setState(() {
                                _isChecked = value!;
                              });
                            },
                            activeColor: const Color.fromRGBO(93, 176, 117, 1),
                            ),
                            const SizedBox(width: 10,),
                            Flexible(
                              child: Text("I would like to receive your newsletter and other promotional information.", 
                                style: GoogleFonts.inter(
                                  color: const Color.fromRGBO(102, 102, 102, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                                softWrap: true, 
                                textAlign: TextAlign.left, 
                              ),
                            )
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: (){}, 
                      child: Text("Sign Up", style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),),
                      style: TextButton.styleFrom(
                        elevation: 2,
                        primary: Colors.white,
                        backgroundColor: const Color.fromRGBO(93, 176, 117, 1),
                        shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(40)),
                        minimumSize: const Size(double.infinity, 50),
                      ),),
                    const SizedBox(height: 15,),
                    TextButton(
                      onPressed: (){}, 
                      child: Text("Forgot Password", style: GoogleFonts.inter(
                        color: const Color.fromRGBO(93, 176, 117, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),),
                      style: TextButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(40)),
                      ),),
                  ],
                ),
              ],
            ),
        ),
      resizeToAvoidBottomInset: true,
    );
  }
}