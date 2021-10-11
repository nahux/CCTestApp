"
Soy líder de proyecto. Le asigno tareas a mis empleados
"
Class {
	#name : #Leader,
	#superclass : #Person,
	#instVars : [
		'employees'
	],
	#category : #'CCTestApp-Project'
}

{ #category : #initialization }
Leader >> addEmployee: anEmployee [
	employees add: anEmployee.
]

{ #category : #doing }
Leader >> assignTask: aTask toEmployee: anEmployee [

	anEmployee class name = 'Leader' ifTrue: [ ^ false ].
	aTask employees add: anEmployee
]

{ #category : #accessing }
Leader >> employees [

	^ employees
]

{ #category : #accessing }
Leader >> employees: anObject [

	employees := anObject
]

{ #category : #initialization }
Leader >> initialize [
	employees:= OrderedCollection new.
]

{ #category : #doing }
Leader >> task: aTask hasEmployee: anEmployee [

	^ aTask employees includes: anEmployee
]
