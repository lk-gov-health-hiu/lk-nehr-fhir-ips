Instance: HHIMSTransactionalBundleExampleNoMedicalHistory
InstanceOf: HHIMSTransactionalBundle
Usage: #example
Title: "HHIMS Transactional Bundle with no medical history"
Description: "A full transactional bundle containing no medical history for the HHIMS patient."
* type = #transaction
* timestamp = "2024-02-18T09:30:00+02:00"
* identifier.value = "transactional-id-1234"
* identifier.system = "http://fhir.health.gov.lk/ips/identifier/hhims-transactional"

* insert ExampleTransactionalEntry(PatientExample, patient, Patient)
* insert ExampleTransactionalEntry(TargetFacilityEncounterExample, encounters, Encounter)
* insert ExampleTransactionalEntry(NoMedicalHistoryExample, condition, Condition)
* insert ExampleTransactionalEntry(NotifiableDiseasesNotifiedExample, communication-notifiable-conditions, Communication)
* insert ExampleTransactionalEntry(WeightExample, observation-weight, Observation)
* insert ExampleTransactionalEntry(AllergiesExample, allergyintolerance, AllergyIntolerance)
* insert ExampleTransactionalEntry(MedicationRequestsExample, medicationrequest, MedicationRequest)
* insert ExampleTransactionalEntry(DrugDispensationExample, medication-dispensation, MedicationDispense)
//* insert ExampleTransactionalEntry(InjectionsExample, medication-administration, MedicationAdministration)
//* insert ExampleTransactionalEntry(ProceduresExample, procedure, Procedure)
* insert ExampleTransactionalEntry(ImagingExample, imagingstudy, ImagingStudy)

* insert ExampleTransactionalEntry(GeneralReferralServiceRequestExample, serviceRequests, ServiceRequest)
* insert ExampleTransactionalEntry(InvestigationsServiceRequestExample, serviceRequests, ServiceRequest)
* insert ExampleTransactionalEntry(ImagingServiceRequestExample, serviceRequests, ServiceRequest)

* insert ExampleTransactionalEntry(ProcedureServiceRequestExample, serviceRequests, ServiceRequest)

* insert ExampleTransactionalEntry(HHIMSReferralTaskExample, tasks, Task)
//* insert ExampleTransactionalEntry(InvestigationsTaskExample, tasks, Task)
//* insert ExampleTransactionalEntry(ImagingTaskExample, tasks, Task)

* insert ExampleTransactionalEntry(GeneralPractitionerExample, practitioner, Practitioner)
* insert ExampleTransactionalEntry(ProvidersLocationExample, encounterLocations, Location)
* insert ExampleTransactionalEntry(OrganizationExample, organization, Organization)
* insert ExampleTransactionalEntry(DeviceInformationExample, device-information, Device)