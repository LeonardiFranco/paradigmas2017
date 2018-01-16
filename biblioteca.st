Object  subclass: #Persona
        instanceVariableNames: 'idPersona nombre dni fecNac sexo'
        classVariableNames: ''
        poolDictionaries: ''
        category: 'Biblioteca'
        "Clase Persona, mantiene informacion sobre una persona."
!

!Persona methodsFor: 'accessing'!
    idPersona
        ^idPersona
    !

    idPersona: unId
        idPersona := unId
    !

    nombre
        ^nombre
    !

    nombre: unNombre
        nombre := unNombre
    !

    dni
        ^dni
    !

    dni: nDNI
        dni := nDNI
    !

    fecNac
        ^Date today
    !

    fecNac: unaFecha
        fecNac := unaFecha
    !

    edad
        ^((Date today - fecNac) days / 365) asFloat integerPart asInteger
    !

    sexo
        ^sexo
    !

    sexo: unSexo
        sexo := unSexo
    ! !

Object subclass: #Material
    "Clase abstracta que representa todo tipo de objeto que pueda prestarse."
    instanceVariableNames: 'idMaterial titulo fecEdicion editorial ISBN ISSN keywords'
    classVariableNames: ''
    poolDictionaries: ''
    category: 'Biblioteca'
!

!Material methodsFor: 'accessing'!
    idMaterial
        ^idMaterial
    !

    idMaterial: unID
        idMaterial := unID
    !

    titulo
        ^titulo
    !
    titulo: unTitulo
        titulo := unTitulo
    !

    fecEdicion
        ^fecEdicion
    !

    fecEdicion: unaFecha
        fecEdicion := unaFecha
    !

    editorial
        ^editorial
    !

    editorial: unaEditorial
        editorial := unaEditorial
    !

    ISBN
        ^ISBN
    !

    ISBN: unISBN
        ISBN := unISBN
    !

    ISSN
        ^ISSN
    !

    ISSN: unISSN
        ISSN := unISSN
    !

    keywords
        ^keywords
    !

    keywords: unKeyword
        keywords := unKeyword
    ! !

Material subclass: #Libro
!
Material subclass: #Revista
!

Material subclass: #Video
!

Material subclass: #Software
!

Object subclass: #Ejemplar
    "Mantiene el registro de un ejemplar particular de un material"
    instanceVariableNames: 'idEjemplar idMaterial fecAlta fecBaja estado'
    classVariableNames: ''
    poolDictionaries: ''
    category: 'Biblioteca'
!

Object subclass: #Prestamo
    "Mantiene el registro de un préstamo realizado y su devolución."
    instanceVariableNames: 'idPersona fecPrestamo idEjemplar fecEstDevolucion fecDevolucion'
    classVariableNames: ''
    poolDictionaries: ''
    category: 'Biblioteca'
!

Object subclass: #Cobro
    "Registra los cobros que se realizan a los usuarios de nivel 2."
    instanceVariableNames: 'idUsuario fecCobro monto'
    classVariableNames: ''
    poolDictionaries: ''
    category: 'Biblioteca'
!

"
test := Persona new.
test idPersona: 0.
test idPersona printNl.
test fecNac: (Date year:1997 month:02 day:12 hour:0 minute:0 second:0).
test edad printNl."