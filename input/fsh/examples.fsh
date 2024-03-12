Instance: OrganizationExample
InstanceOf: ServiceProvider
Usage: #example
Title: "Organization"
Description: "Organization providing health related services."
* identifier[XX].value = "facility1"
* identifier[XX].system = "http://fhir.health.gov.lk/ips/identifier/organization"
* identifier[XX].type.coding.code = #XX
* identifier[XX].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[XX].type.text = "Organization identifier"
* name = "Some Health Facility"

Instance: PatientExample
InstanceOf: IPSPatient
Usage: #example
Title: "Patient"
Description: "Is used to document demographics and other administrative information about an HIMS or HHIMS individual receiving care or other health-related services."
* identifier[PPN][+].value = "Passport-1"
* identifier[PPN][=].system = "http://fhir.health.gov.lk/ips/identifier/passport"
* identifier[PPN][=].type.coding.code = #PPN
* identifier[PPN][=].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[PPN][=].type.text = "Passport number"

* identifier[PPN][+].value = "Passport-2"
* identifier[PPN][=].system = "http://fhir.health.gov.lk/ips/identifier/passport"
* identifier[PPN][=].type.coding.code = #PPN
* identifier[PPN][=].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[PPN][=].type.text = "Passport number"

* identifier[Drivers][+].value = "Drivers license-1"
* identifier[Drivers][=].system = "http://fhir.health.gov.lk/ips/identifier/drivers"
* identifier[Drivers][=].type.coding.code = #DL
* identifier[Drivers][=].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[Drivers][=].type.text = "Driver's license number"

* identifier[Drivers][+].value = "Drivers license-2"
* identifier[Drivers][=].system = "http://fhir.health.gov.lk/ips/identifier/drivers"
* identifier[Drivers][=].type.coding.code = #DL
* identifier[Drivers][=].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[Drivers][=].type.text = "Driver's license number"

* identifier[NIC][+].value = "National identity number-1"
* identifier[NIC][=].system = "http://fhir.health.gov.lk/ips/identifier/nic"
* identifier[NIC][=].type.coding.code = #NIC
* identifier[NIC][=].type.coding.system = "http://fhir.health.gov.lk/ips/CodeSystem/cs-identifier-types"
* identifier[NIC][=].type.text = "National identity number"

* identifier[NIC][+].value = "National identity number-2"
* identifier[NIC][=].system = "http://fhir.health.gov.lk/ips/identifier/nic"
* identifier[NIC][=].type.coding.code = #NIC
* identifier[NIC][=].type.coding.system = "http://fhir.health.gov.lk/ips/CodeSystem/cs-identifier-types"
* identifier[NIC][=].type.text = "National identity number"

* identifier[SCN][+].value = "Senior citizen number-1"
* identifier[SCN][=].system = "http://fhir.health.gov.lk/ips/identifier/scn"
* identifier[SCN][=].type.coding.code = #SCN
* identifier[SCN][=].type.coding.system = "http://fhir.health.gov.lk/ips/CodeSystem/cs-identifier-types"
* identifier[SCN][=].type.text = "Senior Citizen Number"

* identifier[SCN][+].value = "Senior citizen number-2"
* identifier[SCN][=].system = "http://fhir.health.gov.lk/ips/identifier/scn"
* identifier[SCN][=].type.coding.code = #SCN
* identifier[SCN][=].type.coding.system = "http://fhir.health.gov.lk/ips/CodeSystem/cs-identifier-types"
* identifier[SCN][=].type.text = "Senior Citizen Number"

* identifier[PHN][+].value = "personal health number"
* identifier[PHN][=].system = "http://fhir.health.gov.lk/ips/identifier/phn"
* identifier[PHN][=].type.coding.code = #PHN
* identifier[PHN][=].type.coding.system = "http://fhir.health.gov.lk/ips/CodeSystem/cs-identifier-types"
* identifier[PHN][=].type.text = "Personal Health Number"

* extension[RegistrationSystemID].valueReference = Reference(DeviceInformationExample)

* name[+].use = #official
* name[=].family = "Smith"
* name[=].prefix[+] = "Mr."
* name[=].given[+] = "Mike"
* name[=].given[+] = "John"
* gender = #male
* birthDate = "1983-05-22"

* address[+].country = urn:iso:std:iso:3166#LK
* address[=].type = #postal
* address[=].district = "Ampara"
* address[=].line[+] = "177"
* address[=].line[+] = "Nawala Road"
* address[=].city = "Nugegoda"
* address[=].postalCode = "32350"
* address[=].state = "Colombo"

* telecom[+].system = #phone
* telecom[=].value = "+27829999999"
* telecom[+].system = #email
* telecom[=].value = "someone@something.com"
* telecom[+].system = #email
* telecom[=].value = "someone2@something.com"

Instance: TargetFacilityEncounterExample
InstanceOf: TargetFacilityEncounter
Usage: #example
Title: "Target Facility Encounter" 
Description: "Represents the current facility at which the patient is receiving health services."
* status = #finished
* class.code = #AMB
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* subject = Reference(PatientExample)
* period.start = "2022-12-01"
* period.end = "2023-01-20"
* reasonCode[+] = $SCT#68962001

* location[+].location = Reference(ProvidersLocationExample)
* participant[+].individual = Reference(GeneralPractitionerExample)

Instance: ProvidersLocationExample
InstanceOf: ProvidersLocation
Usage: #example
Title: "Providers Location"
Description: "Represents the physical location of the provider."
* identifier[LocationID][+].value = "Location-ID-1"
* identifier[LocationID][=].system = "http://fhir.health.gov.lk/ips/identifier/provider-location"
* identifier[LocationID][=].type.coding.code = #PLOC
* identifier[LocationID][=].type.coding.system = "http://fhir.health.gov.lk/ips/CodeSystem/cs-identifier-types"
* identifier[LocationID][=].type.text = "Provider location identifier"

* identifier[LocationID][+].value = "Location-ID-2"
* identifier[LocationID][=].system = "http://fhir.health.gov.lk/ips/identifier/provider-location"
* identifier[LocationID][=].type.coding.code = #PLOC
* identifier[LocationID][=].type.coding.system = "http://fhir.health.gov.lk/ips/CodeSystem/cs-identifier-types"
* identifier[LocationID][=].type.text = "Provider location identifier"
* name = "Name for the location"
* status = #active
* address[+].country = urn:iso:std:iso:3166#LK
* address[=].type = #postal
* address[=].district = "Ampara"
* address[=].line[+] = "177"
* address[=].line[+] = "Nawala Road"
* address[=].city = "Nugegoda"
* address[=].postalCode = "32350"
* address[=].state = "Colombo"

* telecom[+].system = #phone
* telecom[=].value = "+27829999999"
* telecom[+].system = #email
* telecom[=].value = "someone@something.com"
* telecom[+].system = #email
* telecom[=].value = "someone2@something.com"
* managingOrganization = Reference(OrganizationExample)

