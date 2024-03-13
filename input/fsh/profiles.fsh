Profile: ServiceProvider
Parent: OrganizationUvIps
Id: organization
Title: "Organization"
Description: "Organization providing health related services."
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    HIN 1..1
* identifier[HIN].value 1..1
* identifier[HIN].system = "http://fhir.health.gov.lk/ips/identifier/hin"
* identifier[HIN].type.coding.code = #XX
* identifier[HIN].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[HIN].type.text = "Organization identifier"
* name 1..1

Profile: GeneralPractitioner
Parent: PractitionerUvIps
Id: practitioner
Title: "Practitioner"
Description: 
    "Represents the practitioners who participated in the observation."
* name 1..*
* name.given 1..*
* name.family 1..1
* name.prefix 0..* MS
* name.prefix ^definition =
    "reason(s) why this should be supported."
* telecom 1..*

Profile: TargetFacilityEncounter
Parent: Encounter
Id: target-facility-encounter
Title: "Target Facility Encounter" 
Description: "Represents the current facility at which the patient is receiving health services."
* status 1..1
* class 1..1
* subject 1..1
* subject only Reference(IPSPatient)
* period 1..1
* reasonCode 0..* MS
* reasonCode ^definition =
    "reason(s) why this should be supported."
* reasonCode from VSReasonForEncounter (preferred)
* reasonCode ^binding.extension[+].extension[+].url = "purpose"
* reasonCode ^binding.extension[=].extension[=].valueCode = #candidate
* reasonCode ^binding.extension[=].extension[+].url = "valueSet"
* reasonCode ^binding.extension[=].extension[=].valueCanonical = "http://fhir.health.gov.lk/ips/ValueSet/vs-reason-for-encounter"
* reasonCode ^binding.extension[=].extension[+].url = "documentation"
* reasonCode ^binding.extension[=].extension[=].valueMarkdown = "Sri Lanka Proprietary Reasons for the encounter."
* reasonCode ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* location 0..* MS
* location ^definition =
    "reason(s) why this should be supported."
* location.location 1..1
* participant 1..*
* participant.individual 1..1

Profile: ProvidersLocation
Parent: Location
Id: providers-location
Title: "Providers Location"
Description: "Represents the physical location of the provider."
* identifier 0..*
* identifier ^definition =
    "reason(s) why this should be supported."
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    LocationID 0..* MS

* identifier[LocationID] ^definition =
    "reason(s) why this should be supported."
* identifier[LocationID].value 1..1
* identifier[LocationID].system = "http://fhir.health.gov.lk/ips/identifier/provider-location"
* identifier[LocationID].type.coding.code = #PLOC
* identifier[LocationID].type.coding.system = "http://fhir.health.gov.lk/ips/CodeSystem/cs-identifier-types"
* identifier[LocationID].type.text = "Provider location identifier"
* name 1..1
* status 1..1
* telecom 0..* MS
* telecom ^definition =
    "reason(s) why this should be supported."
* address 0..1 MS
* address ^definition =
    "reason(s) why this should be supported."
* managingOrganization 1..1
* managingOrganization only Reference(ServiceProvider)

Profile: NotifiableDiseasesNotified
Parent: Communication
Id: notifiable-diseases-notified
Title: "Notifiable Diseases Notified"
Description: "Represents a message communicated to the practitioner about a patient's encounter."
* status 1..1
* subject 1..1
* subject only Reference(IPSPatient)
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)
* sent 0..1 MS
* sent ^definition =
    "reason(s) why this should be supported."
* sender 0..1 MS
* sender only Reference(DeviceInformation)
* sender ^definition =
    "reason(s) why this should be supported."

Profile: IPSPatient
Parent: PatientUvIps
Id: ips-patient
Title: "Patient"
Description: "Is used to document demographics and other administrative information about an HIMS or HHIMS individual receiving care or other health-related services."
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    NIC 0..* MS and
    PHN 1..1 and
    PPN 1..* and
    Drivers 0..* MS and
    SCN 0..* MS

* identifier[PPN].value 1..1
* identifier[PPN].system = "http://fhir.health.gov.lk/ips/identifier/passport"
* identifier[PPN].type.coding.code = #PPN
* identifier[PPN].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[PPN].type.text = "Passport number"

* identifier[Drivers] ^definition =
    "reason(s) why this should be supported."
* identifier[Drivers].value 1..1
* identifier[Drivers].system = "http://fhir.health.gov.lk/ips/identifier/drivers"
* identifier[Drivers].type.coding.code = #DL
* identifier[Drivers].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[Drivers].type.text = "Driver's license number"

* identifier[SCN] ^definition =
    "reason(s) why this should be supported."
* identifier[SCN].value 1..1
* identifier[SCN].system = "http://fhir.health.gov.lk/ips/identifier/scn"
* identifier[SCN].type from VSIdentifierTypes (extensible)
* identifier[SCN].type.coding.code = #SCN
* identifier[SCN].type.coding.system = "http://fhir.health.gov.lk/ips/CodeSystem/cs-identifier-types"
* identifier[SCN].type.text = "Senior Citizen Number"

