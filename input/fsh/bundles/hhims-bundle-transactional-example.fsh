Instance: HHIMSTransactionalBundleExample
InstanceOf: HHIMSTransactionalBundle
Usage: #example
Title: "HHIMS Transactional Bundle"
Description: "This bundle contains all of the HHIMS resources for transactional requests."
* type = #transaction
* timestamp = "2024-02-18T09:30:00+02:00"
* identifier.value = "transactional-id-1234"
* identifier.system = "http://fhir.health.gov.lk/ips/identifier/hhims-transactional"

* insert ExampleTransactionalEntry(HHIMSPatientExample, patient, Patient)
* insert ExampleTransactionalEntry(HHIMSTargetFacilityEncounterExample, encounters, Encounter)
* insert ExampleTransactionalEntry(HHIMSMedicalHistoryExample, condition, Condition)
* insert ExampleTransactionalEntry(NotifiableDiseasesNotifiedExample, communication-notifiable-conditions, Communication)
* insert ExampleTransactionalEntry(HHIMSWeightExample, observation-weight, Observation)
* insert ExampleTransactionalEntry(AllergiesExample, allergyintolerance, AllergyIntolerance)
* insert ExampleTransactionalEntry(PrescriptionsExample, medicationrequest, MedicationRequest)
* insert ExampleTransactionalEntry(DrugDispensationExample, medication-dispensation, MedicationDispense)
* insert ExampleTransactionalEntry(InjectionsExample, medication-administration, MedicationAdministration)
* insert ExampleTransactionalEntry(ProceduresExample, procedure, Procedure)
* insert ExampleTransactionalEntry(ImagingExample, imagingstudy, ImagingStudy)

* insert ExampleTransactionalEntry(GeneralReferralServiceRequestExample, serviceRequests, ServiceRequest)
* insert ExampleTransactionalEntry(InvestigationsServiceRequestExample, serviceRequests, ServiceRequest)
* insert ExampleTransactionalEntry(ImagingServiceRequestExample, serviceRequests, ServiceRequest)

* insert ExampleTransactionalEntry(HHIMSReferralTaskExample, tasks, Task)
* insert ExampleTransactionalEntry(InvestigationsTaskExample, tasks, Task)
* insert ExampleTransactionalEntry(ImagingTaskExample, tasks, Task)

* insert ExampleTransactionalEntry(GeneralPractitionerExample, practitioner, Practitioner)
* insert ExampleTransactionalEntry(ProvidersLocationExample, encounterLocations, Location)
* insert ExampleTransactionalEntry(OrganizationExample, organization, Organization)