clear;
clc;

estado_actual=Estado();
estado_actual.canibales_orilla1=3;
estado_actual.misioneros_orilla1=3;
estado_actual.canibales_orilla2=0;
estado_actual.misioneros_orilla2=0;
estado_actual.bote=-1;

estado_final=Estado();
estado_final.canibales_orilla1=0;
estado_final.misioneros_orilla1=0;
estado_final.canibales_orilla2=3;
estado_final.misioneros_orilla2=3;
estado_final.bote=1;


cola = Cola();
visitados = Visitados();

while(~estado_actual.es_igual_a(estado_final))
    
    if ~visitados.contiene(estado_actual) 
        estados_siguientes=generar_estados_siguientes(estado_actual);
        cola.agregar(estados_siguientes);
        visitados.agregar_estado_visitado(estado_actual);
    end    
    
    estado_actual=cola.tomar_estado();
    
    

end
mostrar_informacion(estado_final);
mostrar_ruta_hacia(estado_actual);