* identifier[NIC] ^definition =
    "reason(s) why this should be supported."
* identifier[NIC].value 1..1
* identifier[NIC].system = "http://fhir.health.gov.lk/ips/identifier/nic"
* identifier[NIC].type.coding.code = #NIC
* identifier[NIC].type.coding.system = "http://fhir.health.gov.lk/ips/CodeSystem/cs-identifier-types"
* identifier[NIC].type.text = "National identity number"

* identifier[PHN].value 1..1
* identifier[PHN].system = "http://fhir.health.gov.lk/ips/identifier/phn"
* identifier[PHN].type from VSIdentifierTypes (extensible)
* identifier[PHN].type.coding.code = #PHN
* identifier[PHN].type.coding.system = "http://fhir.health.gov.lk/ips/CodeSystem/cs-identifier-types"
* identifier[PHN].type.text = "Personal Health Number"

* extension contains PatientRegistrationSystem named RegistrationSystemID 1..1

* name 1..*
* name.given 1..*
* name.family 1..1
* name.prefix 0..* MS
* name.prefix ^definition =
    "reason(s) why this should be supported."
* gender 1..1
* birthDate 1..1
* address 0..* MS
* address ^definition =
    "reason(s) why this should be supported."
* address.city 1..1
* address.line 1..*
* address.district 1..1
* address.state 1..1
* address.country 1..1
* telecom 0..* MS
* telecom ^definition =
    "reason(s) why this should be supported."

* generalPractitioner 0..* MS
* generalPractitioner ^definition =
    "reason(s) why this should be supported."
* generalPractitioner only Reference(ServiceProvider or GeneralPractitioner or PractitionerRole)

Profile: GenericObservation
Parent: ObservationResultsUvIps
Id: generic-observation
Title: "Generic Observation"
Description: "Base Observation elements that are inherited by other Observations resources."
* status 1..1
* category 0..1 MS
* category ^definition =
    "reason(s) why this should be supported."
* code 1..1
* subject 1..1
* subject only Reference(IPSPatient)
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)
* effectiveDateTime 1..1
* performer 1..*
* performer only Reference(GeneralPractitioner or ServiceProvider)
* device 1..1
* device only Reference(DeviceInformation)

Profile: RiskBehaviourPhysicalActivity
Parent: GenericObservation
Id: risk-behaviour-physical-activity
Title: "Physical Activity Status Observation"
Description: "Represents the physical status of the patient."
* category 1..1
* category.coding.code = #activity
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* subject only Reference(IPSPatient)
* encounter only Reference(TargetFacilityEncounter)
* code = $SCT#106020009
* code.text = "Physical Activity"
* valueCodeableConcept 1..1
* valueCodeableConcept from VSRiskBehaviourPhysicalActivity (extensible)

Profile: RiskBehaviourTobaccoSmoker
Parent: GenericObservation //ObservationTobaccoUseUvIps
Id: risk-behaviour-tobacco-smoker
Title: "Tobacco Smoker Observation"
Description: "Represents the tobacco smoking status of the patient."
* category 1..1
* category.coding.code = #social-history
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* status 1..1
* code 1..1
* code = $LNC#81229-7
* code.text = "Tobacco smoking status for tobacco smoker"
* subject 1..1
* subject only Reference(IPSPatient)
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)
* effectiveDateTime 1..1
* performer 1..*
* valueCodeableConcept 1..1
* valueCodeableConcept.text 1..1

Profile: BloodPressure
Parent: GenericObservation
Id: blood-pressure
Title: "Blood Pressure Observation"
Description: "Represents the patient's blood pressure."
* subject only Reference(IPSPatient)
* encounter only Reference(TargetFacilityEncounter)
* code = $LNC#85354-9
* code.text = "Blood Pressure"
* category 1..1
* category.coding.code = #vital-signs
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* component 1..*
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.ordered = false
* component ^slicing.description = "Slice based on the type of component.code."
* component contains
    Systolic 0..1 MS and
    Diastolic 0..1 MS

* component[Systolic] ^definition =
    "reason(s) why this should be supported."
* component[Systolic].code.text = "Systolic blood pressure"
* component[Systolic].code = $LNC#8480-6
* component[Systolic].valueQuantity.value 1..1
* component[Systolic].valueQuantity.unit = "mmHg"
* component[Systolic].valueQuantity.system = "http://unitsofmeasure.org"
* component[Systolic].valueQuantity.code = #mm[Hg]

* component[Diastolic] ^definition =
    "reason(s) why this should be supported."
* component[Diastolic].code.text = "Diastolic blood pressure"
* component[Diastolic].code = $LNC#8462-4
* component[Diastolic].valueQuantity.value 1..1
* component[Diastolic].valueQuantity.unit = "mmHg"
* component[Diastolic].valueQuantity.system = "http://unitsofmeasure.org"
* component[Diastolic].valueQuantity.code = #mm[Hg]

