
estado_actual=????
estado_final=????
cola = Cola();
visitados = Visitados();

while(~estado_actual.es_igual_a(estado_final))

    if ~visitados.contiene(estado_actual) 
        estados_siguientes=generar_estados_siguientes(estado_actual,distancias,estados);
        cola.agregar(estados_siguientes);
        visitados.agregar_estado_visitado(estado_actual);
    end    
    
    estado_actual=cola.tomar_estado();

end

mostrar_ruta_hacia(estado_actual);









