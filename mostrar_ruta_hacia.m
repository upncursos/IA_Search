function mostrar_ruta_hacia( estado )
        estado_actual=estado;
        ruta = [];
        while(~isempty(estado_actual))
            ruta = [estado_actual ruta];
            estado_actual=estado_actual.obtener_antecesor();
        end
        for estado_en_ruta = ruta
            estado_en_ruta.mostrar_informacion();
        end

end