Profile: Weight
Parent: GenericObservation
Id: weight
Title: "Patient Weight Observation"
Description: "Represents the patient's weight."
* subject only Reference(IPSPatient)
* category 1..1
* category.coding.code = #vital-signs
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = $LNC#29463-7
* code.text = "Body Weight"
* valueQuantity.value 1..1
* valueQuantity.unit = "kg"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #kg

Profile: Height
Parent: GenericObservation
Id: height
Title: "Patient Height Observation"
Description: "Represents the patient's height."
* subject only Reference(IPSPatient)
* encounter only Reference(TargetFacilityEncounter)
* category 1..1
* category.coding.code = #vital-signs
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = $LNC#8302-2
* code.text = "Body Height"
* valueQuantity.value 1..1
* valueQuantity.unit = "cm"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #cm

Profile: BMI
Parent: GenericObservation
Id: bmi
Title: "Patient BMI Observation"
Description: "Represents the patient's BMI."
* subject only Reference(IPSPatient)
* encounter only Reference(TargetFacilityEncounter)
* category 1..1
* category.coding.code = #vital-signs
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = $LNC#39156-5
* code.text = "Body mass index (BMI)"
* valueQuantity.value 1..1
* valueQuantity.unit = "kg/m2"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #kg/m2
* derivedFrom 0..*

Profile: RandomBloodSugar
Parent: ObservationResultsLaboratoryUvIps
Id: random-blood-sugar
Title: "Random Blood Sugar Observation"
Description: "Represents the patient's RBS results."
* subject only Reference(IPSPatient)
* encounter only Reference(TargetFacilityEncounter)
* category 1..1
* category.coding.code = #laboratory
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = $LNC#15074-8
* code.text = "Glucose"
* valueQuantity.value 1..1
* valueQuantity.unit = "mmol/L"
* valueQuantity.code = #mmol/L
* interpretation 0..* MS
* interpretation ^definition =
    "reason(s) why this should be supported."
* referenceRange 0..* MS
* referenceRange ^definition =
    "reason(s) why this should be supported."

* performer 1..*
* performer only Reference(GeneralPractitioner or ServiceProvider)
* device 1..1
* device only Reference(DeviceInformation)

Profile: FastingBloodSugar
Parent: ObservationResultsLaboratoryUvIps
Id: fasting-blood-sugar
Title: "Fasting Blood Sugar Observation"
Description: "Represents the patient's FBS results."
* subject only Reference(IPSPatient)
* encounter only Reference(TargetFacilityEncounter)
* category 1..1
* category.coding.code = #laboratory
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = $LNC#76629-5
* code.text = "Fasting glucose"
* valueQuantity.value 1..1
* valueQuantity.unit = "mmol/L"
* valueQuantity.code = #mmol/L
* interpretation 0..* MS
* interpretation ^definition =
    "reason(s) why this should be supported."
* referenceRange 0..* MS
* referenceRange ^definition =
    "reason(s) why this should be supported."

* performer 1..*
* performer only Reference(GeneralPractitioner or ServiceProvider)
* device 1..1
* device only Reference(DeviceInformation)

Profile: TotalCholesterol
Parent: ObservationResultsLaboratoryUvIps
Id: total-cholesterol
Title: "Total Cholesterol Observation"
Description: "Represents the patient's total cholesterol results."
* subject only Reference(IPSPatient)
* encounter only Reference(TargetFacilityEncounter)
* category 1..1
* category.coding.code = #laboratory
* category.coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* code = $LNC#2093-3
* code.text = "Cholesterol"
* valueQuantity.value 1..1
* valueQuantity.unit = "mmol/L"
* valueQuantity.code = #mmol/L
* interpretation 0..* MS
* interpretation ^definition =
    "reason(s) why this should be supported."
* referenceRange 0..* MS
* referenceRange ^definition =
    "reason(s) why this should be supported."

* performer 1..*
* performer only Reference(GeneralPractitioner or ServiceProvider)
* device 1..1
* device only Reference(DeviceInformation)

Profile: CVDRiskCategory
Parent: RiskAssessment
Id: cvd-risk-category
Title: "Cardiovascular Risk Assessment"
Description: "Represents the patient's CVD risk score."
* status 1..1
* subject 1..1
* subject only Reference(IPSPatient)
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)
* occurrenceDateTime 1..1
* code 1..1
* code = $SCT#441829007
* performer 1..1
* performer only Reference(GeneralPractitioner or DeviceInformation)
* basis 1..*
* prediction 1..*
* prediction.outcome 1..1
* prediction.probabilityDecimal 0..1 MS
* prediction.qualitativeRisk 1..1
* prediction.qualitativeRisk from VSCVDRiskCategory (extensible)
* prediction.probabilityDecimal ^definition =
    "reason(s) why this should be supported."
* prediction.whenRange 1..1

Profile: GenericTask
Parent: Task
Id: generic-task
Title: "Generic Task"
Description: "Base Task elements that are inherited by other Task resources."
* status 1..1
* intent 1..1
* for 1..1
* for only Reference(IPSPatient)
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)
* authoredOn 1..1
* requester 1..1
* requester only Reference(GeneralPractitioner or DeviceInformation)
* location 1..1
* location only Reference(ProvidersLocation)
* executionPeriod 0..1 MS
* executionPeriod ^definition =
    "reason(s) why this should be supported."

