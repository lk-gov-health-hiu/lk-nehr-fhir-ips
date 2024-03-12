Profile: HIMSIPSBundle
Parent: BundleUvIps
Id: hims-ips-bundle
Title: "HIMS IPS Bundle"
Description: "This bundle contains all of the HIMS resources for IPS."
* identifier 1..1
* identifier.value 1..1
* identifier.system 1..1
* identifier.system = "http://fhir.health.gov.lk/ips/identifier/hims-ips"
* timestamp 1..1
* entry contains
    serviceRequests 0..* MS and
    encounters 1..* and
    risk-assessment-cardiovascular-disease 0..* MS and
    encounterLocations 0..* MS and
    careplan-hlc-follow-up 0..* MS

* entry[serviceRequests] ^definition =
    "reason(s) why this should be supported."
* entry[practitioner] ^definition =
    "reason(s) why this should be supported."
* entry[encounters] ^definition =
    "reason(s) why this should be supported."
* entry[risk-assessment-cardiovascular-disease] ^definition =
    "reason(s) why this should be supported."
* entry[careplan-hlc-follow-up] ^definition =
    "reason(s) why this should be supported."
* entry[encounterLocations] ^definition =
    "reason(s) why this should be supported."
* entry[condition] ^definition =
    "reason(s) why this should be supported."

* insert BundleEntry(GeneralPractitioner, practitioner, reason why this should be supported.)
* insert BundleEntry(TargetFacilityEncounter, encounters, reason why this should be supported.)
* insert BundleEntry(FollowUpPlanServiceRequest, serviceRequests, reason why this should be supported.)
* insert BundleEntry(CVDRiskCategory, risk-assessment-cardiovascular-disease, reason why this should be supported.)
* insert BundleEntry(ProvidersLocation, encounterLocations, reason why this should be supported.)
* insert BundleEntry(FollowUpAtHLC, careplan-hlc-follow-up, reason why this should be supported.)