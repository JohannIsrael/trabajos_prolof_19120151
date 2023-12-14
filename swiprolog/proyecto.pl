
eliza:-	writeln('Hola , mi nombre es eliza tu  chatbot,
	por favor ingresa tu consulta,
	usar solo minusculas sin . al final:'),
	readln(Input),
	eliza(Input),!.
eliza(Input):- Input == ['Adios'],
	writeln('Adios. espero poder verte ayudado.'), !.
eliza(Input):- Input == ['Adios', '.'],
	writeln('Adios. espero poder verte ayudado.'), !.
eliza(Input) :-
	template(Stim, Resp, IndStim),
	match(Stim, Input),
	% si he llegado aqui es que he
	% hallado el template correcto:
	replace0(IndStim, Input, 0, Resp, R),
	writeln(R),
	extra_newline, % Llamada a un predicado para el salto de linea adicional
	readln(Input1),
	eliza(Input1), !.

extra_newline :- writeln('\n').

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%templates de eliza%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

template([hola, mi, nombre, es, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [4]).
template([hola, ',', mi, nombre, es, s(_), '.'], ['Hola','!',',', 0, 'Como', estas, tu, '?'], [5]).
template([buenas, _], ['Hola','!', ',' , 'Como', estas, tu, '?'], []).
template([yo, s(_), yo, soy, s(_),'.'], [por, que, 0, eres, 1, '?'], [1, 4]).
template([yo, soy, s(_),'.'], [porque, eres, tu, 0, '?'], [2]).
template([conoces, acerca, de, s(_), _], [flagKnowledge], [3]).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%templates de enfermedad %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%Cuasas
template([cuales,son,las,causas, del ,cancer, de, tiroides, _], ['El cancer de tiroides comienza cuando las celulas en la tiroides desarrollan cambios en su ADN. El ADN de una celula contiene instrucciones que le indican a una celula que hacer. Los cambios, que los medicos llaman mutaciones, les indican a las celulas que crezcan y se multipliquen rapidamente. Las celulas siguen viviendo cuando las celulas sanas mueren de forma natural. Las celulas que se acumulan forman una masa que se llama tumor.\n 
El tumor puede crecer hasta invadir tejidos cercanos y puede propagarse (hacer metastasis) hacia los ganglios linfaticos del cuello. A veces, las celulas cancerosas pueden propagarse mas alla del cuello hacia los pulmones, los huesos y otras partes del cuerpo.'], []).


%Diangosticos
template([que, diagnosticos, hay, para, el, cancer, de, tiroides, con, su, descripcion, _], ['Los dianosticos que existen para el cancer de tiroides son:\n', Diagnosticos_desc],[]) :-
    findall(Diagnostico_desc, diagnostico_desc0(Diagnostico_desc), ListaDiagnostico_desc),
    atomic_list_concat(ListaDiagnostico_desc, '\n', Diags),
    atom_concat(Diags, '\n', Diagnosticos_desc).

template([que, diagnosticos, hay, para, el, cancer, de, tiroides, _], ['Los dianosticos que existen para el cancer de tiroides son: ',Diangosticos],[]):- findall(Diagnostico, diagnostico0(Diagnostico), Diangosticos).  

%tipos de cancer
template(['cuales',son, los, tipos, de, cancer, de, tiroides, _], ['Los tipos de cancer de tiroides son: ',Tipos],[]):- findall(Tipo, tipo0(Tipo), Tipos).
template([que, es, el, cancer,de, tiroides, tipo, s(_), _ ],[tipo_cancer],[7]) .

%template compara sintomas
template([cuales, son, los, sintomas, del, cancer, de, tiroides, _],['Los sintomas del cancer de tiroides son: ', Sintomas],[]):- findall(Sintoma, sintoma(Sintoma), Sintomas).
template([el, s(_), es, un, sintoma, del, cancer, de, tiroides, _],[sintoma],[1]).
template([los, s(_), son, un, sintoma, del, cancer, de, tiroides, _],[sintoma],[1]).

%template pregunta sintomas
template([los, sintomas, que, tengo, son, x(_),',', y(_),'y',z(_),_],[multisintomas],[5,7,9]).

%complicaciones
template([cuales, son, las, compliaciones, del, cancer, de, tiroides,_], ['Cancer de tiroides recurrente\n
En la mayoria de los casos, es poco probable que el cancer de tiroides vuelva a aparecer, incluidos los tipos mas comunes, como el papilar y el folicular. Tu proveedor de atencion medica puede decirte si el tipo de cancer que tienes presenta un mayor riesgo de recurrencia segun sus caracteristicas particulares.

La recurrencia es mas probable si el tipo de cancer es agresivo o si se propaga fuera de la tiroides. Cuando se produce la recurrencia del cancer de tiroides, por lo general se descubre en los primeros cinco años despues del diagnostico inicial.

Cancer de tiroides que se disemina (se metastatiza)

El cancer de tiroides a veces se disemina a ganglios linfaticos cercanos o a otras partes del cuerpo. Las celulas cancerosas diseminadas se pueden detectar cuando recibes el diagnostico inicial o despues del tratamiento. La mayoria de los canceres de tiroides nunca se diseminan.'],[]).

%factores de riesgo
template(['cuales',son, los, factores, de, riesgo, del, cancer, de, tiroides, _], ['Los factores de riegos del cancer de tiroides son: ', Factor_riesgo],[]) :-
    findall(Factor, factor_riesgo0(Factor), Factor_riesgos),
    atomic_list_concat(Factor_riesgos, ', ', Factor_riesgo). 
template([por, que, s(_), es, un, factor, de, riesgo, _],[factor_riesgo],[2]).

%prevencion
template([que, medidas, de, prevencion,hay, para, el, cancer, de, tiroides, _],['Los medicos no saben con certeza que hace que cambien los genes que provocan la mayoria de los canceres de tiroides, por lo que no existe manera de prevenir este tipo de cancer en las personas con un riesgo promedio de tenerlo.\n
Sin embargo se recomienda que lo sigueinte: \nPrevencion en las personas con riesgo alto \n

Los adultos y los niños con un gen hereditario que aumenta el riesgo de cancer medular de tiroides pueden considerar la cirugia de tiroides para prevenir el cancer (tiroidectomia profilactica). Es recomendable que analices tus opciones con un consejero genetico que puede explicarte el riesgo de desarrollar cancer de tiroides y las opciones de tratamiento.\n
Prevencion en las personas que estan cerca de plantas nucleares \n

A veces, en los Estados Unidos, a las personas que viven cerca de las centrales nucleares se les proporciona un medicamento que bloquea los efectos de la radiacion en la tiroides. El medicamento (yoduro de potasio) podria utilizarse en el caso improbable de que se produjera un accidente en un reactor nuclear. Si vives a menos de 10 millas de una planta de energia nuclear y te preocupan las precauciones de seguridad, comunicate con el departamento de control de emergencias estatal o local para obtener mas informacion.'],[]).

%tratamientos
template([cual, es, el, tratamiento, para, el, cancer, de, tiroides, tipo, s(_), _], [tipo_tratamiento_cancer], [10]).

%especialistas
template([que, especialistas, hay, para, el, cancer, de, tiroides, _], ['Los especialista que hay actualmentes para el cancer de tiroides son: ',Especialistas],[]):- findall(Especialista, especialista0(Especialista), Especialistas).


%definicion 
template([que, es, el, cancer, de, tiroides, _], ['Es una proliferacion de celulas que comienza en la glandula tiroidea, una glandula en forma de mariposa que se encuentra en la base del cuello, justo debajo de la nuez de Adan. La glandula tiroidea produce hormonas que regulan el ritmo cardiaco, la presion arterial, la temperatura corporal y el peso.'], []).

template([cancer, de, tiroides], ['El cancer de tiroides es una proliferacion de celulas que comienza en la glandula tiroidea, una glandula en forma de mariposa que se encuentra en la base del cuello, justo debajo de la nuez de Adan. La glandula tiroidea produce hormonas que regulan el ritmo cardiaco, la presion arterial, la temperatura corporal y el peso.'], []).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%templates de smite %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

template([que, es, smite, _],['Es un videojuego de accion MOBA en tercera persona, creado y publicado por Hi-Rez Studios para Microsoft Windows, Xbox One, PlayStation 4 y Nintendo Switch. El juego se basa en dos equipos, cada uno formado por cinco dioses, enfrentados en un campo de batalla con la finalidad de destruir el titan enemigo situado en cada una de las bases.'],[]).

template([en, que, consiste, el, juego, de, smite, _],['Smite es un videojuego de accion MOBA, en el posee diferentes modalidades de juego, ¿sobre que modalidad te gustaria saber? Pregunta: quiero saber sobre el modo de juego __ .'],[]).

template([cual, es, el, nivel, maximo, de, jugador, por, partida, _],['El nivel maximo que puede llegar a un jugador por partida es el lvl 20'],[]).

template([como, se, clasifican, los, dioses, _],['Los dioses se clasifican por su region, por ejemplo puede ser el ',ListaTiposDioses],[]):- findall(TipoDios,tiposDioses(TipoDios), ListaTiposDioses).

template([cuantos, dioses, hay, en, el, juego, _], ['Actualmente en mi base de datos tengo registrados ', CountDioses, ' dioses en el juego de smite'], []) :-
    findall(Dios, dios(Dios), Dioses),
    length(Dioses, CountDioses).

template([quiero, saber, sobre, el, modo, de, juego, s(_), _],[modalidades],[7]).

template([cuales, son, los, modos, del, juego, de, smite, _],['Los modos de juego de smite que hay actualmente son: ',Modosjuego],[]):- findall(Modojuego, modos(Modojuego), Modosjuego).

template([los, dioses, x(_),',',y(_),'y',z(_), estan, dentro, del, juego, de, smite, _],[dioses],[2,4,6]).

template([cuales, son, los, roles, de, smite, _],['Los roles que hay en el juego de smite son: ',ListaRoles],[]):- findall(Rol,rol(Rol),ListaRoles).



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% templates de eliza %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% pregunta algo que hace eliza
template([tu, eres, s(_), _], [flagDo], [2]).
% pregunta algo que es eliza
template([que, eres, tu, s(_)], [flagIs], [2]).
template([eres, s(_), '?'], [flagIs], [2]).
template([como, estas, tu, '?'], [yo, estoy, bien, ',', gracias, por, preguntar, '.'], []).
template([yo, pienso, que, _], [bueno, esa, es, tu, opinion], []).
template([porque, _], [esa, no, es, una, buena, razon, '.'], []).
template([por,favor, s(_), _], ['No', no, puedo, ayudarte, ',', yo, soy, solo, una, maquina], []). 
template([hola, _], ['Hola', 'como', estas, tu, '?'], []).	  
template(_, ['Por',favor, explicame, un, poco, mas, '.'], []). 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% hechos y reglas de eliza %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Lo que conoce eliza
elizaKnowledge(X, R):- knowledge(X), R = ['Si si conozco acerca',de, X].
elizaKnowledge(X, R):- \+knowledge(X), R = ['No no conozco acerca', X].
knowledge(smite).
knowledge(cancer_de_tiroides).

% lo que hace eliza: flagDo
elizaDoes(X, R):- does(X), R = ['Si', yo, X, and, me, encanta, hacerlo].
elizaDoes(X, R):- \+does(X), R = ['No', i, do, not, X ,'.', es, muy, dificil, para, mi].
does(estudio).
does(cocino).
does(trabajo).

% lo que es eliza: flagIs
elizaIs(X, R):- is0(X), R = ['Si', yo, soy, X].
elizaIs(X, R):- \+is0(X), R = ['No', no, yo, no, soy, X].
is0(dumb).
is0(weird).
is0(nice).
is0(fine).
is0(happy).
is0(redundant).
is0(robot).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% hechos y reglas de enfermedad %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%tipos de cancer de tiroides
cancerTipo(X, R):- tipo0(X), R = ['Si', yo, soy, X].
cancerTipo(X, R):- \+tipo0(X), R = ['No', no, yo, no, soy, X].
tipo0(papilar).
tipo0(folicular).
tipo0(medular).
tipo0(anaplasico).
tipo0(hurthtle).

%tipos cancer

tiposCancerR(X,R,Y):- tipo_cancer0(X,Y), R = ['El cancer tipo ',X,': ',Y] .
tiposCancerR(X,R,Y):- \+tipo_cancer0(X,Y), R = ['La palabra ',X,'no pertenece a los tipos de cancer de tiroides'].
tipo_cancer0('papilar','Este es el tipo mas comun de cancer de tiroides. Puede ocurrir a cualquier edad, pero es mas frecuente en personas de 30 a 50 años. La mayoria de los casos de cancer papilar de tiroides son pequeños y responden bien frente al tratamiento, incluso si las celulas cancerosas se propagaron a los ganglios linfaticos del cuello.
En solo pocos casos son agresivos y se desarrollan de manera que invaden estructuras del cuello.
El cancer folicular de tiroides se propaga con mayor frecuencia a los pulmones y huesos.').
tipo_cancer0('folicular','Este tipo de cancer de tiroides poco frecuente normalmente afecta a las personas mayores de 50 años. Las celulas del cancer folicular de tiroides no suelen propagarse a los ganglios linfaticos del cuello.').
tipo_cancer0('hurthtle','El cancer de celulas de Hurthle es agresivo y se desarrolla de manera que invade estructuras en el cuello y se propaga a otras areas del cuerpo.').
tipo_cancer0('anaplasico','El cancer anaplasico de tiroides es mas comun en personas mayores de 60 años. Puede causar signos y sintomas graves, como hinchazon en el cuello que empeora rapidamente y provoca dificultad para respirar y tragar.').
tipo_cancer0('medular','Este tipo de cancer de tiroides poco frecuente se origina en las celulas tiroideas llamadas celulas C, las cuales producen la hormona calcitonina. Los niveles elevados de calcitonina en la sangre pueden indicar un cancer medular de tiroides en una etapa muy temprana. Algunos casos de cancer medular de tiroides son provocados por un gen llamado RET que pasa de padres a hijos. Los cambios en el gen RET pueden causar cancer medular hereditario de tiroides y neoplasia endocrina multiple de tipo 2. El cancer medular hereditario de tiroides puede aumentar el riesgo de presentar cancer de tiroides. La neoplasia endocrina multiple de tipo 2 aumenta el riesgo de presentar cancer de tiroides, cancer de glandula suprarrenal y otros tipos de cancer.').


%tipos de diagnostico
diagnostico_desc0('Examen fisico y antecedentes de salud: examen del cuerpo para revisar el estado general de salud e identificar cualquier signo de enfermedad, como masas, bultos o hinchazon en el cuello, la laringe y los ganglios linfaticos, asi como cualquier otra cosa que parezca anormal.\n'). 
diagnostico_desc0('Laringoscopia: procedimiento en el que el medico examina la laringe con un espejo o un laringoscopio.\n'). 
diagnostico_desc0('Estudios de hormonas en la sangre: pruebas por las que se examina una muestra de sangre para medir las cantidades de ciertas hormonas que los organos y tejidos del cuerpo liberan en la sangre.\n'). 
diagnostico_desc0('Estudios bioquimicos de la sangre: pruebas por las que se examina una muestra de sangre para medir la cantidad de ciertas sustancias, como el calcio, que los organos y tejidos del cuerpo liberan en la sangre\n').
diagnostico_desc0('Ecografia: procedimiento para el que se hacen rebotar ondas de sonido de alta energia (ultrasonicas) en los tejidos u organos internos a fin de producir ecos.\n'). 
diagnostico_desc0('Tomografia computarizada (TC)','procedimiento para el que se toma una serie de imagenes detalladas del interior del cuerpo, como el cuello, desde angulos diferentes\n').
diagnostico_desc0('Biopsia por aspiracion con aguja fina de la tiroides', 'extraccion de tejido de la tiroides mediante una aguja fina. La aguja se introduce a traves de la piel hasta la tiroides.\n').
diagnostico_desc0('Biopsia quirurgica','extraccion de un nodulo tiroideo o un lobulo de la tiroides durante una cirugia para que un patologo observe las celulas y los tejidos al microscopio y verifique si hay signos de cancer.\n').

diagnostico0('Examen fisico y antecedentes de salud'). 
diagnostico0('Laringoscopia'). 
diagnostico0('Estudios de hormonas en la sangre'). 
diagnostico0('Estudios bioquimicos de la sangre').
diagnostico0('Ecografia'). 
diagnostico0('Tomografia computarizada (TC)').
diagnostico0('Biopsia por aspiracion con aguja fina de la tiroides').
diagnostico0('Biopsia quirurgica').

%sintomas
sintomas(X,R):- sintoma(X), R = ['Si el ', X, ' si es un sintoma del cancer de tiroides'].
sintomas(X,R):- \+sintoma(X), R = ['No el ', X, ' no es un sintoma del cancer de tiroides'].
sintoma(bulto_de_cuello).
sintoma(cambios_de_voz).
sintoma(dolor_de_garganta).
sintoma(dolor_de_cuello).
sintoma(dificultad_al_pasar).
sintoma(hinchazon_en_ganglios).

%Factores de riesgo
factorRiesgoR(X,R,Y):- factor_desc0(X,Y), R = [X,'es factor de riesgo porque:',Y].
factorRiesgoR(X,R,Y):- \+factor_desc0(X,Y), R = [X,'no es factor de riesgo'].
factor_desc0('sexo_femenimo','El cancer de la glandula tiroidea es mas frecuente en las mujeres que en los hombres. Los expertos creen que esto puede estar relacionado con la hormona estrogeno').
factor_desc0('exposicion_a_radiacion','Los tratamientos de radioterapia en la cabeza y el cuello aumentan el riesgo de cancer de la glandula tiroidea.').
factor_desc0('sindromes_geneticos','Los sindromes geneticos que aumentan el riesgo de cancer de la glandula tiroidea incluyen el cancer medular de tiroides de tipo hereditario, la neoplasia endocrina multiple, el sindrome de Cowden y la poliposis adenomatosa familiar').
factor_riesgo0(exposicion_a_radiacion).
factor_riesgo0(sexo_femenimo).
factor_riesgo0(sindromes_geneticos).

%=:= es igual ==

% Regla para calcular el porcentaje de sintomas que coinciden con el cancer de tiroides
calcular_porcentaje_coincidencia(Sintomas, Porcentaje) :-
    findall(S, (member(S, Sintomas), sintoma(S)), SintomasCoincidentes),
    length(SintomasCoincidentes, NumCoincidentes),
    length(Sintomas, TotalSintomas),
    Porcentaje is NumCoincidentes * 100 / TotalSintomas.

% Regla para verificar los sintomas y calcular el porcentaje de coincidencia con cancer de tiroides
multisintomasR(X, Y, Z, R) :-
    Sintomas = [X, Y, Z],
    calcular_porcentaje_coincidencia(Sintomas, Porcentaje),
    (
        Porcentaje =:= 100 ->
        R = ['Si tienes los tres sintomas, el porcentaje de coincidencia con cancer de tiroides es:', Porcentaje , '%'];
        R = ['El porcentaje de coincidencia con cancer de tiroides es:', Porcentaje, '%']
    ).

%Regla para mostrar solo el tratamiento
tratamientosCancerR(X,R,Y):- tratamiento_cancer(X,Y), R= ['El tratamiento para el cancer de tiroides tipo: ', X, 'es: ', Y].
tratamientosCancerR(X,R,Y):- \+tratamiento_cancer(X,Y), R= ['El tipo de cancer de tiroides tipo: ', X, 'no existe o no tiene un tratamiento definido.'].
	tratamiento_cancer('papilar','Cirugia (tiroidectomia o lobectomia).\n Terapia de yodo radiactivo.\n Terapia con hormonas para evitar que el cuerpo fabrique la hormona estimulante de la tiroides (TSH).\n Radioterapia de haz externo.').
	tratamiento_cancer('medular','Tiroidectomia total si el cancer no se disemino a otras partes del cuerpo. Tambien se extirpan los ganglios linfaticos cerca del cancer.\n Radioterapia de haz externo para pacientes cuyo cancer recidivo en la tiroides. \n Terapia dirigida con un inhibidor de tirosina–cinasas (vandetanib, cabozantinib o selpercatinib) para el cancer que se disemino a otras partes del cuerpo.\n Quimioterapia como terapia paliativa para aliviar los sintomas y mejorar la calidad de vida de los pacientes cuyo cancer se disemino a otras partes del cuerpo').
	tratamiento_cancer('anaplasico','Tiroidectomia total como terapia paliativa para aliviar los sintomas y mejorar la calidad de vida de los pacientes cuyo cancer esta en la tiroides o cerca de esta.\n Traqueostomia como terapia paliativa para aliviar los sintomas y mejorar la calidad de vida. \n Radioterapia de haz externo\nTerapia dirigida con inhibidores de proteinas cinasas (dabrafenib y trametinib) en pacientes que tienen determinada mutacion en el gen BRAF.').

%especialistas
especialista0(cirujano).
especialista0(endocrinologo).
especialista0(oncologo_radioterapia).
especialista0(oncologo_clinico).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% hechos y reglas de smite %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

modos(arena).
modos(conquista).
modos(asalto).
modos(justa).
modos(modalidad_del_dia).
modos(clash).

rol(asesino).
rol(guardina).
rol(cazador).
rol(magos).
rol(guerreros).

modalidadesR(X,R,Y):- modalidad(X,Y), R=['La modalidad de ',X, ':', Y].
modalidadesR(X,R,Y):- \+modalidad(X,Y), R=['La modalidad ',X, 'no pertenece al juego de smite'].
modalidad('arena','La modalidad Arena en Smite es un enfrentamiento entre dos equipos de cinco jugadores en un campo de batalla pequeño y sin estructuras defensivas, donde el objetivo es reducir los "tickets" del equipo contrario. Los jugadores ganan puntos eliminando esbirros, derrotando enemigos y realizando objetivos específicos. Es un modo de juego rápido y frenético, enfocado en combates directos y habilidades individuales, sin la presencia de torres o estructuras defensivas a proteger, lo que lo hace ideal para enfrentamientos constantes y peleas intensas.').
modalidad('conquista','El modo "estándar" del juego. Dos equipos de 5 jugadores colocados en dos bases opuestas conectadas por Tres Carriles (Izquierdo, Derecho y Medio), protegidos por dos Torres y un Fénix.

Este titán posee un gran poder y requiere un trabajo en equipo para poder ser destruido. Con cada estructura destruida el Titán se hará más débil, pero con buen trabajo en equipo y coordinación, se puede lograr la victoria.
Este modo se caracteriza por ser un mapa de tres carriles rodeado por un área de jungla. Tu base es defendida por tres Fénix y un Titán, ubicado en un lado del mapa. La base de tu enemigo está al otro lado del mapa.').
modalidad('justa','Este modo se caracteriza por tener un solo carril en el mapa y una jungla lateral. Tu base es defendida por un Fénix y un Titán, ubicada en un lado del mapa. La base de tu enemigo está al otro lado del mapa.').
modalidad('clash','Este modo tiene como característica un mapa de dos carriles con una pequeña jungla y un campamento en el centro. Tu base, defendida por dos torres, dos Fénix y un Titán, se ubica en un extremo. La base de tu enemigo se ubica al otro extremo del mapa.').
modalidad('asalto','Versión Cooperativa de Asalto, donde 5 jugadores son enfrentado contra 5 bots. En este mapa todos los jugadores tienen dioses elegidos al azar, solo hay un carril con 2 torres, 1 fénix y el Titán en cada lado y sin junglas laterales. El objetivo principal es destruir el titán enemigo. A diferencia de otros modos, no hay forma de regresar a tu base, por lo que es imposible comprar más objetos o restaurar tu vida/mana a menos que mueras. En este modo tampoco es posible comprar ciertos objetos que den ventajas por matar súbditos.').
modalidad('modalidad_del_dia','Esta modalidad cambia cada día y consiste en partidas rápidas ajustando las mecánicas normales de los modos de juego.

Entre las más populares son:

Omnipotencia: Mapa conquista todos con 10k de oro con nivel 1.
Dogball: Modo arena, pero todos los juegadores juegan con la diosa Nox, en el cuál solo pueden usar la habilidad 1 y la ulti.').


tiposDioses(griegos).
tiposDioses(nordicos).
tiposDioses(egipcios).
tiposDioses(chinos).
tiposDioses(hindues).
tiposDioses(mayas).
tiposDioses(romanos).
tiposDioses(celtas).
tiposDioses(vudu).
tiposDioses(japones).

ejemplosTipodios(griegos,'').
ejemplosTipodios(nordicos,'').
ejemplosTipodios(egipcios,'').
ejemplosTipodios(chinos,'').
ejemplosTipodios(hindues,'').
ejemplosTipodios(mayas,'').
ejemplosTipodios(romanos,'').
ejemplosTipodios(celtas,'').
ejemplosTipodios(vudu,'').
ejemplosTipodios(japones,'').

dios(ares).
dios(ah_muzen_cab).
dios(ah_puch).
dios(amaterasu).
dios(anhur).
dios(anubis).
dios(ao_kuang).
dios(aphrodite).
dios(apollo).
dios(arachne).
dios(ares).
dios(artemis).
dios(athena).
dios(awilix).
dios(baba_yaga).
dios(bacchus).
dios(bakasura).
dios(baron_samedi).
dios(bastet).
dios(bellona).
dios(cabrakan).
dios(camazotz).
dios(cernunnos).
dios(chaac).
dios(chang_e).
dios(charybdis).
dios(chernobog).
dios(chiron).
dios(chronos).
dios(cu_chulainn).
dios(cupid).
dios(da_ji).
dios(danzaburou).
dios(discordia).
dios(erlang_shen).
dios(fafnir).
dios(fenrir).
dios(freya).
dios(ganesha).
dios(geb).
dios(guan_yu).
dios(hachiman).
dios(hades).
dios(he_bo).
dios(heimdallr).
dios(hera).
dios(hercules).
dios(horus).
dios(hou_yi).
dios(hun_batz).
dios(isis).
dios(izanami).
dios(jade_emperor_s_crown).
dios(janus).
dios(jing_wei).
dios(jormungandr).
dios(kali).
dios(khepri).
dios(khumbakarna).
dios(kukulkan).
dios(kumbhakarna).
dios(kuzenbo).
dios(little_red_scylla).
dios(medusa).
dios(mercury).
dios(merlin).
dios(morrigan).
dios(mulan).
dios(ne_zha).
dios(neith).
dios(nemesis).
dios(nike).
dios(nox).
dios(nu_wa).
dios(odin).
dios(olorun).
dios(oseiros).
dios(pele).
dios(poseidon).
dios(ra).
dios(rama).
dios(ravana).
dios(roma).
dios(sam_odes).
dios(san_dro).
dios(sele_ne).
dios(serket).
dios(set).
dios(skadi).
dios(sobek).
dios(sol).
dios(sun_wukong).
dios(susano).
dios(sylvanus).
dios(tchernobog).
dios(thanatos).
dios(the_morrigan).
dios(thor).
dios(thoth).
dios(tyr).
dios(uchida_izumo).
dios(ullr).
dios(vamana).
dios(vulcan).
dios(xbalanque).
dios(xing_tian).
dios(yemoja).
dios(ymir).
dios(zhong_kui).

%identifica 3 dioses
diosesR(X, Y, Z, R) :-
    (dios(X), dios(Y), dios(Z)) ->
    R = ['Si los', X, Y, 'y', Z, 'pertenecen al catalogo de dioses del juego de smite'];
    ( \+dios(X), \+dios(Y), \+dios(Z)) ->
    R = ['Los', X, Y, 'y', Z, 'no pertenecen al catalogo de dioses del juego de smite'];
    R = ['Al menos uno de los dioses', X, Y, 'o', Z, 'pertenece  al catalogo de dioses del juego de smite'].


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% logica para match de eliza %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

match([],[]).
match([], _):- true.

match([S|Stim],[I|Input]) :-
	atom(S), % si I es un s(X) devuelve falso
	S == I,
	match(Stim, Input),!.

match([S|Stim],[_|Input]) :-
% I es un s(X), lo ignoro y continuo con el resto de la lista
	\+atom(S),
	match(Stim, Input),!.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% replace de eliza %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

replace0([], _, _, Resp, R):- append(Resp, [], R),!.

% Eliza knowledge:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagKnowledge,
	elizaKnowledge(Atom, R).

% Eliza does:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagDo,
	elizaDoes(Atom, R).

% Eliza is:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagIs,
	elizaIs(Atom, R).

replace0([I|Index], Input, N, Resp, R):-
	length(Index, M), M =:= 0,
	nth0(I, Input, Atom),
	select(N, Resp, Atom, R1), append(R1, [], R),!.

replace0([I|Index], Input, N, Resp, R):-
	nth0(I, Input, Atom),
	length(Index, M), M > 0,
	select(N, Resp, Atom, R1),
	N1 is N + 1,
	replace0(Index, Input, N1, R1, R),!.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% replace de enfermedad %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%sintomas
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == sintoma,
	sintomas(Atom, R).

%multisintomas
replace0([I,J,K|_],Input,_,Resp, R):-
	nth0(I, Input, Atom1),
	nth0(0, Resp, X),
	X == multisintomas,
	nth0(J, Input, Atom2),
	nth0(0, Resp, Y),
	Y == multisintomas,
	nth0(K, Input, Atom3),
	nth0(0, Resp, Z),
	Z == multisintomas,
	multisintomasR(Atom1, Atom2, Atom3, R).

%tipo_cancer
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == tipo_cancer,
    tiposCancerR(Atom, R, _).


%Diangosticos
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == dianosticos,
	dianosticosR(Atom, R, _).

%tratamientos
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == tipo_tratamiento_cancer,
    tratamientosCancerR(Atom, R, _).

%factor riegos
replace0([I|_], Input, _, Resp, R):-
    nth0(I, Input, Atom),
    nth0(0, Resp, X),
    X == factor_riesgo,
    factorRiesgoR(Atom, R, _).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% replace de smite %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%definicion de una modalidad
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == modalidades,
	modalidadesR(Atom, R, _).

%identifica 3 dioses
replace0([I,J,K|_],Input,_,Resp, R):-
	nth0(I, Input, Atom1),
	nth0(0, Resp, X),
	X == dioses,
	nth0(J, Input, Atom2),
	nth0(0, Resp, Y),
	Y == dioses,
	nth0(K, Input, Atom3),
	nth0(0, Resp, Z),
	Z == dioses,
	diosesR(Atom1, Atom2, Atom3, R).