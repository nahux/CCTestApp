"
Soy un proyecto que contiene tareas a cumplir por personas con distintos roles
"
Class {
	#name : #Project,
	#superclass : #Object,
	#instVars : [
		'name',
		'positions',
		'completionPercentage',
		'tasks'
	],
	#category : #'CCTestApp-Project'
}

{ #category : #accessing }
Project >> completionPercentage [

	^ completionPercentage
]

{ #category : #accessing }
Project >> completionPercentage: aNumber [

	completionPercentage := aNumber
]

{ #category : #calculating }
Project >> computeCompletionPercentageOfProjectsTasks [
	| completedTasks |
	completedTasks:= OrderedCollection new.
	tasks do: [ :t | t completed ifTrue:[ completedTasks add: t ]].
	
	 completionPercentage:= (((completedTasks size / tasks size) asFloat) * 100) round: 2
]

{ #category : #initialization }
Project >> initialize [
	completionPercentage:= 0.
	positions:= OrderedCollection new.
	tasks:= OrderedCollection new.
]

{ #category : #accessing }
Project >> name [
	^ name
]

{ #category : #accessing }
Project >> name: aProjectName [
	name := aProjectName
]

{ #category : #accessing }
Project >> positions [

	^ positions
]

{ #category : #accessing }
Project >> positions: anObject [

	positions := anObject
]

{ #category : #accessing }
Project >> tasks [

	^ tasks
]

{ #category : #accessing }
Project >> tasks: anObject [

	tasks := anObject
]
