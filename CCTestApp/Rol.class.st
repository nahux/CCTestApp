"
Represento un Rol a cumplir dentro de un proyecto.
"
Class {
	#name : #Rol,
	#superclass : #Object,
	#instVars : [
		'nombre'
	],
	#category : #'CCTestApp-Proyectos'
}

{ #category : #accessing }
Rol >> nombre [

	^ nombre
]

{ #category : #accessing }
Rol >> nombre: anObject [

	nombre := anObject
]
