Object subclass: Persona [
    "Mantiene informacion sobre una persona."
    | idPersona nombre dni fecNac sexo |

    idPersona [^idPersona]
    idPersona: unId [idPersona := unId]

    nombre [^nombre]
    nombre: unNombre [nombre := unNombre]

    dni [^dni]
    dni: nDNI [dni := nDNI]

    fecNac [^Date today]
    fecNac: unaFecha [fecNac := unaFecha]

    edad [^((Date today - fecNac) days / 365) asFloat integerPart asInteger]

    sexo [^sexo]
    sexo: unSexo [sexo := unSexo]
]

Object subclass: Material [
    "Clase abstracta que representa todo tipo de objeto que pueda prestarse."
    |idMaterial titulo fecEdicion editorial ISBN ISSN keywords|

    idMaterial [^idMaterial]
    idMaterial: unID [idMaterial := unID]

    titulo [^titulo]
    titulo: unTitulo [titulo := unTitulo]

    fecEdicion [^fecEdicion]
    fecEdicion: unaFecha [fecEdicion := unaFecha]

    editorial [^editorial]
    editorial: unaEditorial [editorial := unaEditorial]

    ISBN [^ISBN]
    ISBN: unISBN [ISBN := unISBN]

    ISSN [^ISSN]
    ISSN: unISSN [ISSN := unISSN]

    keywords [^keywords]
    keywords: unKeyword [keywords := unKeyword]
]

test := Persona new.
test idPersona: 0.
test idPersona printNl.
test fecNac: (Date year:1997 month:02 day:12 hour:0 minute:0 second:0).
test edad printNl.