"
Soy una tarea adentro de un proyecto
"
Class {
	#name : #Tarea,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'puestos',
		'porcentajeCompletada',
		'completada'
	],
	#category : #'CCTestApp-Proyectos'
}

{ #category : #'instance creation' }
Tarea class >> newWithNombre: aNombre [

	^ self new
		  nombre: aNombre;
		  yourself
]

{ #category : #accessing }
Tarea >> completada [

	^ completada
]

{ #category : #accessing }
Tarea >> completada: anObject [

	completada := anObject
]

{ #category : #initialization }
Tarea >> initialize [
	completada:= false.
	puestos:= OrderedCollection new.
	porcentajeCompletada:= 0.
]

{ #category : #accessing }
Tarea >> nombre [

	^ nombre
]

{ #category : #accessing }
Tarea >> nombre: anObject [

	nombre := anObject
]

{ #category : #accessing }
Tarea >> porcentajeCompletada [

	^ porcentajeCompletada
]

{ #category : #accessing }
Tarea >> porcentajeCompletada: anObject [

	porcentajeCompletada := anObject
]

{ #category : #accessing }
Tarea >> puestos [

	^ puestos
]

{ #category : #accessing }
Tarea >> puestos: anObject [

	puestos := anObject
]
