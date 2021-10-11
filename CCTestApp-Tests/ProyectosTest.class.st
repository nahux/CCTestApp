"
Tests for CCTestApp
"
Class {
	#name : #ProyectosTest,
	#superclass : #TestCase,
	#instVars : [
		'project',
		'positions'
	],
	#category : #'CCTestApp-Tests-Tests'
}

{ #category : #running }
ProyectosTest >> setUp [

	| p1 p2 r1 r2 t1 t2 t3 |
	super setUp.
	positions := OrderedCollection new.

	p1 := Leader new.
	p1 name: 'Juan'.
	r1 := Role new.
	r1 name: 'Lider'.
	positions add: (Position newWithPerson: p1 role: r1).

	t1 := Task newWithName: 'Conducir Proyecto'.
	p1 assignTask: t1 toEmployee: p1.

	p2 := Employee new.
	p2 name: 'Pepe'.
	r2 := Role new.
	r2 name: 'Desarrollador'.
	positions add: (Position newWithPerson: p2 role: r2).
	t2 := Task newWithName: 'Desarrollo de back end'.
	p1 assignTask: t2 toEmployee: p2.

	t3:= Task newWithName: 'Desarrollo de front end'.
	p1 assignTask: t3 toEmployee: p2.
	
	project := Project new.
	project name: 'Refactor backend'.
	project positions: positions.
	project tasks: (OrderedCollection with: t1 with: t2 with: t3).
]

{ #category : #tests }
ProyectosTest >> testPersons [
	self assert: ((project positions at: 1) person) name equals: 'Juan'.
	self assert: ((project positions at: 2) person) name equals: 'Pepe'.
]

{ #category : #tests }
ProyectosTest >> testTareas [

	self assert: project tasks size equals: 3.
	self assert: project name equals: 'Refactor backend'.

	self assert: project tasks size equals: 3.
	project computeTheTotalCompletionPercentageOfTheProjectTasks.
	self assert: project completionPercentage equals: 0.

	self assert: (((positions at: 1) person
			 task: (project tasks at: 1)
			 hasEmployee: (positions at: 1) person)) not.

	((project tasks at: 2) employees at: 1) doTask: (project tasks at: 2).
	project computeTheTotalCompletionPercentageOfTheProjectTasks.
	self assert: project completionPercentage equals: 33.33
]