Profile: ReferralTask
Parent: GenericTask
Id: referral-task
Title: "Referral Task"
Description: "Is primarily used to track the progress of a patient's referral."
* for only Reference(IPSPatient)
* focus 1..1
* focus only Reference(GeneralReferralServiceRequest)
* priority 0..1 MS
* priority ^definition =
    "reason(s) why this should be supported."
* description 0..1 MS
* description ^definition =
    "reason(s) why this should be supported."

Profile: GenericServiceRequest
Parent: ServiceRequest
Id: generic-service-request
Title: "Generic Service Request"
Description: "Base ServiceRequest elements that are inherited by other ServiceRequest resources."
* status 1..1
* intent 1..1
* code 1..1
* code from http://hl7.org/fhir/ValueSet/procedure-code (example)
* subject 1..1
* subject only Reference(IPSPatient)
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)
* requester 1..1
* requester only Reference(GeneralPractitioner or ServiceProvider or DeviceInformation)
* reasonCode 0..* MS
* reasonCode ^definition =
    "reason(s) why this should be supported."
* locationReference 0..* MS
* locationReference ^definition =
    "reason(s) why this should be supported."


Profile: GeneralReferralServiceRequest
Parent: GenericServiceRequest
Id: general-referral-request
Title: "General Referral Request"
Description: "Used to initiate a request for a referral."
* code from http://hl7.org/fhir/ValueSet/procedure-code (extensible)
* code = $SCT#3457005
* code.text = "Patient referral"
* occurrenceDateTime 1..1
* subject only Reference(IPSPatient)
* encounter only Reference(TargetFacilityEncounter)

Profile: FollowUpPlanServiceRequest
Parent: GenericServiceRequest
Id: follow-up-plan
Title: "Referral Request For Follow-up Plan"
Description: "Used to initiate a referral request for a Follow-up Plan."
* subject only Reference(IPSPatient)
* encounter only Reference(TargetFacilityEncounter)
* code from VSFollowUpPlan (extensible)
* reasonCode from VSFollowUpReasons (extensible)
* occurrenceTiming 1..1
* occurrenceTiming.repeat.duration 1..1
* occurrenceTiming.repeat.durationUnit 1..1
* occurrenceTiming.repeat.count 1..1
* occurrenceTiming.repeat.count = 1

Profile: FollowUpAtHLC 
Parent: CarePlan
Id: follow-up-at-hlc
Title: "Follow-up at HLC"
Description: "Used to record the follow-up event for the patient at HLC."
* status 1..1
* intent 1..1
* subject 1..1
* subject only Reference(IPSPatient)
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)
* period 1..1
* contributor 1..*
* contributor only Reference(IPSPatient or GeneralPractitioner or ServiceProvider or DeviceInformation)
* activity 1..* 
* activity.reference 1..1
* activity.reference only Reference(FollowUpPlanServiceRequest)
* encounter only Reference(TargetFacilityEncounter)

Profile: MedicalHistory
Parent: ConditionUvIps
Id: medical-history
Title: "Medical History"
Description: "Represents previous, pre-existing and new conditions for the patient."
* clinicalStatus 1..1
* verificationStatus 0..1 MS
* verificationStatus ^definition =
    "reason(s) why this should be supported."
* category 0..*
* category ^definition =
    "reason(s) why this should be supported."
* code 1..1
* code from VSMedicalConditions (extensible)
* subject 1..1
* subject only Reference(IPSPatient)
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)
* recorder 0..1 MS
* recorder only Reference(GeneralPractitioner or IPSPatient)
* recorder ^definition =
    "reason(s) why this should be supported."
* asserter 0..1 MS
* asserter only Reference(GeneralPractitioner or IPSPatient)
* asserter ^definition =
    "reason(s) why this should be supported."
* recordedDate 1..1

Profile: NoMedicalHistory
Parent: ConditionUvIps
Id: no-medical-history
Title: "Medical History"
Description: "Indicates that there is no information available about the subject's health problems or disabilities."
* clinicalStatus 1..1
* code 1..1
* code = http://hl7.org/fhir/uv/ips/CodeSystem/absent-unknown-uv-ips#no-problem-info
* subject 1..1
* subject only Reference(IPSPatient)
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)
* recordedDate 1..1

Profile: Allergies
Parent: AllergyIntoleranceUvIps
Id: allergy-intolerance
Title: "Allergy Intolerance"
Description: "Used to represent the patient's allergies."
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)
* code 0..1 MS
* code ^definition =
    "reason(s) why this should be supported."
* code.text 1..1
* clinicalStatus 0..1 MS
* clinicalStatus ^definition =
    "reason(s) why this should be supported."
* verificationStatus 0..1 MS
* verificationStatus ^definition =
    "reason(s) why this should be supported."
* patient 1..1
* patient only Reference(IPSPatient)
* onsetDateTime 0..1 MS
* onsetDateTime ^definition =
    "reason(s) why this should be supported."
