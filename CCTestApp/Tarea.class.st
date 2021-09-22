"
Soy una tarea adentro de un proyecto
"
Class {
	#name : #Tarea,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'empleados',
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

{ #category : #accessing }
Tarea >> empleados [

	^ empleados
]

{ #category : #accessing }
Tarea >> empleados: anObject [

	empleados := anObject
]

{ #category : #initialization }
Tarea >> initialize [
	completada:= false.
	empleados:= OrderedCollection new.
]

{ #category : #accessing }
Tarea >> nombre [

	^ nombre
]

{ #category : #accessing }
Tarea >> nombre: anObject [

	nombre := anObject
]
