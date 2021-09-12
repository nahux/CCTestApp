"
Represento una persona con un rol dentro de un proyecto
"
Class {
	#name : #Puesto,
	#superclass : #Object,
	#instVars : [
		'persona',
		'rol'
	],
	#category : #'CCTestApp-Proyectos'
}

{ #category : #'instance creation' }
Puesto class >> newWithPersona: aPersona rol: aRol [

	^ self new
		  persona: aPersona;
		  rol: aRol;
		  yourself
]

{ #category : #accessing }
Puesto >> persona [

	^ persona
]

{ #category : #accessing }
Puesto >> persona: aPerson [

	persona := aPerson
]

{ #category : #accessing }
Puesto >> rol [

	^ rol
]

{ #category : #accessing }
Puesto >> rol: aRol [

	rol := aRol
]
