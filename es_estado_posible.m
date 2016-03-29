function posible = es_estado_posible(estado)
     posible = 1;
     if estado.canibales_orilla1<0 || estado.canibales_orilla1>3
         posible = 0;
     end
     
end