close all; clearvars; clc;

#matriz de transcision
P = [ 0.8 0.2 0.05;
      0.05 0.75 0.05;
      0.15 0.05 0.9];

#Condiciones iniciales
xa = [6e4; 0; 0;];
xb= [2e3; 4e4; 18e3];


#Cadena de Markov
xk = xa #estado presente
E = [xb];
for n= 1:30  # hasta el mes 30

  xki = (P^n)*xk;

  E = [E xki]; #guardo lo que tengo en el tiempo en E
end
  plot (E(1, :),'*-', 'LineWidth', 3)
  hold on #pon sobre lo que ya tienes impreso
  plot (E(2,:),'*-', 'LineWidth', 3)
   plot (E(3,:),'*-', 'LineWidth',3)  # ( filas, columnas)


   grid on
   title ( "Cadena de markov en el tiempo ")
   xlabel( "Meses ")
   ylabel ("Clientes ")
    legend ( "Prod A", "Prod B", "Prod C")
#xk1= P*xk  #estado futuro 1
xk2 = P*xk1  #estado futuro 2#
