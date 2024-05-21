# NOMBRE PROGRAMA: conver_bin_gray
# Programa para convertir un Numero en Codigo binario a Codigo Gray y visceversa
# Funcionamiento:
# 1) El programa pregunta el Tipo de Conversion
# 2) Pregunta el Numero de Bits del Numero
# 3) El programa pide individualmente cada Bit del Numero y los almacena en vector L1 
# 4) Se muestra el resultado de la conversion en L2.

 disp("CONVERTIDOR BIN GRAY")
 disp("1)BIN -> GRAY")
 disp("2)GRAY -> BIN")
 input("? ")
 O = ans;
 disp("NUMERO DE BITS")
 input("? ")
 L = ans;

 % Creacion vectores de Trabajo
 L1 = zeros(1,L);
 L2 = zeros(1,L);
 % Captura de Datos
 for N = 1:L
   disp("BIT NUMERO")
   disp(N)
   input("?   ")
   E = ans;
   if E<0 || E>1
     disp("ERROR DATO BINARIO")
     return
   endif
   L1(N) = E;
 endfor
 % Proceso Conversion
 for N = 1:L  
   % Para el primer digito
   if N == 1
     L2(N) = L1(N);
   endif
   % Para los demas digitos
   if N > 1
     
     if O == 1        % Binario a Gray
       A = L1(N-1);   % Bit anterior
     endif
     
     if O == 2        % Gray a Binario
       A = L2(N-1);   % Bit anterior
     endif
     
     B = L1(N);       % Bit presente
     
     L2(N) = not(A) && B || A && not(B);  % OPERACION EXOR
   endif
   
 endfor
 disp("DATOS INGRESO")
 disp(L1)
 disp("RESULTADO")
 disp(L2)