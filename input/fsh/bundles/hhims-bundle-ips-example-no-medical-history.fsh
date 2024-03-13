Instance: HHIMSIPSBundleExampleNoMedicalHistory
InstanceOf: HHIMSIPSBundle
Usage: #example
Title: "HHIMS IPS Bundle with no medical history"
Description: "A full IPS derived bundle containing no medical history for the HHIMS patient."
* type = #document
* timestamp = "2024-02-18T09:30:00+02:00"
* identifier.value = "IPS-Summary-1"
* identifier.system = "http://fhir.health.gov.lk/ips/identifier/hhims-ips"

* insert ExampleDocumentEntry(HHIMSCompositionExampleNoMedicalHistory, composition, Composition)
* insert ExampleDocumentEntry(PatientExample, patient, Patient)
* insert ExampleDocumentEntry(TargetFacilityEncounterExample, encounters, Encounter)
* insert ExampleDocumentEntry(NoMedicalHistoryExample, condition, Condition)
* insert ExampleDocumentEntry(NotifiableDiseasesNotifiedExample, communication-notifiable-conditions, Communication)
* insert ExampleDocumentEntry(WeightExample, observation-results, Observation)
* insert ExampleDocumentEntry(AllergiesExample, allergyintolerance, AllergyIntolerance)
* insert ExampleDocumentEntry(MedicationRequestsExample, medicationrequest, MedicationRequest)
* insert ExampleDocumentEntry(DrugDispensationExample, medication-dispensation, MedicationDispense)
* insert ExampleDocumentEntry(ImagingExample, imagingstudy, ImagingStudy)
* insert ExampleDocumentEntry(GeneralReferralServiceRequestExample, serviceRequests, ServiceRequest)
* insert ExampleDocumentEntry(InvestigationsServiceRequestExample, serviceRequests, ServiceRequest)
* insert ExampleDocumentEntry(ImagingServiceRequestExample, serviceRequests, ServiceRequest)
* insert ExampleDocumentEntry(ProcedureServiceRequestExample, serviceRequests, ServiceRequest)
* insert ExampleDocumentEntry(HHIMSReferralTaskExample, tasks, Task)
* insert ExampleDocumentEntry(GeneralPractitionerExample, practitioner, Practitioner)
* insert ExampleDocumentEntry(ProvidersLocationExample, encounterLocations, Location)
* insert ExampleDocumentEntry(OrganizationExample, organization, Organization)
* insert ExampleDocumentEntry(DeviceInformationExample, device, Device)