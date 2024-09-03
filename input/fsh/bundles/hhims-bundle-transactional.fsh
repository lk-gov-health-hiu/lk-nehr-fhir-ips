Profile: HHIMSTransactionalBundle
Parent: Bundle
Id: hhims-transactional-bundle
Title: "HHIMS Transactional Bundle"
Description: "This bundle contains all of the HHIMS resources for transactional requests."
* type = #transaction
* identifier 1..1
* identifier.value 1..1
* identifier.system 1..1
* identifier.system = "http://fhir.health.gov.lk/ips/identifier/hhims-transactional"
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
    encounters 1..* and
    tasks 0..* MS and
    serviceRequests 0..* MS and
    communication-notifiable-conditions 0..* MS and
    encounterLocations 0..* MS and
    //medication-administration 0..* MS and
    medication-dispensation 0..* MS and
    observation-weight 0..* MS and
    practitioner 0..* MS and 
    allergyintolerance 0..* MS and
    medicationrequest 0..* MS and 
    //procedure 0..* MS and
    imagingstudy 0..* MS and
    condition 0..* MS and
    organization 0..* MS and
    device-information 0..* MS

* entry[imagingstudy] ^definition =
    "reason(s) why this should be supported."
* entry[serviceRequests] ^definition =
    "reason(s) why this should be supported."
* entry[tasks] ^definition =
    "reason(s) why this should be supported."
* entry[communication-notifiable-conditions] ^definition =
    "reason(s) why this should be supported."
* entry[encounterLocations] ^definition =
    "reason(s) why this should be supported."
* entry[practitioner] ^definition =
    "reason(s) why this should be supported."
* entry[encounters] ^definition =
    "reason(s) why this should be supported."
//* entry[medication-administration] ^definition =
 //   "reason(s) why this should be supported."
* entry[medication-dispensation] ^definition =
    "reason(s) why this should be supported."
* entry[observation-weight] ^definition =
    "reason(s) why this should be supported."
* entry[allergyintolerance] ^definition =
    "reason(s) why this should be supported."
* entry[medicationrequest] ^definition =
    "reason(s) why this should be supported."
//* entry[procedure] ^definition =
//    "reason(s) why this should be supported."
* entry[condition] ^definition =
    "reason(s) why this should be supported."
* entry[organization] ^definition =
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

* insert BundleEntry(Imaging, imagingstudy, reason why this should be supported.)
* insert BundleEntry(NotifiableDiseasesNotified, communication-notifiable-conditions, reason why this should be supported.)
* insert BundleEntry(ProvidersLocation, encounterLocations, reason why this should be supported.)
* insert BundleEntry(GeneralPractitioner, practitioner, reason why this should be supported.)
//* insert BundleEntry(Injections, medication-administration, reason why this should be supported.)
* insert BundleEntry(DrugDispensation, medication-dispensation, reason why this should be supported.)
* insert BundleEntry(GenericServiceRequest, serviceRequests, reason why this should be supported.)
* insert BundleEntry(GenericTask, tasks, reason why this should be supported.)
* insert BundleEntry(Weight, observation-weight, reason why this should be supported.)
* insert BundleEntry(Allergies, allergyintolerance, reason why this should be supported.)
* insert BundleEntry(MedicationRequests, medicationrequest, reason why this should be supported.)
//* insert BundleEntry(Procedures, procedure, reason why this should be supported.)
* insert BundleEntry(ConditionUvIps, condition, reason why this should be supported.)
* insert BundleEntry(Organization, organization, reason why this should be supported.)
* insert BundleEntry(DeviceInformation, device-information, reason why this should be supported.)