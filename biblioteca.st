<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 8.3 of 28 de julio de 2017 on 18 de enero de 2018 at 23:43:12</time-stamp>


<component-created>
<name>Biblioteca</name> <type>package</type>
</component-created><!-- Package Biblioteca* -->


<component-created>
<name>Biblioteca</name> <type>package</type>
</component-created>

<class>
<name>Material</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>idMaterial titulo fechaEdicion editorial ISBN ISSN palabrasClave </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Biblioteca</package>
</attributes>
</class>

<class>
<name>Software</name>
<environment>Smalltalk</environment>
<super>Material</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Biblioteca</package>
</attributes>
</class>

<class>
<name>Video</name>
<environment>Smalltalk</environment>
<super>Material</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Biblioteca</package>
</attributes>
</class>

<class>
<name>Ejemplar</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>idEjemplar idMaterial fechaAlta fechaBaja estado </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Biblioteca</package>
</attributes>
</class>

<class>
<name>Prestamo</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>idPersona fechaPrestamo idEjemplar fechaEDev fechaRDev </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Biblioteca</package>
</attributes>
</class>

<class>
<name>Cobro</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>idUsuario fechaCobro monto </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Biblioteca</package>
</attributes>
</class>

<class>
<name>Persona</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>idPersona nombre dni fechaNacimiento edad sexo </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Biblioteca</package>
</attributes>
</class>

<class>
<name>Libro</name>
<environment>Smalltalk</environment>
<super>Material</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Biblioteca</package>
</attributes>
</class>

<class>
<name>Revista</name>
<environment>Smalltalk</environment>
<super>Material</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>Biblioteca</package>
</attributes>
</class>

<methods>
<class-id>Persona class</class-id> <category>instance creation</category>

<body package="Biblioteca" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Persona</class-id> <category>accessing</category>

<body package="Biblioteca" selector="fechaNacimiento:">fechaNacimiento: anObject	fechaNacimiento := anObject</body>

<body package="Biblioteca" selector="dni:">dni: anObject	dni := anObject</body>

<body package="Biblioteca" selector="edad:">edad: anObject	edad := anObject</body>

<body package="Biblioteca" selector="edad">edad	^edad</body>

<body package="Biblioteca" selector="dni">dni	^dni</body>

<body package="Biblioteca" selector="fechaNacimiento">fechaNacimiento	^fechaNacimiento</body>

<body package="Biblioteca" selector="idPersona:">idPersona: anObject	idPersona := anObject</body>

<body package="Biblioteca" selector="nombre">nombre	^nombre</body>

<body package="Biblioteca" selector="nombre:">nombre: anObject	nombre := anObject</body>

<body package="Biblioteca" selector="sexo">sexo	^sexo</body>

<body package="Biblioteca" selector="sexo:">sexo: anObject	sexo := anObject</body>

<body package="Biblioteca" selector="idPersona">idPersona	^idPersona</body>
</methods>

<methods>
<class-id>Persona</class-id> <category>initialize-release</category>

<body package="Biblioteca" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	idPersona := nil.	nombre := nil.	dni := nil.	fechaNacimiento := nil.	edad := nil.	sexo := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Material class</class-id> <category>instance creation</category>

<body package="Biblioteca" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Material</class-id> <category>accessing</category>

<body package="Biblioteca" selector="palabrasClave">palabrasClave	^palabrasClave</body>

<body package="Biblioteca" selector="iSBN:">iSBN: anObject	ISBN := anObject</body>

<body package="Biblioteca" selector="idMaterial">idMaterial	^idMaterial</body>

<body package="Biblioteca" selector="fechaEdicion:">fechaEdicion: anObject	fechaEdicion := anObject</body>

<body package="Biblioteca" selector="iSSN">iSSN	^ISSN</body>

<body package="Biblioteca" selector="editorial">editorial	^editorial</body>

<body package="Biblioteca" selector="iSSN:">iSSN: anObject	ISSN := anObject</body>

<body package="Biblioteca" selector="titulo">titulo	^titulo</body>

<body package="Biblioteca" selector="editorial:">editorial: anObject	editorial := anObject</body>

<body package="Biblioteca" selector="titulo:">titulo: anObject	titulo := anObject</body>

<body package="Biblioteca" selector="iSBN">iSBN	^ISBN</body>

<body package="Biblioteca" selector="idMaterial:">idMaterial: anObject	idMaterial := anObject</body>

<body package="Biblioteca" selector="palabrasClave:">palabrasClave: anObject	palabrasClave := anObject</body>

