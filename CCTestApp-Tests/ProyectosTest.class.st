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

	p1 := Persona new.
	p1 nombre: 'Juan'.
	r1 := Rol new.
	r1 nombre: 'Lider'.
	puestos add: (Puesto newWithPersona: p1 rol: r1).

	t1 := Tarea newWithNombre: 'Conducir Proyecto'.
	t1 puestos:
		(OrderedCollection with: (Puesto newWithPersona: p1 rol: r1)).

	p2 := Persona new.
	p2 nombre: 'Pepe'.
	r2 := Rol new.
	r2 nombre: 'Desarrollador'.
	puestos add: (Puesto newWithPersona: p2 rol: r2).
	t2 := Tarea newWithNombre: 'Desarrollo de back end'.
	t2 puestos: (OrderedCollection
			 with: (Puesto newWithPersona: p1 rol: r2)
			 with: (Puesto newWithPersona: p2 rol: r2)).

	t3:= Tarea newWithNombre: 'Desarrollo de front end'.
	t3 puestos: (OrderedCollection with: (Puesto newWithPersona: p2 rol: r2)).
	
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
	self assert: (proyecto calcularPorcentajeCompletado) equals: 0.
	(proyecto tareas at: 1) completada: true.
	self assert: (proyecto calcularPorcentajeCompletado) equals: 33.33.
]
