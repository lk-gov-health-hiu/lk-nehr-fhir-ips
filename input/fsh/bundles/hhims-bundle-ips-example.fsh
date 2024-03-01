Instance: HHIMSIPSBundleExample
InstanceOf: HHIMSIPSBundle
Usage: #example
Title: "HHIMS IPS Bundle"
Description: "HHIMS IPS Bundle"
* type = #document
* timestamp = "2024-02-18T09:30:00+02:00"
* identifier.value = "IPS-Summary-1"
* identifier.system = "http://fhir.health.gov.lk/ips/identifier/hhims-ips"

* insert ExampleDocumentEntry(HHIMSCompositionExample, composition, Composition)

* insert ExampleDocumentEntry(HHIMSPatientExample, patient, Patient)
* insert ExampleDocumentEntry(HHIMSTargetFacilityEncounterExample, encounters, Encounter)
* insert ExampleDocumentEntry(HHIMSMedicalHistoryExample, condition, Condition)
* insert ExampleDocumentEntry(NotifiableDiseasesNotifiedExample, communication-notifiable-conditions, Communication)
* insert ExampleDocumentEntry(HHIMSWeightExample, observation-results, Observation)
* insert ExampleDocumentEntry(AllergiesExample, allergyintolerance, AllergyIntolerance)
* insert ExampleDocumentEntry(PrescriptionsExample, medicationrequest, MedicationRequest)
* insert ExampleDocumentEntry(DrugDispensationExample, medication-dispensation, MedicationDispense)
* insert ExampleDocumentEntry(InjectionsExample, medication-administration, MedicationAdministration)
* insert ExampleDocumentEntry(ProceduresExample, procedure, Procedure)
* insert ExampleDocumentEntry(ImagingExample, imagingstudy, ImagingStudy)

* insert ExampleDocumentEntry(GeneralReferralServiceRequestExample, serviceRequests, ServiceRequest)
* insert ExampleDocumentEntry(InvestigationsServiceRequestExample, serviceRequests, ServiceRequest)
* insert ExampleDocumentEntry(ImagingServiceRequestExample, serviceRequests, ServiceRequest)

* insert ExampleDocumentEntry(HHIMSReferralTaskExample, tasks, Task)
* insert ExampleDocumentEntry(InvestigationsTaskExample, tasks, Task)
* insert ExampleDocumentEntry(ImagingTaskExample, tasks, Task)

* insert ExampleDocumentEntry(GeneralPractitionerExample, practitioner, Practitioner)
* insert ExampleDocumentEntry(ProvidersLocationExample, encounterLocations, Location)
* insert ExampleDocumentEntry(OrganizationExample, organization, Organization)