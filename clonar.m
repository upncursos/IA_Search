function nuevo = clonar(objeto)
     nuevo = feval(class(objeto));
     propiedades = properties(objeto);
     for i = 1:length(propiedades)
        nuevo.(propiedades{i})=objeto.(propiedades{i});
     end
end