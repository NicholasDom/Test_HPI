
Instance: 99ZZVA
InstanceOf: Practitioner
Description: "Example HPI Practitioner"
Usage: #example
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPIPractitioner"
* extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[=].valueCodeableConcept.coding.version = "2.0"
* extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/ethnic-group-level-4-code#11111 "New Zealand European"
* extension[=].valueCodeableConcept.text = "New Zealand European"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/educational-qualification"
* extension[=].extension[0].url = "fullname"
* extension[=].extension[=].valueString = "Bachelor of Medicine Bachelor of Surgery"
* extension[=].extension[+].url = "year"
* extension[=].extension[=].valueDate = "1993"
* extension[=].extension[+].url = "institution"
* extension[=].extension[=].valueString = "University of Stellenbosch"
* extension[=].extension[+].url = "city"
* extension[=].extension[=].valueString = "STELLENBOSCH"
* extension[=].extension[+].url = "country"
* extension[=].extension[=].valueString = "ZA"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/educational-qualification"
* extension[=].extension[0].url = "fullname"
* extension[=].extension[=].valueString = "Fellow of the Royal College of Pathologists of Australasia"
* extension[=].extension[+].url = "year"
* extension[=].extension[=].valueDate = "1998"
* extension[=].extension[+].url = "institution"
* extension[=].extension[=].valueString = "Royal College of Pathologists of Australasia"
* extension[=].extension[+].url = "city"
* extension[=].extension[=].valueString = "AUCKLAND"
* extension[=].extension[+].url = "country"
* extension[=].extension[=].valueString = "NZ"
* identifier[0].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/hpi-person-id"
* identifier[=].value = "99ZZVA"
* identifier[=].assigner = Reference(Organization/G00001G)
* identifier[+].use = #old
* identifier[=].system = "https://standards.digital.health.nz/ns/hpi-person-id"
* identifier[=].value = "99ZZDD"
* identifier[=].assigner = Reference(Organization/G00004B)
* identifier[+].use = #official
* identifier[=].value = "99ZZEE"
* identifier[=].system = "https://standards.digital.health.nz/ns/chiropractic-board-id"
* identifier[=].assigner = Reference(Organization/G00004B)


* name[0].use = #official
* name[=].family = "Two-Names"
* name[=].given[0] = "Testtwo"
* name[=].given[+] = "Multiplenames"
* name[=].prefix = "dr"
* name[+].use = #usual
* name[=].family = "Two-Names"
* name[=].given[0] = "Test Two"
* name[=].given[+] = "Secondname"
* gender = #male
* birthDate = "1970-01-12"
* qualification.extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/scope-of-practice"
* qualification.extension[=].extension[0].url = "code"
* qualification.extension[=].extension[=].valueCodeableConcept.coding.version = "1.0"
* qualification.extension[=].extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/practitioner-scope-of-practice-code#MCGE "General Scope of Practice"
* qualification.extension[=].extension[=].valueCodeableConcept.text = "General Scope of Practice"
* qualification.extension[=].extension[+].url = "period"
* qualification.extension[=].extension[=].valuePeriod.start = "2000-01-12"
* qualification.extension[=].extension[=].valuePeriod.end = "2021-01-12"
* qualification.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/scope-of-practice"
* qualification.extension[=].extension[0].url = "code"
* qualification.extension[=].extension[=].valueCodeableConcept.coding.version = "1.0"
* qualification.extension[=].extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/practitioner-scope-of-practice-code#MCPG "Provisional General Scope of Practice"
* qualification.extension[=].extension[=].valueCodeableConcept.text = "Provisional General Scope of Practice"
* qualification.extension[=].extension[+].url = "period"
* qualification.extension[=].extension[=].valuePeriod.start = "2001-01-12"
* qualification.extension[=].extension[=].valuePeriod.end = "2021-01-12"
* qualification.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/condition-on-practice"
* qualification.extension[=].extension[0].url = "description"
* qualification.extension[=].extension[=].valueString = "Dr Two-Names is required to participate in an approved recertification programme relevant to the vocational scope of General Practice."
* qualification.extension[=].extension[+].url = "period"
* qualification.extension[=].extension[=].valuePeriod.start = "2019-09-12"
* qualification.extension[=].extension[=].valuePeriod.end = "2020-09-11"
* qualification.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/registration-initial-date"
* qualification.extension[=].valueDate = "1994-11-29"
* qualification.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/registration-status-code"
* qualification.extension[=].extension[0].url = "status"
* qualification.extension[=].extension[=].valueCodeableConcept.coding.version = "2.0"
* qualification.extension[=].extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/practitioner-registration-status-code#current "Current"
* qualification.extension[=].extension[=].valueCodeableConcept.text = "Current"
* qualification.identifier.use = #official
* qualification.identifier.system = "https://standards.digital.health.nz/ns/medical-council-id"
* qualification.identifier.value = "99424"
* qualification.identifier.assigner = Reference(Organization/G00004B)
* qualification.code.coding.version = "2.0"
* qualification.code.coding = https://standards.digital.health.nz/ns/practitioner-registration-authority-code#MC
* qualification.period.start = "2019-09-12"
* qualification.period.end = "2020-09-11"
* qualification.issuer = Reference(Organization/G00004B)
* communication.coding.version = "2007"
* communication.coding = urn:iso:std:iso:639:-3#eng "English"
* communication.text = "English"


