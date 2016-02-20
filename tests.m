clear();
e1=Estado();
e2=Estado();
e3=Estado();
e4=Estado();
e1.nombre='A'
e2.nombre='B'
e3.nombre='A'
e4.nombre='C'
disp('es igual a');
e1.es_igual_a(e2)
e1.es_igual_a(e3)
disp('es estado visitado');
visitados=Visitados();
visitados.agregar_estado_visitado(e1);
visitados.agregar_estado_visitado(e2);
visitados.es_estado_visitado(e3)
visitados.es_estado_visitado(e4)
disp('mostrar info')
e3.mostrar_informacion()
disp('antecesor');
e3.agregar_antecesor(e4);
e3.obtener_antecesor()
disp('mostrar ruta')
e4.agregar_antecesor(e2);
mostrar_ruta_hacia(e3)


