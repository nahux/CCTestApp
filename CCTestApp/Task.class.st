"
Soy una tarea adentro de un proyecto
"
Class {
	#name : #Task,
	#superclass : #Object,
	#instVars : [
		'completed',
		'employees',
		'name'
	],
	#category : #'CCTestApp-Project'
}

{ #category : #'instance creation' }
Task class >> newWithName: aName [

	^ self new
		  name: aName;
		  yourself
]

{ #category : #accessing }
Task >> completed [

	^ completed
]

{ #category : #accessing }
Task >> completed: anObject [

	completed := anObject
]

{ #category : #accessing }
Task >> employees [

	^ employees
]

{ #category : #accessing }
Task >> employees: anObject [

	employees := anObject
]

{ #category : #initialization }
Task >> initialize [
	completed:= false.
	employees:= OrderedCollection new.
]

{ #category : #accessing }
Task >> name [

	^ name
]

{ #category : #accessing }
Task >> name: anObject [

	name := anObject
]
