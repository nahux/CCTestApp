"
Soy un empleado, me encargo de realizar tareas. Tengo un líder que me asigna tareas
"
Class {
	#name : #Employee,
	#superclass : #Person,
	#instVars : [
		'leader'
	],
	#category : #'CCTestApp-Proyectos'
}

{ #category : #doing }
Employee >> doTask: aTask [

	| isMyTask |
	isMyTask := false.
	aTask employees do: [ :e | e == self ifTrue: [ isMyTask := true ] ].
	isMyTask
		ifTrue: [ 
			aTask completed: true.
			^ true ]
		ifFalse: [ ^ false ]
]