* recorder 0..1 MS
* recorder only Reference(GeneralPractitioner or IPSPatient)
* recorder ^definition =
    "reason(s) why this should be supported."
* type 1..1

Profile: NoAllergies
Parent: AllergyIntoleranceUvIps
Id: no-allergy-intolerance
Title: "Allergy Intolerance"
Description: "This is to indicate that there is no information avaible for allergies."
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)
* code 1..1
* code = http://hl7.org/fhir/uv/ips/CodeSystem/absent-unknown-uv-ips#no-allergy-info
* code.text 1..1
* clinicalStatus 1..1
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#inactive
* patient 1..1
* patient only Reference(IPSPatient)
* type 1..1

Profile: MedicationRequests
Parent: MedicationRequestIPS
Id: medication-request
Title: "Medication Request"
Description: "This is to record requests for medication that are prescribed to a patient or for Non-MDS medicines."
* authoredOn 1..1
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    RequestID 1..1
* identifier[RequestID].value 1..1
* identifier[RequestID].system = "http://fhir.health.gov.lk/ips/identifier/medication"
* identifier[RequestID].type.coding.code = #FILL
* identifier[RequestID].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[RequestID].type.coding.display = "Filler Identifier"
* identifier[RequestID].type.text = "Prescription identifier"

* status 1..1
* intent 1..1
* subject 1..1
* subject only Reference(IPSPatient)
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)
* medicationCodeableConcept 1..1
* medicationCodeableConcept from VSMedicationNamesForMSD (extensible)
* medicationCodeableConcept ^binding.extension[+].extension[+].url = "purpose"
* medicationCodeableConcept ^binding.extension[=].extension[=].valueCode = #extensible
* medicationCodeableConcept ^binding.extension[=].extension[+].url = "valueSet"
* medicationCodeableConcept ^binding.extension[=].extension[=].valueCanonical = "http://fhir.health.gov.lk/ips/ValueSet/vs-medication-name-non-msd"
* medicationCodeableConcept ^binding.extension[=].extension[+].url = "documentation"
* medicationCodeableConcept ^binding.extension[=].extension[=].valueMarkdown = "A list of medications that typically are not prescribed for collection at the pharamcy a.k.a. Non-Medical Supplies."
* medicationCodeableConcept ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"

* dosageInstruction.doseAndRate.doseQuantity 1..1
* dosageInstruction.timing obeys MedicationRequest-DosageInstruction-1
* dosageInstruction.timing.repeat.count 1..1
* dosageInstruction.timing.repeat.duration 1..1
* dosageInstruction.timing.repeat.durationUnit 1..1
* dosageInstruction.timing.repeat.period 0..1 MS
* dosageInstruction.timing.repeat.period ^definition =
    "reason(s) why this should be supported."
* dosageInstruction.timing.repeat.periodUnit 0..1 MS
* dosageInstruction.timing.repeat.periodUnit ^definition =
    "reason(s) why this should be supported."
* dosageInstruction.timing.repeat.frequency 0..1 MS
* dosageInstruction.timing.repeat.frequency ^definition =
    "reason(s) why this should be supported."
* dosageInstruction.timing.code 0..1 MS
* dosageInstruction.timing.code ^definition =
    "reason(s) why this should be supported."
* dosageInstruction.timing.code from VSDrugFrequency (preferred)
* note 0..* MS
* note ^definition =
    "reason(s) why this should be supported."
* dispenseRequest.quantity 0..1 MS
* dispenseRequest.quantity ^definition =
    "reason(s) why this should be supported."
* requester 0..1 MS
* requester only Reference(GeneralPractitioner or IPSPatient or DeviceInformation)
* requester ^definition =
    "reason(s) why this should be supported."
* performer 0..1 MS
* performer only Reference(GeneralPractitioner or IPSPatient or DeviceInformation)
* performer ^definition =
    "reason(s) why this should be supported."
* recorder 0..1 MS
* recorder only Reference(GeneralPractitioner)
* recorder ^definition =
    "reason(s) why this should be supported."

Profile: NoPrescriptions
Parent: MedicationRequestIPS
Id: no-medication-requested
Title: "Medication Request"
Description: "This is to indicate that the patient has not received any prescriptions for drugs."
* status 1..1
* status = #completed
* intent 1..1
* intent = #order
* subject 1..1
* subject only Reference(IPSPatient)
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)
* note 0..* MS
* note ^definition =
    "reason(s) why this should be supported."
* medicationCodeableConcept 1..1
* medicationCodeableConcept = http://hl7.org/fhir/uv/ips/CodeSystem/absent-unknown-uv-ips#no-medication-info