<body package="Biblioteca" selector="fechaEdicion">fechaEdicion	^fechaEdicion</body>
</methods>

<methods>
<class-id>Material</class-id> <category>initialize-release</category>

<body package="Biblioteca" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	idMaterial := nil.	titulo := nil.	fechaEdicion := nil.	editorial := nil.	ISBN := nil.	ISSN := nil.	palabrasClave := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Libro</class-id> <category>initialize-release</category>

<body package="Biblioteca" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Revista</class-id> <category>initialize-release</category>

<body package="Biblioteca" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Software</class-id> <category>initialize-release</category>

<body package="Biblioteca" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Video</class-id> <category>initialize-release</category>

<body package="Biblioteca" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Ejemplar class</class-id> <category>instance creation</category>

<body package="Biblioteca" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Ejemplar</class-id> <category>accessing</category>

<body package="Biblioteca" selector="idEjemplar">idEjemplar	^idEjemplar</body>

<body package="Biblioteca" selector="estado:">estado: anObject	estado := anObject</body>

<body package="Biblioteca" selector="fechaAlta:">fechaAlta: anObject	fechaAlta := anObject</body>

<body package="Biblioteca" selector="fechaBaja:">fechaBaja: anObject	fechaBaja := anObject</body>

<body package="Biblioteca" selector="fechaAlta">fechaAlta	^fechaAlta</body>

<body package="Biblioteca" selector="fechaBaja">fechaBaja	^fechaBaja</body>

<body package="Biblioteca" selector="estado">estado	^estado</body>

<body package="Biblioteca" selector="idMaterial">idMaterial	^idMaterial</body>

<body package="Biblioteca" selector="idMaterial:">idMaterial: anObject	idMaterial := anObject</body>

<body package="Biblioteca" selector="idEjemplar:">idEjemplar: anObject	idEjemplar := anObject</body>
</methods>

<methods>
<class-id>Ejemplar</class-id> <category>initialize-release</category>

<body package="Biblioteca" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	idEjemplar := nil.	idMaterial := nil.	fechaAlta := nil.	fechaBaja := nil.	estado := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Prestamo class</class-id> <category>instance creation</category>

<body package="Biblioteca" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Prestamo</class-id> <category>accessing</category>

<body package="Biblioteca" selector="idEjemplar:">idEjemplar: anObject	idEjemplar := anObject</body>

<body package="Biblioteca" selector="idPersona">idPersona	^idPersona</body>

<body package="Biblioteca" selector="fechaEDev">fechaEDev	^fechaEDev</body>

<body package="Biblioteca" selector="fechaRDev">fechaRDev	^fechaRDev</body>

<body package="Biblioteca" selector="idEjemplar">idEjemplar	^idEjemplar</body>

<body package="Biblioteca" selector="fechaPrestamo:">fechaPrestamo: anObject	fechaPrestamo := anObject</body>

<body package="Biblioteca" selector="idPersona:">idPersona: anObject	idPersona := anObject</body>

<body package="Biblioteca" selector="fechaPrestamo">fechaPrestamo	^fechaPrestamo</body>

<body package="Biblioteca" selector="fechaEDev:">fechaEDev: anObject	fechaEDev := anObject</body>

<body package="Biblioteca" selector="fechaRDev:">fechaRDev: anObject	fechaRDev := anObject</body>
</methods>

<methods>
<class-id>Prestamo</class-id> <category>initialize-release</category>

<body package="Biblioteca" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	idPersona := nil.	fechaPrestamo := nil.	idEjemplar := nil.	fechaEDev := nil.	fechaRDev := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Cobro class</class-id> <category>instance creation</category>

<body package="Biblioteca" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Cobro</class-id> <category>accessing</category>

<body package="Biblioteca" selector="monto">monto	^monto</body>

<body package="Biblioteca" selector="fechaCobro">fechaCobro	^fechaCobro</body>

<body package="Biblioteca" selector="idUsuario:">idUsuario: anObject	idUsuario := anObject</body>

<body package="Biblioteca" selector="idUsuario">idUsuario	^idUsuario</body>

<body package="Biblioteca" selector="fechaCobro:">fechaCobro: anObject	fechaCobro := anObject</body>

<body package="Biblioteca" selector="monto:">monto: anObject	monto := anObject</body>
</methods>

<methods>
<class-id>Cobro</class-id> <category>initialize-release</category>

<body package="Biblioteca" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	idUsuario := nil.	fechaCobro := nil.	monto := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>



</st-source>
