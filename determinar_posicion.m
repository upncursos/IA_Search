function  indice  = determinar_posicion( estado, estados )

    indice = -1;
    for i=1:length(estados)
        if estados(i).es_igual_a(estado)
            indice=i;
        end
    end


end