/*Profile: Procedures
Parent: ProcedureUvIps
Id: procedure
Title: "Procedures"
Description: "This represents the procedure that was performed on a patient."
* basedOn 0..* MS
* basedOn ^definition =
    "reason(s) why this should be supported."
* status 1..1
* category 0..1 MS
* category ^definition =
    "reason(s) why this should be supported."
* code 1..1
* code from VSProcedures (extensible)
* subject 1..1
* subject only Reference(IPSPatient)
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)
* performedDateTime 1..1
* recorder 0..1 MS
* recorder only Reference(GeneralPractitioner or IPSPatient)
* recorder ^definition =
    "reason(s) why this should be supported."
* asserter 0..1 MS
* asserter only Reference(GeneralPractitioner or IPSPatient)
* asserter ^definition =
    "reason(s) why this should be supported."
* performer 1..*
* performer.actor 1..1
* performer.actor only Reference(GeneralPractitioner or IPSPatient)
* location 0..1 MS
* location ^definition =
    "reason(s) why this should be supported."
*/

/*Profile: Injections
Parent: MedicationAdministration
Id: injection
Title: "Injections"
Description: "Used to represent medication that is administered intravenously."
* status 1..1
* medicationCodeableConcept 1..1
* medicationCodeableConcept from http://hl7.org/fhir/ValueSet/medication-codes (example)
* medicationCodeableConcept.text 1..1
* subject 1..1
* subject only Reference(IPSPatient)
* context 1..1
* context only Reference(TargetFacilityEncounter)
* effectiveDateTime 1..1
* performer 1..*
* performer.actor 1..1
* performer.actor only Reference(GeneralPractitioner or IPSPatient)
* dosage 1..1
* dosage.dose 1..1
* dosage.route 1..1
* dosage.route from http://hl7.org/fhir/ValueSet/route-codes (example)
* dosage.route.text 1..1*/

Profile: DrugDispensation
Parent: MedicationDispense
Id: drug-dispensation
Title: "Drug Dispensation"
Description: "Used to represent dispensed medication for a patient."
* status 1..1
* subject 1..1
* subject only Reference(IPSPatient)
* context 1..1
* context only Reference(TargetFacilityEncounter)
* performer 0..1 MS
* performer.actor 1..1
* performer.actor only Reference(GeneralPractitioner or IPSPatient or DeviceInformation)
* performer ^definition =
    "reason(s) why this should be supported."
* location 0..1 MS
* location only Reference(ProvidersLocation)
* location ^definition =
    "reason(s) why this should be supported."
* authorizingPrescription 1..*
* authorizingPrescription only Reference(MedicationRequests)
* whenHandedOver 1..1
* receiver 1..*
* receiver only Reference(GeneralPractitioner or IPSPatient)
* medicationCodeableConcept 1..1
* medicationCodeableConcept from VSMedicationNamesForMSD (extensible)

Profile: InvestigationsServiceRequest
Parent: GenericServiceRequest
Id: investigations-request
Title: "Investigations Request"
Description: "Used to initiate a request for an investigation."
* code from VSInvestigations (extensible)
* occurrenceDateTime 1..1
* subject only Reference(IPSPatient)
* encounter only Reference(TargetFacilityEncounter)
* authoredOn 1..1

/*Profile: InvestigationsTask
Parent: GenericTask
Id: investigations-task
Title: "Investigations Task"
Description: "Is primarily used to track the progress of an investigations request."
* basedOn 1..*
* basedOn only Reference(InvestigationsServiceRequest)
* priority 0..1 MS
* priority ^definition =
    "reason(s) why this should be supported."
* description 0..1 MS
* description ^definition =
    "reason(s) why this should be supported."
* executionPeriod 1..1
* for only Reference(IPSPatient)
* encounter only Reference(TargetFacilityEncounter)*/

Profile: ImagingServiceRequest
Parent: GenericServiceRequest
Id: imaging-request
Title: "Imaging Request"
Description: "Used to initiate the request for imaging to be done."
* code from VSImagingProcedures (extensible)
* occurrenceDateTime 1..1
* subject only Reference(IPSPatient)
* encounter only Reference(TargetFacilityEncounter)
* authoredOn 1..1

/*Profile: ImagingTask
Parent: GenericTask
Id: imaging-task
Title: "Imaging Task"
Description: "Is primarily used to track the progress of an imaging request."
* basedOn 1..*
* basedOn only Reference(ImagingServiceRequest)
* priority 0..1 MS
* priority ^definition =
    "reason(s) why this should be supported."
* description 0..1 MS
* description ^definition =
    "reason(s) why this should be supported."
* executionPeriod 1..1
* encounter only Reference(TargetFacilityEncounter)
* for only Reference(IPSPatient)*/

Profile: Imaging
Parent: ImagingStudyUvIps
Id: imaging-study
Title: "Imaging Study"
Description: "Used to represent the content or results of a imaging study."
* status 1..1
* subject 1..1
* subject only Reference(IPSPatient)
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)
* started 0..1 MS
* started ^definition =
    "reason(s) why this should be supported."
* basedOn 1..1
* referrer 0..1 MS
* referrer only Reference(GeneralPractitioner)
* referrer ^definition =
    "reason(s) why this should be supported."
* description 0..1 MS
* description ^definition =
    "reason(s) why this should be supported."
* location 0..1 MS
* location only Reference(ProvidersLocation)
* location ^definition =
    "reason(s) why this should be supported."
* series 1..*
* series.uid 1..1
* series.instance 1..*
* series.modality 1..1
* series.description 0..1 MS
* series.description ^definition =
    "reason(s) why this should be supported."
