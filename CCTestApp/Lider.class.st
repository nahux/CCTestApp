"
Soy líder de proyecto. Le asigno tareas a mis empleados
"
Class {
	#name : #Lider,
	#superclass : #Persona,
	#instVars : [
		'empleados'
	],
	#category : #'CCTestApp-Proyectos'
}

{ #category : #doing }
Lider >> asignarTarea: aTarea aEmpleado: aEmpleado [
	aEmpleado class name = 'Lider' ifTrue: [ ^ false ].
	aTarea empleados add: aEmpleado.
	
]

{ #category : #doing }
Lider >> tarea: aTarea tieneAEmpleado: aEmpleado [
	^ aTarea empleados includes: aEmpleado.
	
]
