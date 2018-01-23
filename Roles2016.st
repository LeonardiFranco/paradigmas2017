'From VisualWorks® Personal Use Edition, 8.1.1 of 10 de marzo de 2016 on 5 de octubre de 2016 at 19:05:17'!


CodeComponent create: #package named: 'Roles'!"Package Roles*"!


CodeComponent create: #package named: 'Roles'!

Smalltalk defineNameSpace: #Roles
	private: false
	imports: '
			private Smalltalk.*
			'
	category: ''!

Smalltalk.Roles defineClass: #ObjectWithRoles
	superclass: #{Core.Object}
	indexedType: #none
	private: false
	instanceVariableNames: 'rolePlayer roles playingRoles answerYourself playingRolesAnswer singleAnswer '
	classInstanceVariableNames: ''
	imports: ''
	category: ''!

Roles.ObjectWithRoles comment:
'Relationship between an object that can play roles and its roles

Instance Variables
	rolePlayer	any object that can play roles
	roles	roles that can be performed by rolePlayer
	playingRoles	<role collection> actual roles been performed by rolePlayer
	answerYourserf	define if rolePlayer must or not try to answer messages
	playingRolesAnswer	define if playingRoles must or not try to answer messages
	singleAnswer	define if object must return a single and simple answer or multipe answers

'!

!Roles.ObjectWithRoles class methodsFor: 'instance creation'!

new: anObject

	|newObject|	
	newObject := self new.
	newObject rolePlayer: anObject.
	^newObject!

new
	"Answer a newly created and initialized instance."

	^super new initialize! !


!Roles.ObjectWithRoles methodsFor: 'accessing'!

roles

	^roles copy!

rolePlayer: aRolePlayer
	"Change the role player by aRolePlayer"

	rolePlayer := aRolePlayer!

rolePlayer
	"Return the actual role player"

	^rolePlayer!

playingRoles

	^playingRoles copy! !

!Roles.ObjectWithRoles methodsFor: 'playRoles'!

playNoneRole
	"make role player play none role"

	playingRoles removeAll.
	self asYourself.!

playRoleThat: aBlock
	"makes role playes play the first valid role found such that aBlock is true"

	playingRoles removeAll.
	playingRoles add: (roles detect: [:role | aBlock cull: role])!

playRole: aRole
	"try to make role player play aRole"

	playingRoles removeAll.
	(roles includes: aRole) ifTrue: [playingRoles add: aRole]!

playRoles: aRoleCollection
	"makes role playes play all valid roles from aRoleCollection"

	playingRoles removeAll.
	playingRoles addAll: (aRoleCollection select: [:rol | roles includes: rol])!

playRolesThat: aBlock
	"makes role playes play all valid roles such that aBlock is true"

	playingRoles removeAll.
	playingRoles addAll: (roles select: [:role | aBlock cull: role])!

playAll
	"Make role player and all roles try to answer messages"

	self asBoth.
	playingRoles addAll: roles.!

playAllRoles
	"makes only all roles try to answer messages"

	self asRoles; multipleAnswers.
	playingRoles addAll: roles.! !

!Roles.ObjectWithRoles methodsFor: 'removing'!

removeRoles: aRoleCollection
	"remove the responsability for role player to play a role, aRole"

	aRoleCollection do: 
			[:oldRole |
			roles remove: oldRole ifAbsent: [].
			playingRoles remove: oldRole ifAbsent: []]!

removeRole: aRole
	"remove the responsability for role player to play a role, aRole"

	| rol |
	rol := roles detect: [:role | role = aRole] ifNone: [nil].
	rol
		ifNotNil: 
			[roles remove: rol.
			playingRoles remove: rol ifAbsent: []]!

removeAllRoles

	roles removeAll.
	playingRoles removeAll.
	self asYourself!

removeRolesThat: aBlock

	(roles select: aBlock) do: 
			[:role |
			roles remove: role.
			playingRoles remove: role ifAbsent: []]!

removeRoleThat: aBlock

	| rol |
	rol := roles detect: aBlock ifNone: [nil].
	rol
		ifNotNil: 
			[roles remove: rol.
			playingRoles remove: rol ifAbsent: []]! !

!Roles.ObjectWithRoles methodsFor: 'initialize-release'!

