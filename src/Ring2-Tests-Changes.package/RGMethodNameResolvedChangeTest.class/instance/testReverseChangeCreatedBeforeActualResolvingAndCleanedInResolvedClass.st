tests - revert
testReverseChangeCreatedBeforeActualResolvingAndCleanedInResolvedClass

	"test if we can revert a cleaned change created before the actual method name resolving. Method has known class. It should unresolve the method name"

	| class method change |
	
	class := RGClass named: #SomeClass.
	method := class ensureUnresolvedLocalMethod.
	change := RGMethodNameResolvedChange for: method newName: #someName.
	change clean.
	method name: #someName.

	change reverseIn: method environment. 

	self assert: method hasResolvedName not.