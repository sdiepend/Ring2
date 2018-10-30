Extension { #name : #CompiledMethod }

{ #category : #'*Ring2-Compatibility' }
CompiledMethod >> asRing2Definition [
	"Retrieves an active RG2MethodDefinition object based on the receiver.
	Note that its class is not converted."
	
	^ self ensureRing2DefinitionIn: RG2Environment new
]

{ #category : #'*Ring2-Compatibility' }
CompiledMethod >> asRing2DefinitionIn: aRG2Environment [

	^ (self methodClass asRing2DefinitionIn: aRG2Environment) methods detect: [:each | 
			each selector = self selector] ifNone: [ RG2NotFoundError signal ]
	
]
