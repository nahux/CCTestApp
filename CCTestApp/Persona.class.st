"
Soy una persona participante en un proyecto
"
Class {
	#name : #Persona,
	#superclass : #Object,
	#instVars : [
		'nombre'
	],
	#category : #'CCTestApp-Proyectos'
}

{ #category : #accessing }
Persona >> nombre [

	^ nombre
]

{ #category : #accessing }
Persona >> nombre: anObject [

	nombre := anObject
]
