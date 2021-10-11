"
Soy una persona participante en un proyecto
"
Class {
	#name : #Person,
	#superclass : #Object,
	#instVars : [
		'name'
	],
	#category : #'CCTestApp-Proyectos'
}

{ #category : #accessing }
Person >> name [
	^ name
]

{ #category : #accessing }
Person >> name: aName [
	name := aName
]
