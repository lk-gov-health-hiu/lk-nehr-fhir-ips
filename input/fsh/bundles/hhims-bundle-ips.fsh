Profile: HHIMSIPSBundle
Parent: BundleUvIps
Id: hhims-ips-bundle
Title: "HHIMS IPS Bundle"
Description: "This bundle contains all of the HHIMS resources for IPS."
* identifier.value 1..1
* identifier.system = "http://fhir.health.gov.lk/ips/identifier/hhims-ips"
* timestamp 1..1
* entry contains
    tasks 0..* MS and
    serviceRequests 0..* MS and
    communication-notifiable-conditions 0..* MS and
    encounterLocations 0..* MS and
    medication-administration 0..* MS and
    medication-dispensation 0..* MS and
    encounters 1..*

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
* entry[medication-administration] ^definition =
    "reason(s) why this should be supported."
* entry[medication-dispensation] ^definition =
    "reason(s) why this should be supported."

* insert BundleEntry(Imaging, imagingstudy, reason why this should be supported.)
* insert BundleEntry(NotifiableDiseasesNotified, communication-notifiable-conditions, reason why this should be supported.)
* insert BundleEntry(ProvidersLocation, encounterLocations, reason why this should be supported.)
* insert BundleEntry(GeneralPractitioner, practitioner, reason why this should be supported.)
* insert BundleEntry(HHIMSTargetFacilityEncounter, encounters, reason why this should be supported.)
* insert BundleEntry(Injections, medication-administration, reason why this should be supported.)
* insert BundleEntry(DrugDispensation, medication-dispensation, reason why this should be supported.)
* insert BundleEntry(GenericServiceRequest, serviceRequests, reason why this should be supported.)
* insert BundleEntry(GenericTask, tasks, reason why this should be supported.)