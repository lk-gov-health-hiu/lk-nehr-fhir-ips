Profile: HIMSTransactionalBundle
Parent: Bundle
Id: hims-transactional-bundle
Title: "HIMS Transactional Bundle"
Description: "This bundle contains all of the HIMS resources for transactional requests."
* type = #transaction
* identifier 1..1
* identifier.value 1..1
* identifier.system 1..1
* identifier.system = "http://fhir.health.gov.lk/ips/identifier/hims-transactional"
* timestamp 1..1
* entry 1..*
* entry ^definition =
  "reason(s) why this should be supported."
* entry ^slicing.discriminator[+].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false
* entry ^slicing.description = "An entry resource included in the HIMS full transactional bundle resource."
* entry contains
    patient 1..1 and 
    serviceRequest-follow-up-plan 0..* MS and
    encounters 1..* and
    risk-assessment-cardiovascular-disease 0..* MS and
    encounterLocations 0..* MS and
    careplan-hlc-follow-up 0..* MS and
    observation-physical-activity 0..* MS and
    observation-tobacco-smoker 0..* MS and
    observation-blood-pressure 0..* MS and
    observation-weight 0..* MS and
    observation-height 0..* MS and
    observation-bmi 0..* MS and
    observation-random-blood-sugar 0..* MS and
    observation-fasting-blood-sugar 0..* MS and
    observation-cholesterol 0..* MS and
    practitioner 0..* MS and
    condition-medical-history 0..* MS and
    organization 0..* MS and
    allergyintolerance 0..* MS and
    medicationrequest 0..* MS and
    device-information 0..* MS

* entry[serviceRequest-follow-up-plan] ^definition =
    "reason(s) why this should be supported."
* entry[practitioner] ^definition =
    "reason(s) why this should be supported."
* entry[risk-assessment-cardiovascular-disease] ^definition =
    "reason(s) why this should be supported."
* entry[careplan-hlc-follow-up] ^definition =
    "reason(s) why this should be supported."
* entry[encounterLocations] ^definition =
    "reason(s) why this should be supported."

* entry[observation-physical-activity] ^definition =
    "reason(s) why this should be supported."
* entry[observation-tobacco-smoker] ^definition =
    "reason(s) why this should be supported."
* entry[observation-blood-pressure] ^definition =
    "reason(s) why this should be supported."
* entry[observation-weight] ^definition =
    "reason(s) why this should be supported."
* entry[observation-height] ^definition =
    "reason(s) why this should be supported."
* entry[observation-bmi] ^definition =
    "reason(s) why this should be supported."
* entry[observation-random-blood-sugar] ^definition =
    "reason(s) why this should be supported."
* entry[observation-fasting-blood-sugar] ^definition =
    "reason(s) why this should be supported."
* entry[observation-cholesterol] ^definition =
    "reason(s) why this should be supported."
* entry[condition-medical-history] ^definition =
    "reason(s) why this should be supported."
* entry[organization] ^definition =
    "reason(s) why this should be supported."
* entry[allergyintolerance] ^definition =
    "reason(s) why this should be supported."
* entry[medicationrequest] ^definition =
    "reason(s) why this should be supported."
* entry[device-information] ^definition =
    "reason(s) why this should be supported."

* entry[patient]
  * fullUrl 1..1
  * resource 1..
  * resource only IPSPatient

* entry[encounters]
  * fullUrl 1..1
  * resource 1..
  * resource only TargetFacilityEncounter

* insert BundleEntry(GeneralPractitioner, practitioner, reason why this should be supported.)
* insert BundleEntry(FollowUpPlanServiceRequest, serviceRequest-follow-up-plan, reason why this should be supported.)
* insert BundleEntry(CVDRiskCategory, risk-assessment-cardiovascular-disease, reason why this should be supported.)
* insert BundleEntry(ProvidersLocation, encounterLocations, reason why this should be supported.)
* insert BundleEntry(FollowUpAtHLC, careplan-hlc-follow-up, reason why this should be supported.)
* insert BundleEntry(RiskBehaviourPhysicalActivity, observation-physical-activity, reason why this should be supported.)
* insert BundleEntry(RiskBehaviourTobaccoSmoker, observation-tobacco-smoker, reason why this should be supported.)
* insert BundleEntry(BloodPressure, observation-blood-pressure, reason why this should be supported.)
* insert BundleEntry(Weight, observation-weight, reason why this should be supported.)
* insert BundleEntry(Height, observation-height, reason why this should be supported.)
* insert BundleEntry(BMI, observation-bmi, reason why this should be supported.)
* insert BundleEntry(RandomBloodSugar, observation-random-blood-sugar, reason why this should be supported.)
* insert BundleEntry(FastingBloodSugar, observation-fasting-blood-sugar, reason why this should be supported.)
* insert BundleEntry(TotalCholesterol, observation-cholesterol, reason why this should be supported.)
* insert BundleEntry(MedicalHistory, condition-medical-history, reason why this should be supported.)
* insert BundleEntry(Organization, organization, reason why this should be supported.)
* insert BundleEntry(NoAllergies, allergyintolerance, reason why this should be supported.)
* insert BundleEntry(NoPrescriptions, medicationrequest, reason why this should be supported.)
* insert BundleEntry(DeviceInformation, device-information, reason why this should be supported.)