classdef Visitados < handle
    
    properties
        estados_visitados=[];
    end
    
    methods
        
        function this=agregar_estado_visitado(this,estado)
            this.estados_visitados=[this.estados_visitados clonar(estado)]; 
        end
        
        function respuesta=contiene(this,estado)           
            respuesta=false;
            for estado_en_revision = this.estados_visitados
                if estado_en_revision.es_igual_a(estado)                 
                    respuesta=true;
                end
            end                
        end    
        
    end
    
end

