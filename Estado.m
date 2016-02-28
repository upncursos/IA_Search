classdef Estado < handle
    
    properties
       nombre='';
       antecesor=[];
    end
    
    methods
        
        function respuesta=es_igual_a(this, otro)
            if strcmp(this.nombre,otro.nombre)
                respuesta=true;
            else
                respuesta=false;
            end
        end
        
        function this=agregar_antecesor(this,antecesor)
            this.antecesor = antecesor;      
        end
        
        function antecesor=obtener_antecesor(this)
            antecesor=this.antecesor;
        end
        
        function mostrar_informacion(this)
            disp(this.nombre);
        end
    end
    
end