* series.started 0..1 MS
* series.started ^definition =
    "reason(s) why this should be supported."
* series.performer 1..*
* series.performer.actor 1..1
* series.performer.actor only Reference(GeneralPractitioner or IPSPatient or DeviceInformation)
//* procedureReference 1..1
//* procedureReference only Reference(Procedures)

Profile: HIMSComposition
Parent: CompositionUvIps
Id: hims-composition
Title: "HIMS Composition"
Description: "Clinical document used to represent the International Patient Summary (IPS) data set for HIMS"
* identifier.value 1..1
* identifier.system 1..1
* identifier.system = "http://fhir.health.gov.lk/ips/identifier/hims-ips-document"
* status 1..1
* subject 1..1
* subject only Reference(IPSPatient)
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)
* type 1..1
* date 1..1
* author 1..*
* author only Reference(GeneralPractitioner or ServiceProvider or DeviceInformation)
* title 1..1
* section 1..*
* section ^slicing.discriminator[+].type = #pattern
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.rules = #open
* section ^slicing.ordered = false
* section ^slicing.description = "An entry resource included in HIMS IPS document bundle resource."
* section contains
    sectionPractitioners 0..1 MS and
    sectionPhysicalActivity 0..1 MS and
    sectionRiskAssessment 0..1 MS and
    sectionReferrals 0..1 MS and
    sectionEncounterLocation 0..1 MS and
    sectionDeviceInformation 0..1 MS

* section[sectionPractitioners] ^definition =
    "reason(s) why this should be supported."

* insert CompositionEntry(Practitioner, GeneralPractitioner, sectionPractitioners, $LNC#LA9327-3, List of Practitioners section, practitioner, 
    Practitioners relevant for the scope of the patient summary, This lists the practitioners relevant for the scope of the patient summary., 0..*)

* insert CompositionEntry(Observation, RiskBehaviourPhysicalActivity, sectionPhysicalActivity, $LNC#77242-6, Physical Activities Summary section, activity, 
    Physical Activities relevant for the scope of the patient summary, This lists the physical activities relevant for the scope of the patient summary., 0..*)

* insert CompositionEntry(RiskAssessment, CVDRiskCategory, sectionRiskAssessment, $LNC#75492-9, Risk Assessments Summary section, risk, 
    Risk Assessments relevant for the scope of the patient summary, This lists the risk assessments relevant for the scope of the patient summary., 0..*)

* insert CompositionEntry(ServiceRequest, FollowUpPlanServiceRequest, sectionReferrals, $LNC#57133-1, Referrals Summary section, serviceRequest, 
    Referrals relevant for the scope of the patient summary, This lists the referrals relevant for the scope of the patient summary., 0..*)

* insert CompositionEntry(Location, ProvidersLocation, sectionEncounterLocation, $LNC#80412-0, List of Encounter Locations section, location, 
    Encounter Locations relevant for the scope of the patient summary, This lists the encounter locations relevant for the scope of the patient summary., 0..*)

* insert CompositionEntry(Device, DeviceInformation, sectionDeviceInformation, http://fhir.health.gov.lk/ips/CodeSystem/cs-composition-codes#Device-Information, List of Used Devices section, device, 
    Devices relevant for the scope of the patient summary, This lists the devices relevant for the scope of the patient summary., 0..*)

Profile: HHIMSComposition
Parent: CompositionUvIps
Id: hhims-composition
Title: "HHIMS Composition"
Description: "Clinical document used to represent the International Patient Summary (IPS) data set for HHIMS"
* identifier.value 1..1
* identifier.system 1..1
* identifier.system = "http://fhir.health.gov.lk/ips/identifier/hhims-ips-document"
* status 1..1
* subject 1..1
* subject only Reference(IPSPatient)
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)
* type 1..1
* date 1..1
* author 1..*
* author only Reference(GeneralPractitioner or ServiceProvider or DeviceInformation)
* title 1..1
* section 1..*
* section ^slicing.discriminator[+].type = #pattern
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.rules = #open
* section ^slicing.ordered = false
* section ^slicing.description = "An entry resource included in HHIMS IPS document bundle resource."
* section contains
 //   sectionInjections 0..1 MS and
    sectionImaging 0..1 MS and
    sectionProcedures 0..1 MS and
    sectionInvestigations 0..1 MS and
    sectionReferrals 0..1 MS and
    sectionNotifiableConditions 0..1 MS and
    sectionEncounterLocation 0..1 MS and
    sectionPractitioners 0..1 MS and
    sectionDeviceInformation 0..1 MS

//* section[sectionInjections] ^definition =
//    "reason(s) why this should be supported."
* section[sectionImaging] ^definition =
    "reason(s) why this should be supported."
* section[sectionProcedures] ^definition =
    "reason(s) why this should be supported."
* section[sectionInvestigations] ^definition =
    "reason(s) why this should be supported."
* section[sectionReferrals] ^definition =
    "reason(s) why this should be supported."
* section[sectionNotifiableConditions] ^definition =
    "reason(s) why this should be supported."
