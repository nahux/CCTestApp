"
Soy líder de proyecto. Le asigno tareas a mis empleados
"
Class {
	#name : #Leader,
	#superclass : #Person,
	#instVars : [
		'employees'
	],
	#category : #'CCTestApp-Proyectos'
}

{ #category : #doing }
Leader >> assignTask: aTask toEmployee: anEmployee [

	anEmployee class name = 'Leader' ifTrue: [ ^ false ].
	aTask employees add: anEmployee
]

{ #category : #doing }
Leader >> task: aTask hasEmployee: anEmployee [

	^ aTask employees includes: anEmployee
]
