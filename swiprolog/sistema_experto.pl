enfermedad(gripe).
enfermedad(rubeola).
enfermedad(malaria).
enfermedad(hepatitis).
enfermedad(tuberculosis).
enfermedad(anemia).

%enfermode(manuel, gripe).
%tienesintoma(alicia, cansancio).

%declaraciones de sintomas, segun enfermedad
%podemos hacer consultas por ejemplo
%mostrar una enfermedad y su sintomas o las enfermedades y sintomas
%determninar un sintoma a que enfermedad(es) pertenece

sintomade(tos, gripe).                 %la tos es sintoma de gripe
sintomade(cansancio, gripe).           %el cansancio es sintoma de gripe
sintomade(fiebre, gripe).              %la fiebre es sintoma de gripe
sintomade(dolorcabeza, gripe).         %dolor de cabeza es sintoma de gripe

sintomade(nausea, hepatitis).          %las nauseas son sintoma de hepatitis
sintomade(diarrea, hepatitis).         %la diarrea es sintoma de hepatitis
sintomade(icteria, hepatitis).         %la icteria es sintoma de hepatitis

sintomade(cansancio, anemia).          %el cansancio es de anemia
sintomade(apatia, anemia).             %la apatia es sintomia de animia
sintomade(nausea, hepatitis).          %las nauseas son sintomas de anemia

sintomade(tos, tuberculosis).          %la tos es sintoma de tuberculosis     
sintomade(cansancio, tuberculosis).    %el cansancio es sintoma de tuberculosis 
sintomade(fiebre, tuberculosis).       %la fiebre es sintoma de tuberculosis 
sintomade(escalofrios, tuberculosis).  %los escalofrios son sintoma de tuberculosis 

sintomade(escalofrios, malaria).       %los escalofrios son sintoma de malaria
sintomade(fiebre, malaria).            %la fiebre es sintoma de malaria
sintomade(diarrea, malaria).           %la diarrea es sintoma de malaria
sintomade(icteria, malaria).           %la icteria es sintoma de malaria

sintomade(fiebre, rubeola).            %la fiebre es sintoma de rubeola
sintomade(jaqueca, rubeola).           %la jaqueca es sintoma de rubeola
sintomade(secrecion, rubeola).         %la secrecion es sintoma de rubeola

%Reglas para determinar que probabilidad una persona puede tener una 
%enfermedad X dado los sintomas
%%La funcion buscar busca las enfermedades que contengan como minimo los sintomas 
%suminstrados
%%primer parametro (lista de enfermedades)
%%segundo parametro (Enfermedad)
% %tercer parámetro cantidad de ocurrencias 
%%(a decir verdad tendría que ser la misma cantidad que el arreglo entregado)


%declaraciones de los hechos para determinar medicina de una enfermedad
%que medicamento debo tomar dependiendo la enfermedad 

medicinade(contrex, gripe).            %contrex es medicamento de la gripe 
medicinade(jarabe, gripe).             %jarabe es medicamento de la gripe 
medicinade(pastillas, tubercolosis).   %pastillas es medicamento de la tubercolosis 
medicinade(vacuna, malaria).           %vacuna es medicamento de la malaria 
medicinade(vacuna, rubéola).           %vacuna es medicamento de la rubeola 
medicinade(vitaminas, anemia).         %vitaminas es medicamento de la anemia 
medicinade(pastillas, hepatitis).      %pastillas es medicamento de hepatitis 

%declaración de reglas 
%receta medica según síntoma

especialistade(otorrino, gripe). 
especialistade(nutricionista, anemia). 
especialistade(endocrinologia, hepatitis). 
especialistade(medicinageneral, rubéola). 
especialistade(nutricionista, tubercolosis). 
especialistade(medicinageneral, malaria).

% esta regla es para hacer consultas ejemplo 
% Si tengo enfermedad gripe por ejemplo que especialista y que medicina co% me receta