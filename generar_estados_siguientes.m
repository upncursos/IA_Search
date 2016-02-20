function estados_siguientes = generar_estados_siguientes( estado , distancias, estados) 

      posicion_estado = find(estado==estados);
      posiciones_estados_siguientes = find(distancias(posicion_estado,:)==1);
      estados_siguientes = estados(posiciones_estados_siguientes);   
      
      for estado_siguiente = estados_siguientes
          estado_siguiente.agregar_antecesor(estado);
      end
      
end