initialize
	"Initialize a newly created instance. This method must answer the receiver."

	super initialize.
	rolePlayer := nil.
	roles := Set new.
	playingRoles := Set new.
	answerYourself := true.
	playingRolesAnswer := true.
	singleAnswer:= true.
	^self! !

!Roles.ObjectWithRoles methodsFor: 'message handling'!

doesNotUnderstand: aMessage

	^self answer: aMessage!

multipleAnswers
	"Switch multiple answers like true.
	Make #answer: ruturn a receptor -> answer association collection"

	singleAnswer := false.!

answer: aMessage
	"Ask to role player or roles aMassege and return the answer/s.
	If single answer was asked so will return a simple answer, 
	otherwise will return a Diccionary with the associations: receptor -> answer."

	| receptors |
	receptors := OrderedCollection new.
	answerYourself ifTrue: [receptors add: rolePlayer].
	playingRolesAnswer ifTrue: [receptors addAll: playingRoles].
	^singleAnswer
		ifTrue: 
			[(receptors detect: [:receptor | receptor respondsTo: aMessage selector]
				ifNone: [^super doesNotUnderstand: aMessage]) perform: aMessage selector
					withArguments: aMessage arguments]
		ifFalse: 
			[| answers |
			answers := Dictionary new.
			(receptors asSet select: [:receptor | receptor respondsTo: aMessage selector]) do: 
					[:receptor |
					answers add: receptor
								-> (receptor perform: aMessage selector withArguments: aMessage arguments)].
			answers size = 0
				ifFalse: [answers]
				ifTrue: [super doesNotUnderstand: aMessage]]!

singleAnswer
	"Switch single answer like true.
	Makes #answer: return a single and simple answer."

	singleAnswer := true!

notSingleAnswer
	"Same #multipleAnswers"

	self multipleAnswers! !

!Roles.ObjectWithRoles methodsFor: 'class membership'!

respondsTo: selector withoutAskingIf: aBlock

	^self respondsTo: selector
		withoutAskingTo: 
			[| aNonReceptorsSet |
			aNonReceptorsSet := Set new.
			(aBlock cull: rolePlayer) ifTrue: [aNonReceptorsSet add: rolePlayer].
			playingRoles
				do: [:role | (aBlock cull: role) ifTrue: [aNonReceptorsSet add: role]].
			aNonReceptorsSet]
					value!

respondsTo: selector

	^(self class canUnderstand: selector) or: [self respondsTo: selector withoutAskingTo: Set new]!

respondsTo: selector withoutAskingTo: aNonReceptorsSet

	| receptors |
	receptors := Set new.
	answerYourself ifTrue: [receptors add: rolePlayer].
	playingRolesAnswer ifTrue: [receptors addAll: playingRoles].
	(aNonReceptorsSet includes: self)
		ifFalse: 
			[(super respondsTo: selector)
				ifTrue: [^true]
				ifFalse: [aNonReceptorsSet add: self]].
	aNonReceptorsSet
		do: [:nonReceptor | receptors remove: nonReceptor ifAbsent: []].
	receptors detect: 
			[:role |
			(role respondsTo: #respondsTo:withoutAskingTo:)
				ifFalse: [role respondsTo: selector]
				ifTrue: [role respondsTo: selector withoutAskingTo: aNonReceptorsSet]]
		ifNone: [^false].
	^true! !

!Roles.ObjectWithRoles methodsFor: 'behavoir'!

asYourself
	"makes #answer: try to answer like role player in a single and simple way"

	answerYourself := true.
	playingRolesAnswer := false.
	self singleAnswer!

asRoles
	"makes #answer: try to answer like playing roles"

	answerYourself := false.
	playingRolesAnswer := true.!

asBoth
	"makes #answer: try to answer like role player and playing roles"

	answerYourself := true.
	playingRolesAnswer := true.! !

!Roles.ObjectWithRoles methodsFor: 'adding'!

addRole: aRole
	"add aRole to the set of roles that object can perform"

	roles add: aRole!

addRoles: aRoleCollection
	"add all rolee from aRoleCollection to the set of roles that object can perform"

	aRoleCollection do: [:rol | self addRole: rol].! !


!Core.Object class methodsFor: 'instance creation'!

newWithRoles: aRoleCollection

	^(Roles.ObjectWithRoles new: self new) addRoles: aRoleCollection!

newWithRoles

	^Roles.ObjectWithRoles new: self new! !