Instance: 90ZZLC
InstanceOf: Practitioner
Description: "Example HPI Practitioner"
Usage: #example
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPIPractitioner"
* extension.url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension.valueCodeableConcept.coding.version = "2.0"
* extension.valueCodeableConcept.coding = https://standards.digital.health.nz/ns/ethnic-group-level-4-code#11111 "New Zealand European"
* extension.valueCodeableConcept.text = "New Zealand European"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* identifier.value = "90ZZLC"
* identifier.assigner = Reference(Organization/G00001G)
* name.use = #official
* name.family = "Klinger"
* name.given[0] = "Maxwell"
* name.given[+] = "Quentin"
* name.prefix = "cpl"
* gender = #male
* birthDate = "1934-07-01"
* communication.coding.version = "2007"
* communication.coding = urn:iso:std:iso:639:-3#eng "English"
* communication.text = "English"


Instance: 98ZZXQ
InstanceOf: Practitioner
Description: "Example HPI Practitioner"
Usage: #example
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPIPractitioner"
* extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[=].valueCodeableConcept.coding.version = "2.0"
* extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/ethnic-group-level-4-code#11111 "New Zealand European"
* extension[=].valueCodeableConcept.text = "New Zealand European"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/educational-qualification"
* extension[=].extension[0].url = "fullname"
* extension[=].extension[=].valueString = "Bachelor of Medicine Bachelor of Surgery"
* extension[=].extension[+].url = "year"
* extension[=].extension[=].valueDate = "1994"
* extension[=].extension[+].url = "institution"
* extension[=].extension[=].valueString = "University of Auckland"
* extension[=].extension[+].url = "city"
* extension[=].extension[=].valueString = "AUCKLAND"
* extension[=].extension[+].url = "country"
* extension[=].extension[=].valueString = "NZ"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/educational-qualification"
* extension[=].extension[0].url = "fullname"
* extension[=].extension[=].valueString = "Fellow of the Royal College of Pathologists of Australasia"
* extension[=].extension[+].url = "year"
* extension[=].extension[=].valueDate = "1998"
* extension[=].extension[+].url = "institution"
* extension[=].extension[=].valueString = "Royal College of Pathologists of Australasia"
* extension[=].extension[+].url = "city"
* extension[=].extension[=].valueString = "AUCKLAND"
* extension[=].extension[+].url = "country"
* extension[=].extension[=].valueString = "NZ"
* identifier[0].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/hpi-person-id"
* identifier[=].value = "98ZZXQ"
* identifier[=].assigner = Reference(Organization/G00001G)
* identifier[+].use = #old
* identifier[=].system = "https://standards.digital.health.nz/ns/hpi-person-id"
* identifier[=].value = "98ZZCC"
* identifier[=].assigner = Reference(Organization/G00004B)
* name.use = #official

