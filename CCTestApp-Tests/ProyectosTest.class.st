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
	| p1 p2 r1 r2 |
	super setUp.
	puestos:= OrderedCollection new.
	
	p1:= Persona new.
	p1 nombre: 'Juan'.
	r1:= Rol new.
	r1 nombre: 'Lider'.
	puestos add: (Puesto newWithPersona: p1 rol: r1).
	
	p2:= Persona new.
	p2 nombre: 'Pepe'.
	r2:= Rol new.
	r2 nombre: 'Desarrollador'.
	puestos add: (Puesto newWithPersona: p2 rol: r2).
	
	proyecto:= Proyecto new.
	proyecto nombre: 'Refactor backend'.
	proyecto puestos: puestos.
]

{ #category : #tests }
ProyectosTest >> testPersonas [
	self assert: ((proyecto puestos at: 1) persona) nombre equals: 'Juan'.
	self assert: ((proyecto puestos at: 2) persona) nombre equals: 'Pepe'.
	self assert: (proyecto nombre) equals: 'Refactor backend'.
]
