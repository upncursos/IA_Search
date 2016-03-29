function posible = es_estado_posible(estado)
     posible = 1;
     if estado.canibales_orilla1<0 || estado.canibales_orilla1>3
         posible = 0;
     end
     if estado.misioneros_orilla1<0 || estado.misioneros_orilla1>3
         posible = 0;
     end
     if estado.misioneros_orilla1<estado.canibales_orilla1 && estado.misioneros_orilla1>0 
         posible = 0;
     end
     
     if estado.canibales_orilla2<0 || estado.canibales_orilla2>3
         posible = 0;
     end
     if estado.misioneros_orilla2<0 || estado.misioneros_orilla2>3
         posible = 0;
     end
     if estado.misioneros_orilla2<estado.canibales_orilla2 && estado.misioneros_orilla2>0 
         posible = 0;
     end
end