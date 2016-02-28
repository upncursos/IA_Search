classdef Cola < handle
    properties
        datos;
    end
    methods
        function this=Cola()
            this.datos=[];
        end
        function this=agregar(this, estados)
            for estado = estados
                this.datos = [this.datos clonar(estado)];
            end
        end
        function estado=tomar_estado(this)
            estado=this.datos(1);
            this.datos=this.datos(2:length(this.datos));
        end
        function respuesta=esta_vacia(this)
            respuesta= isempty(this.datos);            
        end
    end    
end