* name.family = "Practitioner-Removed"
* name.given[0] = "TestThree"
* name.given[+] = "Practitioner-Status"
* name.prefix = "dr"
* gender = #male
* birthDate = "1970-01-26"
* qualification.extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/scope-of-practice"
* qualification.extension[=].extension[0].url = "code"
* qualification.extension[=].extension[=].valueCodeableConcept.coding.version = "1.0"
* qualification.extension[=].extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/practitioner-scope-of-practice-code#MCGE "General Scope of Practice"
* qualification.extension[=].extension[=].valueCodeableConcept.text = "General Scope of Practice"
* qualification.extension[=].extension[+].url = "period"
* qualification.extension[=].extension[=].valuePeriod.start = "2000-01-26"
* qualification.extension[=].extension[=].valuePeriod.end = "2021-01-26"
* qualification.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/scope-of-practice"
* qualification.extension[=].extension[0].url = "code"
* qualification.extension[=].extension[=].valueCodeableConcept.coding.version = "1.0"
* qualification.extension[=].extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/practitioner-scope-of-practice-code#MCPG "Provisional General Scope of Practice"
* qualification.extension[=].extension[=].valueCodeableConcept.text = "Provisional General Scope of Practice"
* qualification.extension[=].extension[+].url = "period"
* qualification.extension[=].extension[=].valuePeriod.start = "2001-01-26"
* qualification.extension[=].extension[=].valuePeriod.end = "2021-01-26"
* qualification.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/condition-on-practice"
* qualification.extension[=].extension[0].url = "description"
* qualification.extension[=].extension[=].valueString = "Dr Practitioner-Removed is required to participate in an approved recertification programme relevant to the vocational scope of General Practice."
* qualification.extension[=].extension[+].url = "period"
* qualification.extension[=].extension[=].valuePeriod.start = "2019-09-26"
* qualification.extension[=].extension[=].valuePeriod.end = "2020-09-25"
* qualification.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/registration-initial-date"
* qualification.extension[=].valueDate = "1994-12-13"
* qualification.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/registration-status-code"
* qualification.extension[=].extension[0].url = "status"
* qualification.extension[=].extension[=].valueCodeableConcept.coding.version = "2.0"
* qualification.extension[=].extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/practitioner-registration-status-code#removed "Removed"
* qualification.extension[=].extension[=].valueCodeableConcept.text = "Removed"
* qualification.identifier.use = #official
* qualification.identifier.system = "https://standards.digital.health.nz/ns/medical-council-id"
* qualification.identifier.value = "99468"
* qualification.identifier.assigner = Reference(Organization/G00004B)
* qualification.code.coding.version = "2.0"
* qualification.code.coding = https://standards.digital.health.nz/ns/practitioner-registration-authority-code#MC
* qualification.period.start = "2019-09-26"
* qualification.period.end = "2020-09-25"
* qualification.issuer = Reference(Organization/G00004B)
* communication.coding.version = "2007"
* communication.coding = urn:iso:std:iso:639:-3#eng "English"
* communication.text = "English"


Instance: 94ZZXF
InstanceOf: Practitioner
Description: "Example HPI Practitioner"
Usage: #example
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPIPractitioner"
* extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[=].valueCodeableConcept.coding.version = "2.0"
* extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/ethnic-group-level-4-code#11111 "New Zealand European"
* extension[=].valueCodeableConcept.text = "New Zealand European"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/educational-qualification"
* extension[=].extension[0].url = "fullname"
* extension[=].extension[=].valueString = "PGDip Dietetics"
* extension[=].extension[+].url = "year"
* extension[=].extension[=].valueDate = "2001"
* extension[=].extension[+].url = "institution"
* extension[=].extension[=].valueString = "Wales University"
* extension[=].extension[+].url = "city"
* extension[=].extension[=].valueString = "London"
* extension[=].extension[+].url = "country"
* extension[=].extension[=].valueString = "GB"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/educational-qualification"
* extension[=].extension[0].url = "fullname"
* extension[=].extension[=].valueString = "BSc Food & Nutrition"
* extension[=].extension[+].url = "year"
* extension[=].extension[=].valueDate = "1998"
* extension[=].extension[+].url = "institution"
* extension[=].extension[=].valueString = "Oxford Brookes University"
* identifier[0].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/hpi-person-id"
* identifier[=].value = "94ZZXF"
* identifier[=].assigner = Reference(Organization/G00001G)
* identifier[+].use = #old
* identifier[=].system = "https://standards.digital.health.nz/ns/hpi-person-id"
* identifier[=].value = "94ZZBB"
* identifier[=].assigner = Reference(Organization/G00023F)
* name.use = #official
* name.family = "Dietitian"
* name.given[0] = "TestFive"
* name.given[+] = "Registered-Authority"
* name.prefix = "mrs"
* gender = #female
* birthDate = "1970-02-12"
* qualification.extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/scope-of-practice"
* qualification.extension[=].extension[0].url = "code"
* qualification.extension[=].extension[=].valueCodeableConcept.coding.version = "1.0"
* qualification.extension[=].extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/practitioner-scope-of-practice-code#DIET "Dietitian"
* qualification.extension[=].extension[=].valueCodeableConcept.text = "Dietitian"
* qualification.extension[=].extension[+].url = "period"
* qualification.extension[=].extension[=].valuePeriod.start = "2005-03-03"
* qualification.extension[=].extension[=].valuePeriod.end = "2022-01-28"
* qualification.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/registration-initial-date"
* qualification.extension[=].valueDate = "1994-12-30"
* qualification.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/registration-status-code"
* qualification.extension[=].extension[+].url = "status"
* qualification.extension[=].extension[=].valueCodeableConcept.coding.version = "2.0"
* qualification.extension[=].extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/practitioner-registration-status-code#current "Current"
* qualification.extension[=].extension[=].valueCodeableConcept.text = "Current"
* qualification.identifier.use = #official
* qualification.identifier.system = "https://standards.digital.health.nz/ns/dietitians-board-id"
* qualification.identifier.value = "20-91292"
* qualification.identifier.assigner = Reference(Organization/G00023F)
* qualification.code.coding.version = "2.0"
* qualification.code.coding = https://standards.digital.health.nz/ns/practitioner-registration-authority-code#DI
* qualification.code.text = "Dietitians Board Register"
* qualification.period.start = "2020-09-28"
* qualification.period.end = "2022-09-29"
* qualification.issuer = Reference(Organization/G00023F)
* communication.coding.version = "2007"
* communication.coding = urn:iso:std:iso:639:-3#eng "English"
* communication.text = "English"


