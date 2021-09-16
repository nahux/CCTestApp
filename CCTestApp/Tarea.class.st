"
Soy una tarea adentro de un proyecto
"
Class {
	#name : #Tarea,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'puestos',
		'completada',
		'subtareas'
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

{ #category : #modifying }
Tarea >> completarSubtarea: aString [
	subtareas remove: aString ifAbsent: [ ^ false ].
	subtareas isEmpty ifTrue: [ completada:= true ].
	^ true.
	
]

{ #category : #initialization }
Tarea >> initialize [
	completada:= false.
	puestos:= OrderedCollection new.
	subtareas:= OrderedCollection new.
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
Tarea >> puestos [

	^ puestos
]

{ #category : #accessing }
Tarea >> puestos: anObject [

	puestos := anObject
]

{ #category : #accessing }
Tarea >> subtareas [

	^ subtareas
]

{ #category : #accessing }
Tarea >> subtareas: anObject [

	subtareas := anObject
]
