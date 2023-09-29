Class {
	#name : 'RG2UnknownSlotDefinition',
	#superclass : 'RG2SlotDefinition',
	#instVars : [
		'expression'
	],
	#category : 'Ring2-Core-Kernel',
	#package : 'Ring2-Core',
	#tag : 'Kernel'
}

{ #category : 'default model values' }
RG2UnknownSlotDefinition >> defaultExpression [

	'InstanceVariableSlot named: #slotOfUnknownType'
]

{ #category : 'accessing - backend' }
RG2UnknownSlotDefinition >> expression [

	^ self backend forBehavior expressionFor: self
]

{ #category : 'accessing - backend' }
RG2UnknownSlotDefinition >> expression: aString [

	self parent parent announceDefinitionChangeDuring: [ 
		self backend forBehavior setExpressionFor: self to: aString ].


]

{ #category : 'initialization' }
RG2UnknownSlotDefinition >> initialize [

	super initialize.
	
	expression := self unresolvedValue: self defaultExpression.

]

{ #category : 'resolving' }
RG2UnknownSlotDefinition >> makeResolved [

	super makeResolved.
	
	expression := self expression.

]

{ #category : 'private - backend interface' }
RG2UnknownSlotDefinition >> printOn: aStream [

	aStream << self name asString << ' => ' << self expression asString
]

{ #category : 'private - backend interface' }
RG2UnknownSlotDefinition >> pvtExpression [

	^ expression value
]

{ #category : 'private - backend interface' }
RG2UnknownSlotDefinition >> pvtExpression: aString [

	^ expression := aString
]

{ #category : 'private - backend interface' }
RG2UnknownSlotDefinition >> pvtResolvableProperties [

	^ super pvtResolvableProperties, { 
		#expression -> expression. 
	}
	
	
]