a=Estado();
a.nombre='Arad'; %1
b=Estado();
b.nombre='Zerind'; %2
c=Estado();
c.nombre='Timisoara'; %3
d=Estado();
d.nombre='Sibiu'; %4
e=Estado();
e.nombre='Fagaras'; %5
f=Estado();
f.nombre='Bucarest'; %6
g=Estado();
g.nombre='Pitesti'; %7
h=Estado();
h.nombre='Rimnicu Vilcea'; %8
i=Estado();
i.nombre='Lugoj'; %9
j=Estado();
j.nombre='Mehadia'; %10
k=Estado();
k.nombre='Dobreta'; %11
l=Estado();
l.nombre='Craiova'; %12
m=Estado();
m.nombre='Oradea'; %13

estados = [a b c d e f g h i j k l m];

distancias = zeros(length(estados));

distancias(1,2)=1;
distancias(1,4)=1;
distancias(1,3)=1;

distancias(2,13)=1;
distancias(2,1)=1;

distancias(3,9)=1;
distancias(3,1)=1;

distancias(4,5)=1;
distancias(4,8)=1;
distancias(4,1)=1;
distancias(4,13)=1;

distancias(5,6)=1;
distancias(5,4)=1;

distancias(6,5)=1;
distancias(6,7)=1;

distancias(7,6)=1;
distancias(7,8)=1;
distancias(7,12)=1;


distancias(8,7)=1;
distancias(8,4)=1;
distancias(8,12)=1;

distancias(9,10)=1;
distancias(9,3)=1;

distancias(10,9)=1;
distancias(10,11)=1;

distancias(11,10)=1;
distancias(11,12)=1;

distancias(12,7)=1;
distancias(12,8)=1;
distancias(12,11)=1;

distancias(13,4)=1;
distancias(13,2)=1;




estado_actual=a;
estado_final=l;
cola = Cola();
visitados = Visitados();

while(~estado_actual.es_igual_a(estado_final))

    if ~visitados.contiene(estado_actual) 
        estados_siguientes=generar_estados_siguientes(estado_actual,distancias,estados);
        cola.agregar(estados_siguientes);
        visitados.agregar_estado_visitado(estado_actual);
    end    
    
    estado_actual=cola.tomar_estado();

end

mostrar_ruta_hacia(estado_actual);









