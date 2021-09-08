"
Tests for CCTestApp
"
Class {
	#name : #ProyectosTest,
	#superclass : #TestCase,
	#instVars : [
		'proyecto',
		'personas',
		'roles'
	],
	#category : #'CCTestApp-Tests-Tests'
}

{ #category : #running }
ProyectosTest >> setUp [
	| p1 p2 r1 r2 |
	super setUp.
	p1:= Persona new.
	p1 nombre: 'Juan'.
	p2:= Persona new.
	p2 nombre: 'Pepe'.
	personas:= Array with: p1 with: p2.
	
	r1:= Rol new.
	r1 nombre: 'Lider'.
	r2:= Rol new.
	r2 nombre: 'Desarrollador'.
	roles:= Array with: r1 with: r2.
	
	proyecto:= Proyecto new.
	proyecto nombre: 'Refactor backend'.
]

{ #category : #tests }
ProyectosTest >> testPersonas [
	self assert: (personas at: 1) nombre equals: 'Juan'.
	self assert: (proyecto nombre) equals: 'Refactor backend'.
]