Instance: 90ZZMG
InstanceOf: Practitioner
Description: "Example HPI Practitioner"
Usage: #example
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPIPractitioner"
* extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[=].valueCodeableConcept.coding.version = "2.0"
* extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/ethnic-group-level-4-code#11111 "New Zealand European"
* extension[=].valueCodeableConcept.text = "New Zealand European"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/death-date"
* extension[=].extension[0].url = "date"
* extension[=].extension[=].valueDateTime = "2015-12-31"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/educational-qualification"
* extension[=].extension[0].url = "fullname"
* extension[=].extension[=].valueString = "Bachelor of Medicine Bachelor of Surgery"
* extension[=].extension[+].url = "year"
* extension[=].extension[=].valueDate = "1957"
* extension[=].extension[+].url = "institution"
* extension[=].extension[=].valueString = "Harvard College"
* extension[=].extension[+].url = "city"
* extension[=].extension[=].valueString = "Cambridge"
* extension[=].extension[+].url = "country"
* extension[=].extension[=].valueString = "US"
* identifier[0].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/hpi-person-id"
* identifier[=].value = "90ZZMG"
* identifier[=].assigner = Reference(Organization/G00001G)
* identifier[+].use = #old
* identifier[=].system = "https://standards.digital.health.nz/ns/hpi-person-id"
* identifier[=].value = "90ZZAA"
* identifier[=].assigner = Reference(Organization/G00004B)
* name.use = #official
* name.family = "McIntyre"
* name.given[0] = "Trapper"
* name.given[+] = "John"
* name.prefix = "capt"
* gender = #male
* birthDate = "1933-04-07"
* qualification.extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/scope-of-practice"
* qualification.extension[=].extension[0].url = "code"
* qualification.extension[=].extension[=].valueCodeableConcept.coding.version = "1.0"
* qualification.extension[=].extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/practitioner-scope-of-practice-code#MCGE "General Scope of Practice"
* qualification.extension[=].extension[=].valueCodeableConcept.text = "General Scope of Practice"
* qualification.extension[=].extension[+].url = "period"
* qualification.extension[=].extension[=].valuePeriod.start = "2019-10-05"
* qualification.extension[=].extension[=].valuePeriod.end = "2021-10-05"
* qualification.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/scope-of-practice"
* qualification.extension[=].extension[0].url = "code"
* qualification.extension[=].extension[=].valueCodeableConcept.coding.version = "1.0"
* qualification.extension[=].extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/practitioner-scope-of-practice-code#MCPG "Provisional General Scope of Practice"
* qualification.extension[=].extension[=].valueCodeableConcept.text = "Provisional General Scope of Practice"
* qualification.extension[=].extension[+].url = "period"
* qualification.extension[=].extension[=].valuePeriod.start = "2019-10-05"
* qualification.extension[=].extension[=].valuePeriod.end = "2021-10-05"
* qualification.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/condition-on-practice"
* qualification.extension[=].extension[0].url = "description"
* qualification.extension[=].extension[=].valueString = "Dr McIntyre is required to participate in an approved recertification programme relevant to the vocational scope of General Practice."
* qualification.extension[=].extension[+].url = "period"
* qualification.extension[=].extension[=].valuePeriod.start = "2020-10-04"
* qualification.extension[=].extension[=].valuePeriod.end = "2020-10-04"
* qualification.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/registration-initial-date"
* qualification.extension[=].valueDate = "1958-04-01"
* qualification.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/registration-status-code"
* qualification.extension[=].extension[+].url = "status"
* qualification.extension[=].extension[=].valueCodeableConcept.coding.version = "2.0"
* qualification.extension[=].extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/practitioner-registration-status-code#current "Current"
* qualification.extension[=].extension[=].valueCodeableConcept.text = "Current"
* qualification.identifier.use = #official
* qualification.identifier.system = "https://standards.digital.health.nz/ns/medical-council-id"
* qualification.identifier.value = "99530"
* qualification.identifier.assigner = Reference(Organization/G00004B)
* qualification.code.coding.version = "2.0"
* qualification.code.coding = https://standards.digital.health.nz/ns/practitioner-registration-authority-code#MC
* qualification.period.start = "2020-08-31"
* qualification.period.end = "2022-08-31"
* qualification.issuer = Reference(Organization/G00004B)
* communication.coding.version = "2007"
* communication.coding = urn:iso:std:iso:639:-3#eng "English"
* communication.text = "English"
