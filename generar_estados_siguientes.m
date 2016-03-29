function estados_siguientes = generar_estados_siguientes( estado_actual ) 
      
      estados_siguientes=[];
      
      
  %%%%% se va un misionero   
      nuevo=clonar(estado_actual);   
      if estado_actual.bote==-1     
          nuevo.misioneros_orilla1 = nuevo.misioneros_orilla1 -1;
          nuevo.misioneros_orilla2 = nuevo.misioneros_orilla2 +1;
      else
          nuevo.misioneros_orilla2 = nuevo.misioneros_orilla2 -1;
          nuevo.misioneros_orilla1 = nuevo.misioneros_orilla1 +1;   
      end
      
      if es_estado_posible(nuevo)
          nuevo.bote=estado_actual.bote*-1;
          nuevo.agregar_antecesor(estado_actual);
          estados_siguientes=[estados_siguientes nuevo];
      end
      
  %%%%% se va 1 Canibal   
      nuevo=clonar(estado_actual);   
      if estado_actual.bote==-1        
          nuevo.canibales_orilla1 = nuevo.canibales_orilla1 -1;
          nuevo.canibales_orilla2 = nuevo.canibales_orilla2 +1;
          else
          nuevo.canibales_orilla2 = nuevo.canibales_orilla2 -1;
          nuevo.canibales_orilla1 = nuevo.canibales_orilla1 +1;      
      end
      
      if es_estado_posible(nuevo)
          nuevo.bote=estado_actual.bote*-1;
          nuevo.agregar_antecesor(estado_actual);
          estados_siguientes=[estados_siguientes nuevo];
      end      

%%%%% se va 1 Canibal y 1 misionero   
      nuevo=clonar(estado_actual);   
      if estado_actual.bote==-1        
          nuevo.canibales_orilla1 = nuevo.canibales_orilla1 -1;
          nuevo.canibales_orilla2 = nuevo.canibales_orilla2 +1;
          nuevo.misioneros_orilla1 = nuevo.misioneros_orilla1 -1;
          nuevo.misioneros_orilla2 = nuevo.misioneros_orilla2 +1;
          else
          nuevo.canibales_orilla2 = nuevo.canibales_orilla2 -1;
          nuevo.canibales_orilla1 = nuevo.canibales_orilla1 +1;  
          nuevo.misioneros_orilla1 = nuevo.misioneros_orilla1 -1;
          nuevo.misioneros_orilla2 = nuevo.misioneros_orilla2 +1;
      end
      
      if es_estado_posible(nuevo)
          nuevo.bote=estado_actual.bote*-1;
          nuevo.agregar_antecesor(estado_actual);
          estados_siguientes=[estados_siguientes nuevo];
      end   
      
%%%%% se va 2 misioneros   
      nuevo=clonar(estado_actual);   
      if estado_actual.bote==-1     
          nuevo.misioneros_orilla1 = nuevo.misioneros_orilla1 -2;
          nuevo.misioneros_orilla2 = nuevo.misioneros_orilla2 +2;
      else
          nuevo.misioneros_orilla2 = nuevo.misioneros_orilla2 -2;
          nuevo.misioneros_orilla1 = nuevo.misioneros_orilla1 +2;   
      end
      
      if es_estado_posible(nuevo)
          nuevo.bote=estado_actual.bote*-1;
          nuevo.agregar_antecesor(estado_actual);
          estados_siguientes=[estados_siguientes nuevo];
      end
      
  %%%%% se va 1 Canibal   
      nuevo=clonar(estado_actual);   
      if estado_actual.bote==-1        
          nuevo.canibales_orilla1 = nuevo.canibales_orilla1 -2;
          nuevo.canibales_orilla2 = nuevo.canibales_orilla2 +2;
          else
          nuevo.canibales_orilla2 = nuevo.canibales_orilla2 -2;
          nuevo.canibales_orilla1 = nuevo.canibales_orilla1 +2;      
      end
      
      if es_estado_posible(nuevo)
          nuevo.bote=estado_actual.bote*-1;
          nuevo.agregar_antecesor(estado_actual);
          estados_siguientes=[estados_siguientes nuevo];
      end 
      
end

