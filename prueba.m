clc;
e = Estado();
e.canibales_orilla1=3;
e.misioneros_orilla1=3;
e.canibales_orilla2=0;
e.misioneros_orilla2=0;
disp('Estado actual');
mostrar_informacion(e);

disp('estados siguientes');
s = generar_estados_siguientes(e);
mostrar_informacion_estados(s);