Instance: NotifiableDiseasesNotifiedExample
InstanceOf: NotifiableDiseasesNotified
Usage: #example
Title: "Notifiable Diseases Notified"
Description: "Represents a message communicated to the practitioner about a patient's encounter."
* status = #completed
* subject = Reference(PatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* sent = "2023-10-06T13:28:17-05:00"
* sender = Reference(DeviceInformationExample)

Instance: GenericObservationExample
InstanceOf: GenericObservation
Usage: #example
Title: "Generic Observation"
Description: "Base Observation elements that are inherited by other Observations resources."
* status = #final
* code = $LNC#10000-8
* code.text = "Generic Observation"
* subject = Reference(PatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* performer[+] = Reference(OrganizationExample)
* performer[+] = Reference(GeneralPractitionerExample)
* device = Reference(DeviceInformationExample)

Instance: RiskBehaviourPhysicalActivityExample
InstanceOf: RiskBehaviourPhysicalActivity
Usage: #example
Title: "Physical Activity Status Observation"
Description: "Represents the physical status of the patient."
* category.coding.code = #activity
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* status = #final
* code = $SCT#106020009
* code.text = "Physical Activity"
* subject = Reference(PatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueCodeableConcept = $SCT#9011000175102
* valueCodeableConcept.text = "Physically not active"
* performer[+] = Reference(OrganizationExample)
* performer[+] = Reference(GeneralPractitionerExample)
* device = Reference(DeviceInformationExample)

Instance: RiskBehaviourTobaccoSmokerExample
InstanceOf: RiskBehaviourTobaccoSmoker
Usage: #example
Title: "Tobacco Smoker Observation"
Description: "Represents the tobacco smoking status of the patient."
* category.coding.code = #social-history
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* status = #final
* code = $LNC#81229-7
* code.text = "Tobacco smoking status for tobacco smoker"
* subject = Reference(PatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueCodeableConcept = $LNC#LA18982-1
* valueCodeableConcept.text = "Light tobacco smoker"
* performer[+] = Reference(OrganizationExample)
* performer[+] = Reference(GeneralPractitionerExample)
* device = Reference(DeviceInformationExample)

Instance: BloodPressureExample
InstanceOf: BloodPressure
Usage: #example
Title: "Blood Pressure Observation"
Description: "Represents the Systolic and Diastolic blood pressure for the patient."
* status = #final
* category.coding.code = #vital-signs
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = $LNC#85354-9
* code.text = "Blood Pressure"
* subject = Reference(PatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* performer[+] = Reference(OrganizationExample)
* performer[+] = Reference(GeneralPractitionerExample)

* component[Systolic].code = $LNC#8480-6
* component[Systolic].valueQuantity.value = 106
* component[Systolic].valueQuantity.unit = "mmHg"
* component[Systolic].valueQuantity.system = "http://unitsofmeasure.org"
* component[Systolic].valueQuantity.code = #mm[Hg]

* component[Diastolic].code = $LNC#8462-4
* component[Diastolic].valueQuantity.value = 60
* component[Diastolic].valueQuantity.unit = "mmHg"
* component[Diastolic].valueQuantity.system = "http://unitsofmeasure.org"
* component[Diastolic].valueQuantity.code = #mm[Hg]

* device = Reference(DeviceInformationExample)

Instance: WeightExample
InstanceOf: Weight
Usage: #example
Title: "Patient Weight Observation"
Description: "Represents the patient's weight."
* status = #final
* category.coding.code = #vital-signs
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = $LNC#29463-7
* code.text = "Body Weight"
* subject = Reference(PatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueQuantity.value = 110
* valueQuantity.unit = "kg"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #kg
* performer[+] = Reference(OrganizationExample)
* performer[+] = Reference(GeneralPractitionerExample)
* device = Reference(DeviceInformationExample)

Instance: HeightExample
InstanceOf: Height
Usage: #example
Title: "Patient Height Observation"
Description: "Represents the patient's height."
* status = #final
* category.coding.code = #vital-signs
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = $LNC#8302-2
* code.text = "Body Height"
* subject = Reference(PatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueQuantity.value = 185
* valueQuantity.unit = "cm"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #cm
* performer[+] = Reference(OrganizationExample)
* performer[+] = Reference(GeneralPractitionerExample)
* device = Reference(DeviceInformationExample)

Instance: BMIExample
InstanceOf: BMI
Usage: #example
Title: "Patient BMI Observation"
Description: "Represents the patient's BMI."
* status = #final
* category.coding.code = #vital-signs
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = $LNC#39156-5
* code.text = "Body mass index (BMI)"
* subject = Reference(PatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueQuantity.value = 16.2
* valueQuantity.unit = "kg/m2"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #kg/m2
* performer[+] = Reference(OrganizationExample)
* performer[+] = Reference(GeneralPractitionerExample)
* derivedFrom[+] = Reference(WeightExample)
* derivedFrom[+] = Reference(HeightExample)
* device = Reference(DeviceInformationExample)

Instance: RandomBloodSugarExample
InstanceOf: RandomBloodSugar
Usage: #example
Title: "Random Blood Sugar Observation"
Description: "Represents the patient's RBS results."
* category[laboratory][+].coding.code = #laboratory
* category[laboratory][=].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* status = #final
* code = $LNC#15074-8
* code.text = "Glucose"
* subject = Reference(PatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueQuantity.value = 6.3
* valueQuantity.unit = "mmol/L"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mmol/L
* performer[+] = Reference(OrganizationExample)
* performer[+] = Reference(GeneralPractitionerExample)
* interpretation[+].coding.code = #H
* interpretation[=].coding.system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* referenceRange[+].type.coding.code = #type
* referenceRange[=].type.coding.system = "http://terminology.hl7.org/CodeSystem/referencerange-meaning"

* referenceRange[=].low.value = 3.1
* referenceRange[=].low.unit = "mmol/L"
* referenceRange[=].low.code = #mmol/L
* referenceRange[=].low.system = "http://unitsofmeasure.org"

* referenceRange[=].high.value = 6.2
* referenceRange[=].high.unit = "mmol/L"
* referenceRange[=].high.code = #mmol/L
* referenceRange[=].high.system = "http://unitsofmeasure.org"

* device = Reference(DeviceInformationExample)

Instance: FastingBloodSugarExample
InstanceOf: FastingBloodSugar
Usage: #example
Title: "Fasting Blood Sugar Observation"
Description: "Represents the patient's FBS results."
* category[laboratory][+].coding.code = #laboratory
* category[laboratory][=].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* status = #final
* code = $LNC#76629-5
* code.text = "Fasting glucose"
* subject = Reference(PatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueQuantity.value = 5.4
* valueQuantity.unit = "mmol/L"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mmol/L
* performer[+] = Reference(OrganizationExample)
* performer[+] = Reference(GeneralPractitionerExample)
* interpretation[+].coding.code = #N
* interpretation[=].coding.system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* referenceRange[+].type.coding.code = #type
* referenceRange[=].type.coding.system = "http://terminology.hl7.org/CodeSystem/referencerange-meaning"

* referenceRange[=].low.value = 3.9
* referenceRange[=].low.unit = "mmol/L"
* referenceRange[=].low.code = #mmol/L
* referenceRange[=].low.system = "http://unitsofmeasure.org"

* referenceRange[=].high.value = 5.6
* referenceRange[=].high.unit = "mmol/L"
* referenceRange[=].high.code = #mmol/L
* referenceRange[=].high.system = "http://unitsofmeasure.org"

* device = Reference(DeviceInformationExample)

Instance: GeneralPractitionerExample
InstanceOf: GeneralPractitioner
Usage: #example
Title: "Practitioner"
Description: 
"Represents the practitioners who participated in the observation."
* name[+].prefix[+] = "Dr"
* name[=].given[+] = "Tom"
* name[=].given[+] = "Junes"
* name[=].family = "Smith"
* telecom[+].system = #phone
* telecom[=].value = "27537652509"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "someone@something.org"
* telecom[=].use = #home

Instance: TotalCholesterolExample
InstanceOf: TotalCholesterol
Usage: #example
Title: "Total Cholesterol Observation"
Description: "Represents the patient's total cholesterol results."
* category[laboratory][+].coding.code = #laboratory
* category[laboratory][=].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* status = #final
* code = $LNC#2093-3
* code.text = "Cholesterol"
* subject = Reference(PatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueQuantity.value = 6.3
* valueQuantity.unit = "mmol/L"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mmol/L
* performer[+] = Reference(OrganizationExample)
* performer[+] = Reference(GeneralPractitionerExample)
* interpretation[+].coding.code = #H
* interpretation[=].coding.system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* referenceRange[+].type.coding.code = #type
* referenceRange[=].type.coding.system = "http://terminology.hl7.org/CodeSystem/referencerange-meaning"

* referenceRange[=].high.value = 5
* referenceRange[=].high.unit = "mmol/L"
* referenceRange[=].high.code = #mmol/L
* referenceRange[=].high.system = "http://unitsofmeasure.org"

* device = Reference(DeviceInformationExample)

Instance: CVDRiskCategoryExample
InstanceOf: CVDRiskCategory
Usage: #example
Title: "Cardiovascular Risk Assessment"
Description: "Represents the patient's CVD risk score."
* status = #final
* code = $SCT#441829007
* code.text = "Assessment for risk of cardiovascular disease"
* subject = Reference(PatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* occurrenceDateTime = "2023-10-06T13:28:17-05:00"
* performer = Reference(GeneralPractitionerExample)
* basis[+] = Reference(PatientExample)
* basis[+] = Reference(RiskBehaviourTobaccoSmokerExample)
* basis[+] = Reference(TotalCholesterolExample)
* basis[+] = Reference(BloodPressureExample)
* basis[+] = Reference(RandomBloodSugarExample)
* basis[+] = Reference(FastingBloodSugarExample)
* prediction[+].outcome = $SCT#395112001
* prediction[=].outcome.text = "Risk of heart attack"
* prediction[=].probabilityDecimal = 0.02

* prediction[=].qualitativeRisk.coding.code = #Critical
* prediction[=].qualitativeRisk.coding.system = "http://fhir.health.gov.lk/ips/CodeSystem/cs-cvd-risk-category"
* prediction[=].qualitativeRisk.text = "Risk Category"

* prediction[=].whenRange.low.value = 39
* prediction[=].whenRange.low.unit = "years"
* prediction[=].whenRange.low.code = #a
* prediction[=].whenRange.low.system = "http://unitsofmeasure.org"

* prediction[=].whenRange.high.value = 49
* prediction[=].whenRange.high.unit = "years"
* prediction[=].whenRange.high.code = #a
* prediction[=].whenRange.high.system = "http://unitsofmeasure.org"

Instance: FollowUpPlanServiceRequestExample
InstanceOf: FollowUpPlanServiceRequest
Usage: #example
Title: "Referral Request For Follow-up Plan"
Description: "Used to initiate a referral request for a Follow-up Plan."
* status = #completed
* intent = #order
* code = $SCT#410321003
* code.text = "Follow up at HLC"
* subject = Reference(PatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* requester = Reference(GeneralPractitionerExample)
* reasonCode[+].coding.code = #Followed-in-3-years-at-hlc
* reasonCode[=].coding.system = "http://fhir.health.gov.lk/ips/CodeSystem/cs-follow-up-reasons"
* reasonCode[=].text = "Followed in 6 months at HLC"
* locationReference[+] = Reference(ProvidersLocationExample)
* occurrenceTiming.repeat.duration = 3
* occurrenceTiming.repeat.durationUnit = #mo
* occurrenceTiming.repeat.count = 1

Instance: GeneralReferralServiceRequestExample
InstanceOf: GeneralReferralServiceRequest
Usage: #example
Title: "General Referral Request"
Description: "Used to initiate a request for a referral."
* status = #completed
* intent = #order
* code = $SCT#3457005
* code.text = "Patient referral"
* subject = Reference(PatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* occurrenceDateTime = "2023-10-06T13:28:17-05:00"
* requester = Reference(GeneralPractitionerExample)
* locationReference[+] = Reference(ProvidersLocationExample)

Instance: GenericServiceRequestExample
InstanceOf: GenericServiceRequest
Usage: #example
Title: "Generic Service Request"
Description: "Base ServiceRequest elements that are inherited by other ServiceRequest resources."
* status = #completed
* intent = #order
* code = $SCT#3457005
* code.text = "Patient referral"
* subject = Reference(PatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* occurrenceDateTime = "2023-10-06T13:28:17-05:00"
* requester = Reference(GeneralPractitionerExample)
* locationReference[+] = Reference(ProvidersLocationExample)

Instance: FollowUpAtHLCExample
InstanceOf: FollowUpAtHLC
Usage: #example
Title: "Follow-up at HLC"
Description: "Used to record the follow-up event for the patient at HLC."
* status = #active
* intent = #order
* subject = Reference(PatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* period.start = "2022-12-01"
* contributor[+] = Reference(GeneralPractitionerExample)
* contributor[=] = Reference(OrganizationExample)
* activity.reference = Reference(FollowUpPlanServiceRequestExample)

Instance: HIMSCompositionExample
InstanceOf: HIMSComposition
Usage: #example
Title: "HIMS Composition"
Description: "Clinical document used to represent the International Patient Summary (IPS) data set for HIMS."
* identifier.value = "PAT0001-v1"
* identifier.system = "http://fhir.health.gov.lk/ips/identifier/hims-ips-document"
* status = #final
* subject = Reference(PatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* type = $LNC#60591-5
* date = "2024-02-20"
* author[+] = Reference(GeneralPractitionerExample)
* author[+] = Reference(OrganizationExample)
* title = "LK NEHR Sri Lanka Patient Summary for HIMS"

* section[sectionProblems][+].title = "IPS Problems Section"
* section[sectionProblems][=].code = $LNC#11450-4
* section[sectionProblems][=].entry[problem][+] = Reference(MedicalHistoryExample)
* section[sectionProblems][=].text.status = #generated
* section[sectionProblems][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: Condition</b><a name=\"MedicalHistoryExample\"></a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Condition &quot;MedicalHistoryExample&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-medical-history.html\">Medical History</a></p></div><p><b>clinicalStatus</b>: Active <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/5.0.0/CodeSystem-condition-clinical.html\">Condition Clinical Status Codes</a>#active)</span></p><p><b>verificationStatus</b>: Confirmed <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/5.3.0/CodeSystem-condition-ver-status.html\">ConditionVerificationStatus</a>#confirmed)</span></p><p><b>category</b>: Problem List Item <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/5.0.0/CodeSystem-condition-category.html\">Condition Category Codes</a>#problem-list-item)</span></p><p><b>code</b>: Type I diabetes mellitus without complication <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://browser.ihtsdotools.org/\">SNOMED CT</a>#313435000)</span></p><p><b>subject</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Patient-PatientExample)</p><p><b>encounter</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Encounter-TargetFacilityEncounter)</p><p><b>recordedDate</b>: 2023-10-06 13:28:17-0500</p><p><b>recorder</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Practitioner-GeneralPractitionerExample)</p><p><b>asserter</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Practitioner-GeneralPractitionerExample)</p></div>"

* section[sectionVitalSigns][+].title = "IPS Vital Signs Section"
* section[sectionVitalSigns][=].code = $LNC#8716-3
* section[sectionVitalSigns][=].entry[vitalSign][+] = Reference(BloodPressureExample)
* section[sectionVitalSigns][=].entry[vitalSign][+] = Reference(WeightExample)
* section[sectionVitalSigns][=].entry[vitalSign][+] = Reference(HeightExample)
* section[sectionVitalSigns][=].entry[vitalSign][+] = Reference(BMIExample)
* section[sectionVitalSigns][=].text.status = #generated
* section[sectionVitalSigns][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: Observation</b><a name=\"BloodPressureExample\"></a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Observation &quot;BloodPressureExample&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-blood-pressure.html\">Blood Pressure Observation</a></p></div><p><b>status</b>: final</p><p><b>category</b>: Vital Signs <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/5.0.0/CodeSystem-observation-category.html\">Observation Category Codes</a>#vital-signs)</span></p><p><b>code</b>: Blood Pressure <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://loinc.org/\">LOINC</a>#85354-9)</span></p><p><b>subject</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Patient-PatientExample)</p><p><b>encounter</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Encounter-TargetFacilityEncounter)</p><p><b>effective</b>: 2022-11-30</p><p><b>performer</b>: </p><ul><li>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Organization-OrganizationExample)</li><li>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Practitioner-GeneralPractitionerExample)</li></ul><blockquote><p><b>component</b></p><p><b>code</b>: BP sys <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://loinc.org/\">LOINC</a>#8480-6)</span></p><p><b>value</b>: 106 mmHg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM code mm[Hg] = 'mm[Hg]')</span></p></blockquote><blockquote><p><b>component</b></p><p><b>code</b>: BP dias <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://loinc.org/\">LOINC</a>#8462-4)</span></p><p><b>value</b>: 60 mmHg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM code mm[Hg] = 'mm[Hg]')</span></p></blockquote><p><b>Generated Narrative: Observation</b><a name=\"RiskBehaviourTobaccoSmokerExample\"></a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Observation &quot;RiskBehaviourTobaccoSmokerExample&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-risk-behaviour-tobacco-smoker.html\">Tobacco Smoker Observation</a></p></div><p><b>status</b>: final</p><p><b>category</b>: Social History <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/5.0.0/CodeSystem-observation-category.html\">Observation Category Codes</a>#social-history)</span></p><p><b>code</b>: Tobacco smoking status for tobacco smoker <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://loinc.org/\">LOINC</a>#81229-7)</span></p><p><b>subject</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Patient-PatientExample)</p><p><b>encounter</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Encounter-TargetFacilityEncounter)</p><p><b>effective</b>: 2022-11-30</p><p><b>performer</b>: </p><ul><li>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Organization-OrganizationExample)</li><li>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Practitioner-GeneralPractitionerExample)</li></ul><p><b>value</b>: Light tobacco smoker <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://loinc.org/\">LOINC</a>#LA18982-1)</span></p> <p><b>Generated Narrative: Observation</b><a name=\"HeightExample\"></a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Observation &quot;HeightExample&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-height.html\">Patient Height Observation</a></p></div><p><b>status</b>: final</p><p><b>category</b>: Vital Signs <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/5.0.0/CodeSystem-observation-category.html\">Observation Category Codes</a>#vital-signs)</span></p><p><b>code</b>: Body Height <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://loinc.org/\">LOINC</a>#8302-2)</span></p><p><b>subject</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Patient-PatientExample)</p><p><b>encounter</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Encounter-TargetFacilityEncounter)</p><p><b>effective</b>: 2022-11-30</p><p><b>performer</b>: </p><ul><li>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Organization-OrganizationExample)</li><li>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Practitioner-GeneralPractitionerExample)</li></ul><p><b>value</b>: 185 cm<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM code cm = 'cm')</span></p><br /><p><b>Generated Narrative: Observation</b><a name=\"BMIExample\"></a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Observation &quot;BMIExample&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-bmi.html\">Patient BMI Observation</a></p></div><p><b>status</b>: final</p><p><b>category</b>: Vital Signs <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/5.0.0/CodeSystem-observation-category.html\">Observation Category Codes</a>#vital-signs)</span></p><p><b>code</b>: Body mass index (BMI) <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://loinc.org/\">LOINC</a>#39156-5)</span></p><p><b>subject</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Patient-PatientExample)</p><p><b>encounter</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Encounter-TargetFacilityEncounter)</p><p><b>effective</b>: 2022-11-30</p><p><b>performer</b>: </p><ul><li>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Organization-OrganizationExample)</li><li>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Practitioner-GeneralPractitionerExample)</li></ul><p><b>value</b>: 16.2 kg/m2<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM code kg/m2 = 'kg/m2')</span></p><p><b>derivedFrom</b>: </p><ul><li>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Observation-WeightExample)</li><li>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Observation-HeightExample)</li></ul></div>"

/** section[sectionSocialHistory][+].title = "IPS Social History Section"
* section[sectionSocialHistory][=].code = $LNC#29762-2
* section[sectionSocialHistory][=].entry[smokingTobaccoUse][+] = Reference(RiskBehaviourTobaccoSmokerExample)
* section[sectionSocialHistory][=].text.status = #generated
* section[sectionSocialHistory][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>To be added</p></div>"*/

* section[sectionPhysicalActivity][+].title = "Physical Activities Summary section"
* section[sectionPhysicalActivity][=].code = $LNC#77242-6
* section[sectionPhysicalActivity][=].entry[activity][+] = Reference(RiskBehaviourPhysicalActivityExample)
* section[sectionPhysicalActivity][=].text.status = #generated
* section[sectionPhysicalActivity][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: Observation</b><a name=\"RiskBehaviourPhysicalActivityExample\"></a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Observation &quot;RiskBehaviourPhysicalActivityExample&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-risk-behaviour-physical-activity.html\">Physical Activity Status Observation</a></p></div><p><b>status</b>: final</p><p><b>category</b>: Activity <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/5.0.0/CodeSystem-observation-category.html\">Observation Category Codes</a>#activity)</span></p><p><b>code</b>: Physical Activity <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://browser.ihtsdotools.org/\">SNOMED CT</a>#106020009)</span></p><p><b>subject</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Patient-PatientExample)</p><p><b>encounter</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Encounter-TargetFacilityEncounter)</p><p><b>effective</b>: 2022-11-30</p><p><b>performer</b>: </p><ul><li>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Organization-OrganizationExample)</li><li>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Practitioner-GeneralPractitionerExample)</li></ul><p><b>value</b>: Physically not active <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://browser.ihtsdotools.org/\">SNOMED CT</a>#9011000175102)</span></p></div>"

* section[sectionResults][+].title = "IPS Results Section"
* section[sectionResults][=].code = $LNC#30954-2
* section[sectionResults][=].entry[results-observation][+] = Reference(RandomBloodSugarExample)
* section[sectionResults][=].entry[results-observation][+] = Reference(FastingBloodSugarExample)
* section[sectionResults][=].entry[results-observation][+] = Reference(TotalCholesterolExample)
* section[sectionResults][=].entry[results-observation][+] = Reference(RiskBehaviourTobaccoSmokerExample)
* section[sectionResults][=].text.status = #generated
* section[sectionResults][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: Observation</b><a name=\"RandomBloodSugarExample\"></a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Observation &quot;RandomBloodSugarExample&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-random-blood-sugar.html\">Random Blood Sugar Observation</a></p></div><p><b>status</b>: final</p><p><b>category</b>: Laboratory <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/5.0.0/CodeSystem-observation-category.html\">Observation Category Codes</a>#laboratory)</span></p><p><b>code</b>: Glucose <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://loinc.org/\">LOINC</a>#15074-8)</span></p><p><b>subject</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Patient-PatientExample)</p><p><b>encounter</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Encounter-TargetFacilityEncounter)</p><p><b>effective</b>: 2022-11-30</p><p><b>performer</b>: </p><ul><li>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Organization-OrganizationExample)</li><li>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Practitioner-GeneralPractitionerExample)</li></ul><p><b>value</b>: 6.3 mmol/L<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM code mmol/L = 'mmol/L')</span></p><p><b>interpretation</b>: High <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/5.0.0/CodeSystem-v3-ObservationInterpretation.html\">ObservationInterpretation</a>#H)</span></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Low</b></td><td><b>High</b></td><td><b>Type</b></td></tr><tr><td style=\"display: none\">*</td><td>3.1 mmol/L<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM code mmol/L = 'mmol/L')</span></td><td>6.2 mmol/L<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM code mmol/L = 'mmol/L')</span></td><td>Type <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/5.0.0/CodeSystem-referencerange-meaning.html\">Observation Reference Range Meaning Codes</a>#type)</span></td></tr></table><br /><p><b>Generated Narrative: Observation</b><a name=\"FastingBloodSugarExample\"></a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Observation &quot;FastingBloodSugarExample&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-fasting-blood-sugar.html\">Fasting Blood Sugar Observation</a></p></div><p><b>status</b>: final</p><p><b>category</b>: Laboratory <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/5.0.0/CodeSystem-observation-category.html\">Observation Category Codes</a>#laboratory)</span></p><p><b>code</b>: Fasting glucose <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://loinc.org/\">LOINC</a>#76629-5)</span></p><p><b>subject</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Patient-PatientExample)</p><p><b>encounter</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Encounter-TargetFacilityEncounter)</p><p><b>effective</b>: 2022-11-30</p><p><b>performer</b>: </p><ul><li>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Organization-OrganizationExample)</li><li>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Practitioner-GeneralPractitionerExample)</li></ul><p><b>value</b>: 5.4 mmol/L<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM code mmol/L = 'mmol/L')</span></p><p><b>interpretation</b>: Normal <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/5.0.0/CodeSystem-v3-ObservationInterpretation.html\">ObservationInterpretation</a>#N)</span></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Low</b></td><td><b>High</b></td><td><b>Type</b></td></tr><tr><td style=\"display: none\">*</td><td>3.9 mmol/L<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM code mmol/L = 'mmol/L')</span></td><td>5.6 mmol/L<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM code mmol/L = 'mmol/L')</span></td><td>Type <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/5.0.0/CodeSystem-referencerange-meaning.html\">Observation Reference Range Meaning Codes</a>#type)</span></td></tr></table><br /><p><b>Generated Narrative: Observation</b><a name=\"TotalCholesterolExample\"></a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Observation &quot;TotalCholesterolExample&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-total-cholesterol.html\">Total Cholesterol Observation</a></p></div><p><b>status</b>: final</p><p><b>category</b>: Laboratory <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/5.0.0/CodeSystem-observation-category.html\">Observation Category Codes</a>#laboratory)</span></p><p><b>code</b>: Cholesterol <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://loinc.org/\">LOINC</a>#2093-3)</span></p><p><b>subject</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Patient-PatientExample)</p><p><b>encounter</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Encounter-TargetFacilityEncounter)</p><p><b>effective</b>: 2022-11-30</p><p><b>performer</b>: </p><ul><li>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Organization-OrganizationExample)</li><li>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Practitioner-GeneralPractitionerExample)</li></ul><p><b>value</b>: 6.3 mmol/L<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM code mmol/L = 'mmol/L')</span></p><p><b>interpretation</b>: High <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/5.0.0/CodeSystem-v3-ObservationInterpretation.html\">ObservationInterpretation</a>#H)</span></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>High</b></td><td><b>Type</b></td></tr><tr><td style=\"display: none\">*</td><td>5 mmol/L<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM code mmol/L = 'mmol/L')</span></td><td>Type <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/5.0.0/CodeSystem-referencerange-meaning.html\">Observation Reference Range Meaning Codes</a>#type)</span></td></tr></table><br /><p><b>Generated Narrative: Observation</b><a name=\"RiskBehaviourTobaccoSmokerExample\"></a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Observation &quot;RiskBehaviourTobaccoSmokerExample&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-risk-behaviour-tobacco-smoker.html\">Tobacco Smoker Observation</a></p></div><p><b>status</b>: final</p><p><b>category</b>: Social History <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/5.0.0/CodeSystem-observation-category.html\">Observation Category Codes</a>#social-history)</span></p><p><b>code</b>: Tobacco smoking status for tobacco smoker <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://loinc.org/\">LOINC</a>#81229-7)</span></p><p><b>subject</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Patient-PatientExample)</p><p><b>encounter</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Encounter-TargetFacilityEncounter)</p><p><b>effective</b>: 2022-11-30</p><p><b>performer</b>: </p><ul><li>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Organization-OrganizationExample)</li><li>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Practitioner-GeneralPractitionerExample)</li></ul><p><b>value</b>: Light tobacco smoker <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://loinc.org/\">LOINC</a>#LA18982-1)</span></p></div>"

* section[sectionMedications][+].title = "Medication Summary section"
* section[sectionMedications][=].code = $LNC#10160-0
* section[sectionMedications][=].entry[medicationRequest][+] = Reference(NoPrescriptionsExample)
* section[sectionMedications][=].text.status = #generated
* section[sectionMedications][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: MedicationRequest</b><a name=\"NoPrescriptionsExample\"></a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource MedicationRequest &quot;NoPrescriptionsExample&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-no-medication-requested.html\">Prescription Not Available</a></p></div><p><b>status</b>: completed</p><p><b>intent</b>: order</p><p><b>medication</b>: No information about medications <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://hl7.org/fhir/uv/ips/STU1.1/CodeSystem-absent-unknown-uv-ips.html\">Absent and Unknown Data - IPS</a>#no-medication-info)</span></p><p><b>subject</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Patient-PatientExample)</p><p><b>encounter</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Encounter-TargetFacilityEncounter)</p><p><b>note</b>: Additional information (By Organization-OrganizationExample @Oct 12, 2023, 1:21:33)</p></div>"

* section[sectionAllergies][+].title = "IPS Allergies and Intolerances Section"
* section[sectionAllergies][=].code = $LNC#48765-2
* section[sectionAllergies][=].entry[allergyOrIntolerance][+] = Reference(NoAllergiesExample)
* section[sectionAllergies][=].text.status = #generated
* section[sectionAllergies][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: AllergyIntolerance</b><a name=\"NoAllergiesExample\"></a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource AllergyIntolerance &quot;NoAllergiesExample&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-allergy-intolerance.html\">Allergy Intolerance</a></p></div><p><b>clinicalStatus</b>: Inactive <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/5.0.0/CodeSystem-allergyintolerance-clinical.html\">AllergyIntolerance Clinical Status Codes</a>#inactive)</span></p><p><b>type</b>: allergy</p><p><b>code</b>: No information about allergies <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://hl7.org/fhir/uv/ips/STU1.1/CodeSystem-absent-unknown-uv-ips.html\">Absent and Unknown Data - IPS</a>#no-allergy-info)</span></p><p><b>patient</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Patient-PatientExample)</p><p><b>encounter</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Encounter-TargetFacilityEncounter)</p></div>"

* section[sectionRiskAssessment][+].title = "Risk Assessments Summary section"
* section[sectionRiskAssessment][=].code = $LNC#75492-9
* section[sectionRiskAssessment][=].entry[risk][+] = Reference(CVDRiskCategoryExample)
* section[sectionRiskAssessment][=].text.status = #generated
* section[sectionRiskAssessment][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: RiskAssessment</b><a name=\"CVDRiskCategoryExample\"></a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource RiskAssessment &quot;CVDRiskCategoryExample&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-cvd-risk-category.html\">Cardiovascular Risk Assessment</a></p></div><p><b>status</b>: final</p><p><b>code</b>: Assessment for risk of cardiovascular disease <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://browser.ihtsdotools.org/\">SNOMED CT</a>#441829007)</span></p><p><b>subject</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Patient-PatientExample)</p><p><b>encounter</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Encounter-TargetFacilityEncounter)</p><p><b>occurrence</b>: 2023-10-06 13:28:17-0500</p><p><b>performer</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Practitioner-GeneralPractitionerExample)</p><p><b>basis</b>: </p><ul><li>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Patient-PatientExample)</li><li>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Observation-RiskBehaviourTobaccoSmokerExample)</li><li>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Observation-TotalCholesterolExample)</li><li>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Observation-BloodPressureExample)</li><li>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Observation-RandomBloodSugarExample)</li><li>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Observation-FastingBloodSugarExample)</li></ul><h3>Predictions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Outcome</b></td><td><b>Probability[x]</b></td><td><b>QualitativeRisk</b></td><td><b>When[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>Risk of heart attack <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://browser.ihtsdotools.org/\">SNOMED CT</a>#395112001)</span></td><td>0.02</td><td>Risk Category <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-cs-cvd-risk-category.html\">Cardiovascular Risk Categories</a>#Critical)</span></td><td>39-49 years</td></tr></table></div>"

* section[sectionReferrals][+].title = "Referrals Summary section"
* section[sectionReferrals][=].code = $LNC#57133-1
* section[sectionReferrals][=].entry[serviceRequest][+] = Reference(FollowUpPlanServiceRequestExample)
* section[sectionReferrals][=].text.status = #generated
* section[sectionReferrals][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: ServiceRequest</b><a name=\"FollowUpPlanServiceRequestExample\"></a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource ServiceRequest &quot;FollowUpPlanServiceRequestExample&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-follow-up-plan.html\">Referral Request For Follow-up Plan</a></p></div><p><b>status</b>: completed</p><p><b>intent</b>: order</p><p><b>code</b>: Follow up at HLC <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://browser.ihtsdotools.org/\">SNOMED CT</a>#410321003)</span></p><p><b>subject</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Patient-PatientExample)</p><p><b>encounter</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Encounter-TargetFacilityEncounter)</p><p><b>occurrence</b>: Count 1 times, Duration 3?ngen-7?, Once</p><p><b>requester</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Practitioner-GeneralPractitionerExample)</p><p><b>locationReference</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Location/ProvidersLocationExample)</p><p><b>reasonCode</b>: Followed in 6 months at HLC <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-cs-follow-up-reasons.html\">Follow up at HLC</a>#Followed-in-3-years-at-hlc)</span></p></div>"

* section[sectionPlanOfCare][+].title = "IPS Plan of Care Section"
* section[sectionPlanOfCare][=].code = $LNC#18776-5
* section[sectionPlanOfCare][=].entry[carePlan][+] = Reference(FollowUpAtHLCExample)
* section[sectionPlanOfCare][=].text.status = #generated
* section[sectionPlanOfCare][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: CarePlan</b><a name=\"FollowUpAtHLCExample\"></a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource CarePlan &quot;FollowUpAtHLCExample&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-follow-up-at-hlc.html\">Follow-up at HLC</a></p></div><p><b>status</b>: active</p><p><b>intent</b>: order</p><p><b>subject</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Patient-PatientExample)</p><p><b>encounter</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Encounter-TargetFacilityEncounter)</p><p><b>period</b>: 2022-12-01 --&gt; (ongoing)</p><p><b>contributor</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Organization-OrganizationExample)</p><h3>Activities</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Reference</b></td></tr><tr><td style=\"display: none\">*</td><td>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/ServiceRequest/FollowUpPlanServiceRequestExample)</td></tr></table></div>"

* section[sectionEncounterLocation][+].title = "List of Encounter Locations section"
* section[sectionEncounterLocation][=].code = $LNC#80412-0
* section[sectionEncounterLocation][=].entry[location][+] = Reference(ProvidersLocationExample)
* section[sectionEncounterLocation][=].text.status = #generated
* section[sectionEncounterLocation][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: Location</b><a name=\"ProvidersLocationExample\"></a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Location &quot;ProvidersLocationExample&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-providers-location.html\">Providers Location</a></p></div><p><b>identifier</b>: Provider location identifier/Location-ID-1, Provider location identifier/Location-ID-2</p><p><b>status</b>: active</p><p><b>name</b>: Name for the location</p><p><b>telecom</b>: <a href=\"tel:+27829999999\">+27829999999</a>, <a href=\"mailto:someone@something.com\">someone@something.com</a>, <a href=\"mailto:someone2@something.com\">someone2@something.com</a></p><p><b>address</b>: 177 Nawala Road Nugegoda Colombo 32350 LK </p><p><b>managingOrganization</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Organization-OrganizationExample)</p></div>"

* section[sectionDeviceInformation][+].title = "List of Used Devices section"
* section[sectionDeviceInformation][=].code = http://fhir.health.gov.lk/ips/CodeSystem/cs-composition-codes#Device-Information
* section[sectionDeviceInformation][=].entry[device][+] = Reference(DeviceInformationExample)
* section[sectionDeviceInformation][=].text.status = #generated
* section[sectionDeviceInformation][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: Device</b><a name=\"DeviceInformationExample\"> </a><a name=\"hcDeviceInformationExample\"> </a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Device &quot;DeviceInformationExample&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-device-information.html\">Device Information</a></p></div><p><b>identifier</b>: <code>http://fhir.health.gov.lk/ips/identifier/system-id</code>/OpenMRS-1234-1</p><p><b>status</b>: active</p><p><b>type</b>: Medical record <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://browser.ihtsdotools.org/\">SNOMED CT</a>#129465004)</span></p><h3>Versions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Type</b></td><td><b>Value</b></td></tr><tr><td style=\"display: none\">*</td><td>OpenMRS <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-cs-device-classification.html\">Device Classification Codes</a>#OpenMRS)</span></td><td>2.5.0</td></tr></table><p><b>owner</b>: <a href=\"Organization-OrganizationExample.html\">Organization/OrganizationExample</a> &quot;Some Health Facility&quot;</p><p><b>location</b>: <a href=\"Location-ProvidersLocationExample.html\">Location/ProvidersLocationExample</a> &quot;Name for the location&quot;</p></div>"

Instance: MedicalHistoryExample
InstanceOf: MedicalHistory
Usage: #example
Title: "Medical History"
Description: "Represents previous, pre-existing and new conditions for the patient."
* clinicalStatus.coding.code = #active
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* verificationStatus.coding.code = #confirmed
* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* category[+].coding.code = #problem-list-item
* category[=].coding.system = "http://terminology.hl7.org/CodeSystem/condition-category"
* code = $SCT#313435000
* subject = Reference(PatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* recorder = Reference(GeneralPractitionerExample)
* asserter = Reference(GeneralPractitionerExample)
* recordedDate = "2023-10-06T13:28:17-05:00"

Instance: NoMedicalHistoryExample
InstanceOf: NoMedicalHistory
Usage: #example
Title: "Medical History"
Description: "Indicates that there is no information available about the subject's health problems or disabilities."
* clinicalStatus.coding.code = #inactive
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* code = http://hl7.org/fhir/uv/ips/CodeSystem/absent-unknown-uv-ips#no-problem-info
* subject = Reference(PatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* recordedDate = "2023-10-06T13:28:17-05:00"

Instance: HHIMSReferralTaskExample
InstanceOf: ReferralTask
Usage: #example
Title: "Referral Task"
Description: "Is primarily used to track the progress of a patient's referral."
* status = #completed
* intent = #order
* priority = #routine
* description = "some information regarding the need for the referral request, if any."
* for = Reference(PatientExample)
* focus = Reference(GeneralReferralServiceRequestExample)
* encounter = Reference(TargetFacilityEncounterExample)
* authoredOn = "2023-10-06T13:28:17-05:00"
* requester = Reference(GeneralPractitionerExample)
* location = Reference(ProvidersLocationExample)

Instance: GenericTaskExample
InstanceOf: GenericTask
Usage: #example
Title: "Generic Task"
Description: "Base Task elements that are inherited by other Task resources."
* status = #completed
* intent = #order
* for = Reference(PatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* authoredOn = "2023-10-06T13:28:17-05:00"
* requester = Reference(GeneralPractitionerExample)
* location = Reference(ProvidersLocationExample)

Instance: AllergiesExample
InstanceOf: Allergies
Usage: #example
Title: "Allergy Intolerance"
Description: "This is to record allergy information available for the patient."
* code = $SCT#414285001
* code.text = "Allergy to food"
* encounter = Reference(TargetFacilityEncounterExample)
* clinicalStatus.coding.code = #active
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"
* verificationStatus.coding.code = #confirmed
* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification"
* patient = Reference(PatientExample)
* onsetDateTime = "2023-10-11T17:21:33-08:00"
* recorder = Reference(GeneralPractitionerExample)
* type = #allergy

Instance: NoAllergiesExample
InstanceOf: NoAllergies
Usage: #example
Title: "Allergy Intolerance"
Description: "This is to indicate that there is no information avaible for allergies."
* code = http://hl7.org/fhir/uv/ips/CodeSystem/absent-unknown-uv-ips#no-allergy-info
* code.text = "No information about allergies"
* encounter = Reference(TargetFacilityEncounterExample)
* clinicalStatus.coding.code = #inactive
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"
* patient = Reference(PatientExample)
* type = #allergy

Instance: MedicationRequestsExample
InstanceOf: MedicationRequests
Usage: #example
Title: "Medication Request"
Description: "This is to record requests for medication that are prescribed to a patient or for Non-MDS medicines."
* identifier[RequestID].value = "prescription-12345"
* identifier[RequestID].system = "http://fhir.health.gov.lk/ips/identifier/medication"
* identifier[RequestID].type.coding.code = #FILL
* identifier[RequestID].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[RequestID].type.coding.display = "Filler Identifier"
* identifier[RequestID].type.text = "Prescription identifier"
* authoredOn = "2023-10-11T17:21:33-08:00"
* status = #completed
* intent = #order
* subject = Reference(PatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* medicationCodeableConcept.coding.code = #01403501
* medicationCodeableConcept.coding.system = "http://fhir.health.gov.lk/ips/CodeSystem/cs-medication-name-msd"
* medicationCodeableConcept.text = "Medication"
* dosageInstruction[+].doseAndRate[+].doseQuantity.value = 3.0
* dosageInstruction[=].timing.repeat.period = 3.0
* dosageInstruction[=].timing.repeat.count = 2
* dosageInstruction[=].timing.repeat.frequency = 2
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].timing.repeat.duration = 2.0
* dosageInstruction[=].timing.repeat.durationUnit = #d
* dosageInstruction[=].timing.code.coding.code = #BID
* dosageInstruction[=].timing.code.coding.system = "http://terminology.hl7.org/CodeSystem/v3-GTSAbbreviation"
* dispenseRequest.quantity.value = 5
* note.text = "Additional information regarding the patient's medication prescription"
* note.authorReference = Reference(OrganizationExample)
* note.time = "2023-10-11T17:21:33-08:00"
* requester = Reference(GeneralPractitionerExample)
* performer = Reference(GeneralPractitionerExample)
* recorder = Reference(GeneralPractitionerExample)

Instance: NoPrescriptionsExample
InstanceOf: NoPrescriptions
Usage: #example
Title: "Medication Request"
Description: "This is to indicate that the patient has not received any prescriptions for drugs."
* status = #completed
* intent = #order
* subject = Reference(PatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* medicationCodeableConcept = http://hl7.org/fhir/uv/ips/CodeSystem/absent-unknown-uv-ips#no-medication-info
* note.text = "Additional information"
* note.authorReference = Reference(OrganizationExample)
* note.time = "2023-10-11T17:21:33-08:00"
* authoredOn = "2023-10-06T13:28:17-05:00"

/*Instance: ProceduresExample
InstanceOf: Procedures
Usage: #example
Title: "Procedures"
Description: "This represents the procedure that was performed on a patient."
* status = #in-progress
* category = $SCT#409073007
* code.coding.code = #X-Ray
* code.coding.system = "http://fhir.health.gov.lk/ips/CodeSystem/cs-procedure-imaging"
* subject = Reference(PatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* performedDateTime = "2023-10-11T17:21:33-08:00"
* recorder = Reference(GeneralPractitionerExample)
* asserter = Reference(GeneralPractitionerExample)
* performer[+].actor = Reference(GeneralPractitionerExample)
* location = Reference(ProvidersLocationExample)*/

/*Instance: InjectionsExample
InstanceOf: Injections
Usage: #example
Title: "Injections"
Description: "Used to represent medication that is administered intravenously."
* status = #completed
* medicationCodeableConcept = $SCT#2571007
* medicationCodeableConcept.text = "Busulfan"
* subject = Reference(PatientExample)
* context = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2023-10-11T17:21:33-08:00"
* performer[+].actor = Reference(GeneralPractitionerExample)
* dosage.dose.value = 12
* dosage.route = $SCT#47625008
* dosage.route.text = "Intravenous route"*/

Instance: DrugDispensationExample
InstanceOf: DrugDispensation
Usage: #example
Title: "Drug Dispensation"
Description: "Used to represent dispensed medication for a patient."
* status = #completed
* subject = Reference(PatientExample)
* context = Reference(TargetFacilityEncounterExample)
* performer[+].actor = Reference(GeneralPractitionerExample)
* location = Reference(ProvidersLocationExample)
* authorizingPrescription[+] = Reference(MedicationRequestsExample)
* whenHandedOver = "2023-10-11T17:21:33-08:00"
* receiver[+] = Reference(PatientExample)
* medicationCodeableConcept.coding.code = #01403501
* medicationCodeableConcept.coding.system = "http://fhir.health.gov.lk/ips/CodeSystem/cs-medication-name-msd"
* medicationCodeableConcept.text = "Medication"

Instance: InvestigationsServiceRequestExample
InstanceOf: InvestigationsServiceRequest
Usage: #example
Title: "Investigations Request"
Description: "Used to initiate a request for an investigation."
* status = #completed
* intent = #order
* code.coding.code = #FBC-WBC-th/uL
* code.coding.system = "http://fhir.health.gov.lk/ips/CodeSystem/cs-investigation"
* code.text = "Investigation requested"
* subject = Reference(PatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* occurrenceDateTime = "2023-10-06T13:28:17-05:00"
* requester = Reference(GeneralPractitionerExample)
* locationReference[+] = Reference(ProvidersLocationExample)
* authoredOn = "2023-10-06T13:28:17-05:00"

/*Instance: InvestigationsTaskExample
InstanceOf: InvestigationsTask
Usage: #example
Title: "Investigations Task"
Description: "Is primarily used to track the progress of an investigations request."
* status = #completed
* intent = #order
* priority = #routine
* description = "some information regarding the need for the investigations request, if any."
* for = Reference(PatientExample)
* basedOn[+] = Reference(InvestigationsServiceRequestExample)
* encounter = Reference(TargetFacilityEncounterExample)
* authoredOn = "2023-10-06T13:28:17-05:00"
* requester = Reference(GeneralPractitionerExample)
* location = Reference(ProvidersLocationExample)
* executionPeriod.start = "2023-10-06T13:28:17-05:00"
* executionPeriod.end = "2023-10-09T16:28:17-05:00"*/

Instance: ImagingServiceRequestExample
InstanceOf: ImagingServiceRequest
Usage: #example
Title: "Imaging Request"
Description: "Used to initiate the request for imaging to be done."
* status = #completed
* intent = #order
* code.coding.code = #X-Ray
* code.coding.system = "http://fhir.health.gov.lk/ips/CodeSystem/cs-procedure-imaging"
* code.text = "Imaging requested"
* subject = Reference(PatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* occurrenceDateTime = "2023-10-06T13:28:17-05:00"
* requester = Reference(GeneralPractitionerExample)
* locationReference[+] = Reference(ProvidersLocationExample)
* authoredOn = "2023-10-06T13:28:17-05:00"

/*Instance: ImagingTaskExample
InstanceOf: ImagingTask
Usage: #example
Title: "Imaging Task"
Description: "Is primarily used to track the progress of an imaging request."
* status = #completed
* intent = #order
* priority = #routine
* description = "some information regarding the need for the imaging request, if any."
* for = Reference(PatientExample)
* basedOn[+] = Reference(ImagingServiceRequestExample)
* encounter = Reference(TargetFacilityEncounterExample)
* authoredOn = "2023-10-06T13:28:17-05:00"
* requester = Reference(GeneralPractitionerExample)
* location = Reference(ProvidersLocationExample)
* executionPeriod.start = "2023-10-06T13:28:17-05:00"
* executionPeriod.end = "2023-10-09T16:28:17-05:00"*/

Instance: ImagingExample
InstanceOf: Imaging
Usage: #example
Title: "Imaging Study"
Description: "Used to represent the content or results of a imaging study."
* status = #registered
* subject = Reference(PatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* started = "2023-10-06T13:28:17-05:00"
* basedOn[+] = Reference(ImagingServiceRequestExample)
* referrer = Reference(GeneralPractitionerExample)
* description = "Imaging Description"
* location = Reference(ProvidersLocationExample)
* series[+].uid = "2.16.124.113543.6003.1154777499.30246.19789.3503430045.1"
* series[=].modality = $DICOM#DX
* series[=].instance[+].uid = "2.16.124.113543.6003.1154777499.30246.19789.3503430045.1.1"
* series[=].instance[=].sopClass = urn:ietf:rfc:3986#urn:oid:1.2.840.10008.5.1.4.1.1.2
* series[=].performer[+].actor = Reference(GeneralPractitionerExample)
//* procedureReference = Reference(ProceduresExample)

Instance: HHIMSCompositionExample
InstanceOf: HHIMSComposition
Usage: #example
Title: "HHIMS Composition"
Description: "Clinical document used to represent the International Patient Summary (IPS) data set for HHIMS"
* identifier.value = "PAT0001-v1"
* identifier.system = "http://fhir.health.gov.lk/ips/identifier/hhims-ips-document"
* status = #final
* subject = Reference(PatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* type = $LNC#60591-5
* date = "2024-02-20"
* author[+] = Reference(GeneralPractitionerExample)
* author[+] = Reference(OrganizationExample)
* title = "LK NEHR Sri Lanka Patient Summary for HHIMS"

* section[sectionMedications][+].title = "Medication Summary section"
* section[sectionMedications][=].code = $LNC#10160-0
* section[sectionMedications][=].entry[medicationRequest][+] = Reference(MedicationRequestsExample)
* section[sectionMedications][=].entry[medicationDispense][+] = Reference(DrugDispensationExample)
* section[sectionMedications][=].text.status = #generated
* section[sectionMedications][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: MedicationRequest</b><a name=\"PrescriptionsExample\"></a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource MedicationRequest &quot;PrescriptionsExample&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-medication-request.html\">Prescription Request</a></p></div><p><b>identifier</b>: Prescription identifier/prescription-12345</p><p><b>status</b>: completed</p><p><b>intent</b>: order</p><p><b>medication</b>: Medication <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-cs-medication-name-msd.html\">Medication Names</a>#Vitamin-A-&amp;-D)</span></p><p><b>subject</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Patient-PatientExample)</p><p><b>encounter</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Encounter-TargetFacilityEncounter)</p><p><b>authoredOn</b>: 2023-10-11 17:21:33-0800</p><p><b>requester</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Practitioner-GeneralPractitionerExample)</p><p><b>performer</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Practitioner-GeneralPractitionerExample)</p><p><b>recorder</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Practitioner-GeneralPractitionerExample)</p><p><b>note</b>: Additional information regarding the patient's medication prescription (By Organization-OrganizationExample @Oct 12, 2023, 1:21:33)</p><blockquote><p><b>dosageInstruction</b></p><p><b>timing</b>: Code: BID, Count 2 times, Duration 2days, 2 per 3 days</p><blockquote><p><b>doseAndRate</b></p></blockquote></blockquote><h3>DispenseRequests</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Quantity</b></td></tr><tr><td style=\"display: none\">*</td><td>5</td></tr></table><br /><p><b>Generated Narrative: MedicationDispense</b><a name=\"DrugDispensationExample\"></a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource MedicationDispense &quot;DrugDispensationExample&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-drug-dispensation.html\">Drug Dispensation</a></p></div><p><b>status</b>: completed</p><p><b>medication</b>: Medication <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-cs-medication-name-msd.html\">Medication Names</a>#Vitamin-A-&amp;-D)</span></p><p><b>subject</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Patient-PatientExample)</p><p><b>context</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Encounter-TargetFacilityEncounter)</p><h3>Performers</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Actor</b></td></tr><tr><td style=\"display: none\">*</td><td>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Practitioner-GeneralPractitionerExample)</td></tr></table><p><b>location</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Location/ProvidersLocationExample)</p><p><b>authorizingPrescription</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/MedicationRequest/PrescriptionsExample)</p><p><b>whenHandedOver</b>: 2023-10-11 17:21:33-0800</p><p><b>receiver</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Patient-PatientExample)</p></div>"

//* section[sectionInjections][+].title = "Intravenous Injections Summary section"
//* section[sectionInjections][=].code = $LNC#95492-5
//* section[sectionInjections][=].entry[injection][+] = Reference(InjectionsExample)
//* section[sectionInjections][=].text.status = #generated
//* section[sectionInjections][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: MedicationAdministration</b><a name=\"InjectionsExample\"></a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource MedicationAdministration &quot;InjectionsExample&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-injection.html\">Injections</a></p></div><p><b>status</b>: completed</p><p><b>medication</b>: Busulfan <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://browser.ihtsdotools.org/\">SNOMED CT</a>#2571007)</span></p><p><b>subject</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Patient-PatientExample)</p><p><b>context</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Encounter-TargetFacilityEncounter)</p><p><b>effective</b>: 2023-10-11 17:21:33-0800</p><h3>Performers</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Actor</b></td></tr><tr><td style=\"display: none\">*</td><td>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Practitioner-GeneralPractitionerExample)</td></tr></table><h3>Dosages</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Route</b></td><td><b>Dose</b></td></tr><tr><td style=\"display: none\">*</td><td>Intravenous route <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://browser.ihtsdotools.org/\">SNOMED CT</a>#47625008)</span></td><td>12</td></tr></table></div>"

* section[sectionAllergies][+].title = "IPS Allergies and Intolerances Section"
* section[sectionAllergies][=].code = $LNC#48765-2
* section[sectionAllergies][=].entry[allergyOrIntolerance][+] = Reference(AllergiesExample)
* section[sectionAllergies][=].text.status = #generated
* section[sectionAllergies][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: AllergyIntolerance</b><a name=\"AllergiesExample\"></a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource AllergyIntolerance &quot;AllergiesExample&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-allergy-intolerance.html\">Allergy Intolerance</a></p></div><p><b>clinicalStatus</b>: Active <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/5.0.0/CodeSystem-allergyintolerance-clinical.html\">AllergyIntolerance Clinical Status Codes</a>#active)</span></p><p><b>verificationStatus</b>: Confirmed <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/5.0.0/CodeSystem-allergyintolerance-verification.html\">AllergyIntolerance Verification Status</a>#confirmed)</span></p><p><b>type</b>: allergy</p><p><b>code</b>: Allergy to food <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://browser.ihtsdotools.org/\">SNOMED CT</a>#414285001)</span></p><p><b>patient</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Patient-PatientExample)</p><p><b>encounter</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Encounter-TargetFacilityEncounter)</p><p><b>onset</b>: 2023-10-11 17:21:33-0800</p><p><b>recorder</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Practitioner-GeneralPractitionerExample)</p></div>"

* section[sectionProblems][+].title = "IPS Problems Section"
* section[sectionProblems][=].code = $LNC#11450-4
* section[sectionProblems][=].entry[problem][+] = Reference(NoMedicalHistoryExample)
* section[sectionProblems][=].text.status = #generated
* section[sectionProblems][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: Condition</b><a name=\"NoMedicalHistoryExample\"></a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Condition &quot;NoMedicalHistoryExample&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-no-medical-history.html\">Medical History</a></p></div><p><b>clinicalStatus</b>: Inactive <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/5.0.0/CodeSystem-condition-clinical.html\">Condition Clinical Status Codes</a>#inactive)</span></p><p><b>code</b>: No information about problems <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://hl7.org/fhir/uv/ips/STU1.1/CodeSystem-absent-unknown-uv-ips.html\">Absent and Unknown Data - IPS</a>#no-problem-info)</span></p><p><b>subject</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Patient-PatientExample)</p><p><b>encounter</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Encounter-TargetFacilityEncounter)</p><p><b>recordedDate</b>: 2023-10-06 13:28:17-0500</p></div>"

* section[sectionVitalSigns][+].title = "IPS Vital Signs Section"
* section[sectionVitalSigns][=].code = $LNC#8716-3
* section[sectionVitalSigns][=].entry[vitalSign][+] = Reference(WeightExample)
* section[sectionVitalSigns][=].text.status = #generated
* section[sectionVitalSigns][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: Observation</b><a name=\"WeightExample\"></a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Observation &quot;WeightExample&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-weight.html\">Patient Weight Observation</a></p></div><p><b>status</b>: final</p><p><b>category</b>: Vital Signs <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"http://terminology.hl7.org/5.0.0/CodeSystem-observation-category.html\">Observation Category Codes</a>#vital-signs)</span></p><p><b>code</b>: Body Weight <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://loinc.org/\">LOINC</a>#29463-7)</span></p><p><b>subject</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Patient-PatientExample)</p><p><b>encounter</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Encounter-TargetFacilityEncounter)</p><p><b>effective</b>: 2022-11-30</p><p><b>performer</b>: </p><ul><li>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Organization-OrganizationExample)</li><li>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Practitioner-GeneralPractitionerExample)</li></ul><p><b>value</b>: 110 kg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM code kg = 'kg')</span></p></div>"

/** section[sectionProceduresHx][+].title = "IPS History of Procedures Section"
* section[sectionProceduresHx][=].code = $LNC#47519-4
* section[sectionProceduresHx][=].entry[procedure][+] = Reference(ProceduresExample)
* section[sectionProceduresHx][=].text.status = #generated
* section[sectionProceduresHx][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: Procedure</b><a name=\"ProceduresExample\"></a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Procedure &quot;ProceduresExample&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-procedure.html\">Procedures</a></p></div><p><b>status</b>: in-progress</p><p><b>category</b>: Education <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://browser.ihtsdotools.org/\">SNOMED CT</a>#409073007)</span></p><p><b>code</b>: X-Ray <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-cs-procedure-imaging.html\">Procedures</a>#X-Ray)</span></p><p><b>subject</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Patient-PatientExample)</p><p><b>encounter</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Encounter-TargetFacilityEncounter)</p><p><b>performed</b>: 2023-10-11 17:21:33-0800</p><p><b>recorder</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Practitioner-GeneralPractitionerExample)</p><p><b>asserter</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Practitioner-GeneralPractitionerExample)</p><h3>Performers</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Actor</b></td></tr><tr><td style=\"display: none\">*</td><td>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Practitioner-GeneralPractitionerExample)</td></tr></table><p><b>location</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Location/ProvidersLocationExample)</p></div>"
*/

* section[sectionProcedures][+].title = "Procedures Summary Section"
* section[sectionProcedures][=].code = http://fhir.health.gov.lk/ips/CodeSystem/cs-composition-codes#Procedures-History
* section[sectionProcedures][=].entry[serviceRequest][+] = Reference(ProcedureServiceRequestExample)
* section[sectionProcedures][=].text.status = #generated
* section[sectionProcedures][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: ServiceRequest</b><a name=\"ProcedureServiceRequestExample\"> </a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource ServiceRequest &quot;ProcedureServiceRequestExample&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-procedures-request.html\">Procedure Request</a></p></div><p><b>status</b>: completed</p><p><b>intent</b>: order</p><p><b>code</b>: Cleaning and Dressing <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-cs-procedure.html\">Procedures</a>#Cleaning-and-Dressing)</span></p><p><b>subject</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Patient/PatientExample)</p><p><b>encounter</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Encounter/TargetFacilityEncounter)</p><p><b>occurrence</b>: 2023-10-06 13:28:17-0500</p><p><b>requester</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Practitioner/GeneralPractitionerExample)</p><p><b>locationReference</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Location/ProvidersLocationExample)</p></div>"

* section[sectionImaging][+].title = "Imaging Summary section"
* section[sectionImaging][=].code = $LNC#97684-5
* section[sectionImaging][=].entry[image][+] = Reference(ImagingExample)
//* section[sectionImaging][=].entry[task][+] = Reference(ImagingTaskExample)
* section[sectionImaging][=].entry[serviceRequest][+] = Reference(ImagingServiceRequestExample)
* section[sectionImaging][=].text.status = #generated
* section[sectionImaging][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">  <p>    <b>Generated Narrative: ImagingStudy</b>    <a name=\"ImagingExample\"></a>  </p>  <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">    <p style=\"margin-bottom: 0px\">Resource ImagingStudy &quot;ImagingExample&quot; </p>    <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-imaging-study.html\">Imaging Study</a>    </p>  </div>  <p>    <b>status</b>: registered  </p>  <p>    <b>subject</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Patient-PatientExample)  </p>  <p>    <b>encounter</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Encounter-TargetFacilityEncounter)  </p>  <p>    <b>started</b>: 2023-10-06 13:28:17-0500  </p>  <p>    <b>basedOn</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/ServiceRequest/ImagingServiceRequestExample)  </p>  <p>    <b>referrer</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Practitioner-GeneralPractitionerExample)  </p>  <p>    <b>location</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Location/ProvidersLocationExample)  </p>  <p>    <b>description</b>: Imaging Description  </p>  <blockquote>    <p>      <b>series</b>    </p>    <p>      <b>uid</b>: 89c0c298-6c30-11ee-b962-0242ac120002    </p>    <p>      <b>modality</b>: X-Ray Angiography (Details: DICOM code XA = 'X-Ray Angiography', stated as 'null')    </p>    <h3>Performers</h3>    <table class=\"grid\">      <tr>        <td style=\"display: none\">-</td>        <td>          <b>Actor</b>        </td>      </tr>      <tr>        <td style=\"display: none\">*</td>        <td>See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Practitioner-GeneralPractitionerExample)</td>      </tr>    </table>  </blockquote>  <br />  <p>    <b>Generated Narrative: ServiceRequest</b>    <a name=\"ImagingServiceRequestExample\"></a>  </p>  <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">    <p style=\"margin-bottom: 0px\">Resource ServiceRequest &quot;ImagingServiceRequestExample&quot; </p>    <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-imaging-request.html\">Imaging Request</a>    </p>  </div>  <p>    <b>status</b>: completed  </p>  <p>    <b>intent</b>: order  </p>  <p>    <b>code</b>: Imaging requested <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"CodeSystem-cs-procedure-imaging.html\">Procedures</a>#X-Ray) </span>  </p>  <p>    <b>subject</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Patient-PatientExample)  </p>  <p>    <b>encounter</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Encounter-TargetFacilityEncounter)  </p>  <p>    <b>occurrence</b>: 2023-10-06 13:28:17-0500  </p>  <p>    <b>requester</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Practitioner-GeneralPractitionerExample)  </p>  <p>    <b>locationReference</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Location/ProvidersLocationExample)  </p></div>"

* section[sectionInvestigations][+].title = "Laboratory Investigations Summary section"
* section[sectionInvestigations][=].code = $LNC#77597-3
//* section[sectionInvestigations][=].entry[task][+] = Reference(InvestigationsTaskExample)
* section[sectionInvestigations][=].entry[serviceRequest][+] = Reference(InvestigationsServiceRequestExample)
* section[sectionInvestigations][=].text.status = #generated
* section[sectionInvestigations][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">  <p>    <b>Generated Narrative: ServiceRequest</b>    <a name=\"InvestigationsServiceRequestExample\"></a>  </p>  <div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\">    <p style=\"margin-bottom: 0px\">Resource ServiceRequest &quot;InvestigationsServiceRequestExample&quot; </p>    <p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-investigations-request.html\">Investigations Request</a>    </p>  </div>  <p>    <b>status</b>: completed  </p>  <p>    <b>intent</b>: order  </p>  <p>    <b>code</b>: Investigation requested <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> ( <a href=\"CodeSystem-cs-investigation.html\">Investigations</a>#FBC-WBC-th/uL) </span>  </p>  <p>    <b>subject</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Patient-PatientExample)  </p>  <p>    <b>encounter</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Encounter-TargetFacilityEncounter)  </p>  <p>    <b>occurrence</b>: 2023-10-06 13:28:17-0500  </p>  <p>    <b>requester</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Practitioner-GeneralPractitionerExample)  </p>  <p>    <b>locationReference</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Location/ProvidersLocationExample)  </p></div>"

* section[sectionReferrals][+].title = "Referrals Summary section"
* section[sectionReferrals][=].code = $LNC#57133-1
* section[sectionReferrals][=].entry[task][+] = Reference(HHIMSReferralTaskExample)
* section[sectionReferrals][=].entry[serviceRequest][+] = Reference(GeneralReferralServiceRequestExample)
* section[sectionReferrals][=].text.status = #generated
* section[sectionReferrals][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: Task</b><a name=\"HHIMSReferralTaskExample\"></a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Task &quot;HHIMSReferralTaskExample&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-referral-task.html\">Referral Task</a></p></div><p><b>status</b>: completed</p><p><b>intent</b>: order</p><p><b>priority</b>: routine</p><p><b>description</b>: some information regarding the need for the referral request, if any.</p><p><b>focus</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/ServiceRequest/GeneralReferralServiceRequestExample)</p><p><b>for</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Patient-PatientExample)</p><p><b>encounter</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Encounter-TargetFacilityEncounter)</p><p><b>authoredOn</b>: 2023-10-06 13:28:17-0500</p><p><b>requester</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Practitioner-GeneralPractitionerExample)</p><p><b>location</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Location/ProvidersLocationExample)</p></div>"

* section[sectionNotifiableConditions][+].title = "Notifiable Conditions Summary section"
* section[sectionNotifiableConditions][=].code = $LNC#LL625-5
* section[sectionNotifiableConditions][=].entry[communicated][+] = Reference(NotifiableDiseasesNotifiedExample)
* section[sectionNotifiableConditions][=].text.status = #generated
* section[sectionNotifiableConditions][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: Communication</b><a name=\"NotifiableDiseasesNotifiedExample\"></a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Communication &quot;NotifiableDiseasesNotifiedExample&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-notifiable-diseases-notified.html\">Notifiable Diseases Notified</a></p></div><p><b>status</b>: completed</p><p><b>subject</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Patient-PatientExample)</p><p><b>encounter</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Encounter-TargetFacilityEncounter)</p><p><b>sent</b>: 2023-10-06 13:28:17-0500</p></div>"

* section[sectionEncounterLocation][+].title = "List of Encounter Locations section"
* section[sectionEncounterLocation][=].code = $LNC#80412-0
* section[sectionEncounterLocation][=].entry[location][+] = Reference(ProvidersLocationExample)
* section[sectionEncounterLocation][=].text.status = #generated
* section[sectionEncounterLocation][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: Location</b><a name=\"ProvidersLocationExample\"></a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Location &quot;ProvidersLocationExample&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-providers-location.html\">Providers Location</a></p></div><p><b>identifier</b>: Provider location identifier/Location-ID-1, Provider location identifier/Location-ID-2</p><p><b>status</b>: active</p><p><b>name</b>: Name for the location</p><p><b>telecom</b>: <a href=\"tel:+27829999999\">+27829999999</a>, <a href=\"mailto:someone@something.com\">someone@something.com</a>, <a href=\"mailto:someone2@something.com\">someone2@something.com</a></p><p><b>address</b>: 177 Nawala Road Nugegoda Colombo 32350 LK </p><p><b>managingOrganization</b>: See (https://lk-gov-health-hiu.github.io/lk-nehr-fhir-ips/Organization-OrganizationExample)</p></div>"

* section[sectionPractitioners][+].title = "List of Practitioners section"
* section[sectionPractitioners][=].code = $LNC#LA9327-3
* section[sectionPractitioners][=].entry[practitioner][+] = Reference(GeneralPractitionerExample)
* section[sectionPractitioners][=].text.status = #generated
* section[sectionPractitioners][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: Practitioner</b><a name=\"GeneralPractitionerExample\"></a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Practitioner &quot;GeneralPractitionerExample&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-practitioner.html\">Practitioner</a></p></div><p><b>name</b>: Tom Junes Smith </p><p><b>telecom</b>: ph: 27537652509(WORK), <a href=\"mailto:someone@something.org\">someone@something.org</a></p></div>"

* section[sectionDeviceInformation][+].title = "List of Used Devices section"
* section[sectionDeviceInformation][=].code = http://fhir.health.gov.lk/ips/CodeSystem/cs-composition-codes#Device-Information
* section[sectionDeviceInformation][=].entry[device][+] = Reference(DeviceInformationExample)
* section[sectionDeviceInformation][=].text.status = #generated
* section[sectionDeviceInformation][=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative: Device</b><a name=\"DeviceInformationExample\"> </a><a name=\"hcDeviceInformationExample\"> </a></p><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Resource Device &quot;DeviceInformationExample&quot; </p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-device-information.html\">Device Information</a></p></div><p><b>identifier</b>: <code>http://fhir.health.gov.lk/ips/identifier/system-id</code>/OpenMRS-1234-1</p><p><b>status</b>: active</p><p><b>type</b>: Medical record <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"https://browser.ihtsdotools.org/\">SNOMED CT</a>#129465004)</span></p><h3>Versions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Type</b></td><td><b>Value</b></td></tr><tr><td style=\"display: none\">*</td><td>OpenMRS <span style=\"background: LightGoldenRodYellow; margin: 4px; border: 1px solid khaki\"> (<a href=\"CodeSystem-cs-device-classification.html\">Device Classification Codes</a>#OpenMRS)</span></td><td>2.5.0</td></tr></table><p><b>owner</b>: <a href=\"Organization-OrganizationExample.html\">Organization/OrganizationExample</a> &quot;Some Health Facility&quot;</p><p><b>location</b>: <a href=\"Location-ProvidersLocationExample.html\">Location/ProvidersLocationExample</a> &quot;Name for the location&quot;</p></div>"


Instance: RestrictedPatientExample
InstanceOf: RestrictedPatient
Usage: #example
Title: "Patient Identity Cross Reference"
Description: 
    "Is used by the Client Register (CR) to re-identify the patient with his/her corresponding longitudinal clinical record"
* link[+].other = Reference(PatientExample)
* link[=].type = #refer
//* extension[MPI].valueUrl = "http://my_assigning_mpi_authority/identifier/someIdentityValue"

Instance: ProcedureServiceRequestExample
InstanceOf: ProcedureServiceRequest
Usage: #example
Title: "Procedure Request"
Description: "Used to initiate the request for a procedure."
* status = #completed
* intent = #order
* code.coding.code = #Cleaning-and-Dressing
* code.coding.system = "http://fhir.health.gov.lk/ips/CodeSystem/cs-procedure"
* code.text = "Cleaning and Dressing"
* subject = Reference(PatientExample)
* encounter = Reference(TargetFacilityEncounterExample)
* occurrenceDateTime = "2023-10-06T13:28:17-05:00"
* requester = Reference(GeneralPractitionerExample)
* locationReference[+] = Reference(ProvidersLocationExample)

Instance: DeviceInformationExample
InstanceOf: DeviceInformation
Usage: #example
Title: "Device Information"
Description: "Is used to record key information about the system that contributed to the patient's record."
* identifier[SYSTEMID].value = "OpenMRS-1234-1"
* identifier[SYSTEMID].system = "http://fhir.health.gov.lk/ips/identifier/system-id"
* status = #active
* version.type = http://fhir.health.gov.lk/ips/CodeSystem/cs-device-classification#OpenMRS
* version.value = "2.5.0"
* owner = Reference(OrganizationExample)
* location = Reference(ProvidersLocationExample)
* type = $SCT#129465004