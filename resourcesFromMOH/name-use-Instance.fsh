Instance: name-use
InstanceOf: CodeSystem
Usage: #definition
* meta.lastUpdated = "2019-11-01T09:29:23.356+11:00"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* extension[=].valueCode = #fhir
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* extension[=].valueCode = #normative
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* extension[=].valueCode = #4.0.0
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* extension[=].valueInteger = 5
* url = "http://hl7.org/fhir/name-use"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.4.642.4.66"
* version = "4.0.1"
* name = "NameUse"
* title = "NameUse"
* status = #active
* experimental = false
* date = "2019-11-01T09:29:23+11:00"
* publisher = "HL7 (FHIR Project)"
* contact.telecom[0].system = #url
* contact.telecom[=].value = "http://hl7.org/fhir"
* contact.telecom[+].system = #email
* contact.telecom[=].value = "fhir@lists.hl7.org"
* description = "The use of a human name."
* caseSensitive = true
* valueSet = "http://hl7.org/fhir/ValueSet/name-use"
* content = #complete
* concept[0].code = #usual
* concept[=].display = "Usual"
* concept[=].definition = "Known as/conventional/the one you normally use."
* concept[+].code = #official
* concept[=].display = "Official"
* concept[=].definition = "The formal name as registered in an official (government) registry, but which name might not be commonly used. May be called \"legal name\"."
* concept[+].code = #temp
* concept[=].display = "Temp"
* concept[=].definition = "A temporary name. Name.period can provide more detailed information. This may also be used for temporary names assigned at birth or in emergency situations."
* concept[+].code = #nickname
* concept[=].display = "Nickname"
* concept[=].definition = "A name that is used to address the person in an informal manner, but is not part of their formal or usual name."
* concept[+].code = #anonymous
* concept[=].display = "Anonymous"
* concept[=].definition = "Anonymous assigned name, alias, or pseudonym (used to protect a person's identity for privacy reasons)."
* concept[+].code = #old
* concept[=].display = "Old"
* concept[=].definition = "This name is no longer in use (or was never correct, but retained for records)."
* concept[=].concept.code = #maiden
* concept[=].concept.display = "Name changed for Marriage"
* concept[=].concept.definition = "A name used prior to changing name because of marriage. This name use is for use by applications that collect and store names that were used prior to a marriage. Marriage naming customs vary greatly around the world, and are constantly changing. This term is not gender specific. The use of this term does not imply any particular history for a person's name."