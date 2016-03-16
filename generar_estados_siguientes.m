function estados_siguientes = generar_estados_siguientes( estado_actual ) 
      
      estados_siguientes=[];
      
      
  %%%%% se va un misionero    
      if estado_actual.bote==-1
      
      nuevo=clonar(estado_actual);
      nuevo.misioneros_orilla1 = nuevo.misioneros_orilla1 -1;
      nuevo.misioneros_orilla2 = nuevo.misioneros_orilla2 +1;
      if es_estado_posible(nuevo)
          estados_siguientes=[estados_siguientes nuevo];
      end
          
      else
         
      nuevo=clonar(estado_actual);
      nuevo.misioneros_orilla2 = nuevo.misioneros_orilla2 -1;
      nuevo.misioneros_orilla1 = nuevo.misioneros_orilla1 +1;   
      if es_estado_posible(nuevo)
       estados_siguientes=[estados_siguientes nuevo];
      end 
           
      end
      
      
      
end

