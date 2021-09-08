"
Represento un Rol dentro de un proyecto.

For the Class part:  State a one line summary. For example, ""I represent a paragraph of text"".

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them.

Public API and Key Messages
•	message one
•	message two
•	(for bonus points) how to create instances.

One simple example is simply gorgeous.

Internal Representation and Key Implementation Points.

Instance Variables
nombre:  <Object>

Implementation Points

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
