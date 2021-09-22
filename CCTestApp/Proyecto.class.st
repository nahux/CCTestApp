"
Soy un proyecto que contiene tareas a cumplir por personas con distintos roles
"
Class {
	#name : #Proyecto,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'puestos',
		'porcentajeCompletado',
		'tareas'
	],
	#category : #'CCTestApp-Proyectos'
}

{ #category : #calculating }
Proyecto >> calcularPorcentajeCompletadoDeTareasDelProyecto [
	| tareasCompletadas |
	tareasCompletadas:= OrderedCollection new.
	tareas do: [ :t | t completada ifTrue:[ tareasCompletadas add: t ]].
	
	 porcentajeCompletado:= (((tareasCompletadas size / tareas size) asFloat) * 100) round: 2
]

{ #category : #initialization }
Proyecto >> initialize [
	porcentajeCompletado:= 0.
	puestos:= OrderedCollection new.
	tareas:= OrderedCollection new.
]

{ #category : #accessing }
Proyecto >> nombre [

	^ nombre
]

{ #category : #accessing }
Proyecto >> nombre: anObject [

	nombre := anObject
]

{ #category : #accessing }
Proyecto >> porcentajeCompletado [

	^ porcentajeCompletado
]

{ #category : #accessing }
Proyecto >> porcentajeCompletado: anObject [

	porcentajeCompletado := anObject
]

{ #category : #accessing }
Proyecto >> puestos [

	^ puestos
]

{ #category : #accessing }
Proyecto >> puestos: anObject [

	puestos := anObject
]

{ #category : #accessing }
Proyecto >> tareas [

	^ tareas
]

{ #category : #accessing }
Proyecto >> tareas: anObject [

	tareas := anObject
]
