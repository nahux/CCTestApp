"
Represento un Rol a cumplir dentro de un proyecto.
"
Class {
	#name : #Role,
	#superclass : #Object,
	#instVars : [
		'name'
	],
	#category : #'CCTestApp-Project'
}

{ #category : #accessing }
Role >> name [

	^ name
]

{ #category : #accessing }
Role >> name: anObject [

	name := anObject
]
