
tipo_cancer(tiroides, papilar).
tipo_cancer(tiroides, folicular).
tipo_cancer(tiroides, medular).
tipo_cancer(tiroides, hurthtle).
tipo_cancer(tiroides, anaplásico).
tipo_cancer(tiroides, poco_diferenciado).

sintoma(cancer_tiroides, bulto_cuello).
sintoma(cancer_tiroides, cambios_voz).
sintoma(cancer_tiroides, dolor_garganta).
sintoma(cancer_tiroides, dolor_cuello).
sintoma(cancer_tiroides, dificulatad_al_pasar).
sintoma(cancer_tiroides, hinchazon_de_ganglios).

factor_riesgo(cancer_tiroides, predisposicion_genetica).
factor_riesgo(cancer_tiroides, sexo_feminimo).
factor_riesgo(cancer_tiroides, altos_niveles_radicacion).

tratamiento(cancer_tiroides, cirugia).
tratamiento(cancer_tiroides, radioterapia).
tratamiento(cancer_tiroides, quimioterapia).
tratamiento(cancer_tiroides, terapia_con_homona_tiroidea).
tratamiento(cancer_tiroides, terapia_dirigida).
tratamiento(cancer_tiroides_papilar, cirugia).
tratamiento(cancer_tiroides_papilar, terapia_yodo_radiactivo).
tratamiento(cancer_tiroides_papilar, terapia_hormonas).
tratamiento(cancer_tiroides_papilar, radioterapia_haz_externo).
tratamiento(cancer_tiroides_medular, tiroidectomia).
tratamiento(cancer_tiroides_medular, radioterapia_haz_externo).
tratamiento(cancer_tiroides_medular, radioterapia_haz_externo).
tratamiento(cancer_tiroides_anaplasico, tiroidectomia).
tratamiento(cancer_tiroides_anaplasico, traquestomia).
tratamiento(cancer_tiroides_anaplasico, quimioterapia).
tratamiento(cancer_tiroides_anaplasico, radioterapia_haz_externo).
tratamiento(cancer_tiroides_anaplasico, terapia_dirigida).

especialista(cancer_tiroides,cirujano).
especialista(cancer_tiroides,endocrinologo).
especialista(cancer_tiroides,oncologo_radioterapia).
especialista(cancer_tiroides,oncologo_clinico).

complicacion(cancer_tiroides, diseminacion).

diseminacion(cancer_tiroides,gangilos_linfaticos).
diseminacion(cancer_tiroides,pulmones).
diseminacion(cancer_tiroides,huesos).
diseminacion(cancer_tiroides,cerebro).
diseminacion(cancer_tiroides,higado).
diseminacion(cancer_tiroides,piel).





