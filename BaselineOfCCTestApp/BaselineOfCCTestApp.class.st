"
Baseline of the CCTestApp
"
Class {
	#name : #BaselineOfCCTestApp,
	#superclass : #BaselineOf,
	#category : #BaselineOfCCTestApp
}

{ #category : #baselines }
BaselineOfCCTestApp >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'CodeCaption'
				with:
					[ spec repository: 'github://nahux/pharo-code-caption' ].
			spec package: 'CCTestApp' ]
]
