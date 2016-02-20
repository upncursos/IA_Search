classdef Rutas < handle
 
    properties
        estados=[];
    end
    
    methods
        
        function this=agregar_antecesor(this,estado, estado_antecesor)
            this.estados(estado)=estado_antecesor;
        end
        
        function antecesor = obtener_antecesor_de(this,estado)
            antecesor = this.estados(estado);        
        end
    end
    
end

