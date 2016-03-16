function estados_siguientes = generar_estados_siguientes( estado_actual ) 
      
      estados_siguientes=[];
      
      
      
      for estado_siguiente = estados_siguientes_originales
          estado_siguiente_clonado = clonar(estado_siguiente); 
          estado_siguiente_clonado.agregar_antecesor(estado_actual);
          estados_siguientes = [estados_siguientes clonar(estado_siguiente_clonado)];
      end
      
end

