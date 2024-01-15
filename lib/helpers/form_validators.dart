class FormValidators{
  
  static String? existValidator(value) => (value != null && value.isNotEmpty) ? null : 'Este campo es requerido' ;

  static String? lengthValidator(value, length) => (value != null && value.length >= length) ? null : 'Este campo requiere $length caracteres minimo' ;
  
}