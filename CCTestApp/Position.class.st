"
Represento una persona con un rol dentro de un proyecto
"
Class {
	#name : #Position,
	#superclass : #Object,
	#instVars : [
		'person',
		'role'
	],
	#category : #'CCTestApp-Project'
}

{ #category : #'instance creation' }
Position class >> newWithPerson: aPerson role: aRole [

	^ self new
		  person: aPerson;
		  role: aRole;
		  yourself
]

{ #category : #accessing }
Position >> person [

	^ person
]

{ #category : #accessing }
Position >> person: aPerson [

	person := aPerson
]

{ #category : #accessing }
Position >> role [

	^ role
]

{ #category : #accessing }
Position >> role: aRole [

	role := aRole
]
