
// Aliases for extensions
Alias: $aliasType = http://hl7.org.nz/fhir/hpi/StructureDefinition/aliasType
Alias: $dhb = http://hl7.org.nz/fhir/StructureDefinition/dhb
Alias: $hpiLocation-established = http://hl7.org.nz/fhir/hpi/StructureDefinition/location-established

Alias: $commonAddress = http://hl7.org.nz/fhir/StructureDefinition/CommonAddress

Profile:        HpiLocation
Parent:         CommonLocation
Id:             HpiLocation
Title:          "HPI Location"
Description:    "Locations used by the HPI. These are also called Facilities."

//elements that have been removed
* operationalStatus 0..0
* mode 0..0
* physicalType 0..0
* hoursOfOperation 0..0
* availabilityExceptions 0..0
* position 0..0

//top level  extensions
* extension contains 
    location-established 0..1 and
    dhb 0..1

 * extension[location-established] ^short = "The date when this location first became available for use"
 * extension[dhb] ^short = "The identifier for the DHB that is associated with this location"

* status from http://hl7.org.nz/fhir/ValueSet/hpi-location-status

//the use elements use only a subset of the values...
* identifier.system from http://hl7.org.nz/fhir/ValueSet/hpi-identifier-use
* telecom.use from http://hl7.org.nz/fhir/ValueSet/hpi-contactpoint-use


* address only $commonAddress
* address.use from http://hl7.org.nz/fhir/ValueSet/hpi-location-address-use

* type from http://hl7.org.nz/fhir/ValueSet/location-type


* alias.extension contains 
    alias-type 1..1

//set that the Valueset is from the set of alias types for Location (It's not set on the extension)
* alias.extension[alias-type].valueCodeableConcept from http://hl7.org.nz/fhir/ValueSet/location-alias-type (preferred)
* alias.extension[alias-type] ^short = "The type of alias this is - eg its Maori name"