Extension { #name : #MCSnapshot }

{ #category : #'*Ring2-Monticello' }
MCSnapshot >> ring2ImportInto: aRG2Environment asPackageNamed: aPackageName [

	| aRG2PacakgeDefinition |
	aRG2PacakgeDefinition := aRG2Environment ensurePackageNamed: aPackageName.
	self definitions do: [ :each |
		each ensureRing2DefinitionIn: aRG2Environment package: aRG2PacakgeDefinition ].

	^ aRG2PacakgeDefinition
]