* section[sectionEncounterLocation] ^definition =
    "reason(s) why this should be supported."
* section[sectionPractitioners] ^definition =
    "reason(s) why this should be supported."

//* insert CompositionEntry(MedicationAdministration, Injections, sectionInjections, $LNC#95492-5, Intravenous Injections Summary section, injection, 
  //  Injections relevant for the scope of the patient summary, This lists the injections relevant for the scope of the patient summary., 0..*)

* insert CompositionEntry(ImagingStudy or Task or ServiceRequest, Imaging, sectionImaging, $LNC#97684-5, Imaging Summary section, image, 
    Images relevant for the scope of the patient summary, This lists the images relevant for the scope of the patient summary., 0..*)
//* insert EntryToSection(ImagingTask, sectionImaging, task, 0..*)
* insert EntryToSection(ImagingServiceRequest, sectionImaging, serviceRequest, 0..*)

* insert EntryToSection(DrugDispensation, sectionMedications, medicationDispense, 0..*)

* insert CompositionEntry(Task or ServiceRequest, InvestigationsServiceRequest, sectionInvestigations, $LNC#77597-3, Laboratory Investigations Summary section, serviceRequest, 
    Investigatons relevant for the scope of the patient summary, This lists the investigations relevant for the scope of the patient summary., 0..*)
//* insert EntryToSection(InvestigationsTask, sectionInvestigations, task, 0..*)

* insert CompositionEntry(Task or ServiceRequest, GeneralReferralServiceRequest, sectionReferrals, $LNC#57133-1, Referrals Summary section, serviceRequest, 
    Referrals relevant for the scope of the patient summary, This lists the referrals relevant for the scope of the patient summary., 0..*)
* insert EntryToSection(ReferralTask, sectionReferrals, task, 0..*)

* insert CompositionEntry(Communication, NotifiableDiseasesNotified, sectionNotifiableConditions, $LNC#LL625-5, Notifiable Conditions Summary section, communicated, 
    Notifiable Conditions relevant for the scope of the patient summary, This lists the notifiable conditions relevant for the scope of the patient summary., 0..*)

* insert CompositionEntry(Location, ProvidersLocation, sectionEncounterLocation, $LNC#80412-0, List of Encounter Locations section, location, 
    Encounter Locations relevant for the scope of the patient summary, This lists the encounter locations relevant for the scope of the patient summary., 0..*)

* insert CompositionEntry(Practitioner, GeneralPractitioner, sectionPractitioners, $LNC#LA9327-3, List of Practitioners section, practitioner, 
    Practitioners relevant for the scope of the patient summary, This lists the practitioners relevant for the scope of the patient summary., 0..*)

* insert CompositionEntry(ServiceRequest, ProcedureServiceRequest, sectionProcedures, http://fhir.health.gov.lk/ips/CodeSystem/cs-composition-codes#Procedures-History, Procedures Summary Section, serviceRequest, 
    Procedures relevant for the scope of the patient summary, This lists the procedures relevant for the scope of the patient summary., 1..*)

* insert CompositionEntry(Device, DeviceInformation, sectionDeviceInformation, http://fhir.health.gov.lk/ips/CodeSystem/cs-composition-codes#Device-Information, List of Used Devices section, device, 
    Devices relevant for the scope of the patient summary, This lists the devices relevant for the scope of the patient summary., 0..*)

Profile: RestrictedPatient
Parent: Patient
Id: patient-identity-cross-reference
Title: "Patient Identity Cross Reference"
Description: 
    "Is used by the Client Register (CR) to re-identify the patient with his/her corresponding longitudinal clinical record"
* identifier 0..0
* name 0..0
* active 0..0
* telecom 0..0
* gender 0..0
* birthDate 0..0
* deceased[x] 0..0
* address 0..0
* maritalStatus 0..0
* multipleBirth[x] 0..0
* photo 0..0
* contact 0..0
* communication 0..0
* generalPractitioner 0..0
* managingOrganization 0..0
* contained 0..0
* link 1..
* link.other only Reference(IPSPatient)
* link.type = #refer
//* extension contains MasterPatientIndex named MPI 1..*

Profile: ProcedureServiceRequest
Parent: GenericServiceRequest
Id: procedures-request
Title: "Procedure Request"
Description: "Used to initiate the request for a procedure."
* code from VSProcedures (extensible)
* occurrenceDateTime 1..1
* subject only Reference(IPSPatient)
* encounter only Reference(TargetFacilityEncounter)

Profile: DeviceInformation
Parent: Device
Id: device-information
Title: "Device Information"
Description: "Is used to record key information about the system that contributed to the patient's record."
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    SYSTEMID 1..*

* identifier[SYSTEMID].value 1..1
* identifier[SYSTEMID].system = "http://fhir.health.gov.lk/ips/identifier/system-id"

* status 1..1
* type 1..1
* owner 1..1
* owner only Reference(ServiceProvider)
* location 1..1
* location only Reference(ProvidersLocation)
* version 1..*
* version.type 1..1
* version.type from VSDeviceClassificationCodes (extensible)
* version.value 1..1