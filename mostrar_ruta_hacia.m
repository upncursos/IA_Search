function mostrar_ruta_hacia( estado )
        estado_actual=estado;
        while(~isempty(estado_actual))
            estado_actual.mostrar_informacion()
            estado_actual=estado_actual.obtener_antecesor();
        end

end

