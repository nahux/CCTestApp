"
Soy un empleado, me encargo de realizar tareas. Tengo un líder que me asigna tareas
"
Class {
	#name : #Empleado,
	#superclass : #Persona,
	#instVars : [
		'lider'
	],
	#category : #'CCTestApp-Proyectos'
}

{ #category : #doing }
Empleado >> realizarTarea: aTarea [

	| isMyTarea |
	isMyTarea := false.
	aTarea empleados do: [ :e | e == self ifTrue: [ isMyTarea := true ] ].
	isMyTarea
		ifTrue: [ 
			aTarea completada: true.
			^ true ]
		ifFalse: [ ^ false ]
]
