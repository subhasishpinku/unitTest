class Validator {
  static String? validateEmail(String email) {

    if(email.isEmpty){
      return "Required Fields";
    }

    String pattern =   r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$";
    
    RegExp regExp = RegExp(pattern);
    
    if (!regExp.hasMatch(email)) {
      return "Please enter a valid email id";
    }
    
  }

   static String? validatePassword(String password){
    if(password.isEmpty){
      return "Required Fields";
    }
   }
}