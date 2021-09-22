"
Tests for CCTestApp
"
Class {
	#name : #ProyectosTest,
	#superclass : #TestCase,
	#instVars : [
		'proyecto',
		'puestos'
	],
	#category : #'CCTestApp-Tests-Tests'
}

{ #category : #running }
ProyectosTest >> setUp [

	| p1 p2 r1 r2 t1 t2 t3 |
	super setUp.
	puestos := OrderedCollection new.

	p1 := Lider new.
	p1 nombre: 'Juan'.
	r1 := Rol new.
	r1 nombre: 'Lider'.
	puestos add: (Puesto newWithPersona: p1 rol: r1).

	t1 := Tarea newWithNombre: 'Conducir Proyecto'.
	p1 asignarTarea: t1 aEmpleado: p1.

	p2 := Empleado new.
	p2 nombre: 'Pepe'.
	r2 := Rol new.
	r2 nombre: 'Desarrollador'.
	puestos add: (Puesto newWithPersona: p2 rol: r2).
	t2 := Tarea newWithNombre: 'Desarrollo de back end'.
	p1 asignarTarea: t2 aEmpleado: p2.

	t3:= Tarea newWithNombre: 'Desarrollo de front end'.
	p1 asignarTarea: t3 aEmpleado: p2.
	
	proyecto := Proyecto new.
	proyecto nombre: 'Refactor backend'.
	proyecto puestos: puestos.
	proyecto tareas: (OrderedCollection with: t1 with: t2 with: t3).
]

{ #category : #tests }
ProyectosTest >> testPersonas [
	self assert: ((proyecto puestos at: 1) persona) nombre equals: 'Juan'.
	self assert: ((proyecto puestos at: 2) persona) nombre equals: 'Pepe'.
]

{ #category : #tests }
ProyectosTest >> testTareas [
	self assert: (proyecto tareas size) equals: 3.
	self assert: (proyecto nombre) equals: 'Refactor backend'.
	
	self assert: (proyecto tareas size) equals: 3.
	proyecto calcularPorcentajeCompletadoDeTareasDelProyecto.
	self assert: (proyecto porcentajeCompletado) equals: 0.
	
	self assert: (((puestos at: 1) persona) tarea: (proyecto tareas at: 1) tieneAEmpleado: ((puestos at: 1) persona)) not.
	
	((proyecto tareas at: 2) empleados at: 1) realizarTarea: (proyecto tareas at: 2).
	proyecto calcularPorcentajeCompletadoDeTareasDelProyecto.
	self assert: (proyecto porcentajeCompletado) equals: 33.33.
]
