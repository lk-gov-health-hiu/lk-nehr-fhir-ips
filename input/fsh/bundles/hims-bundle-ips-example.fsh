Instance: HIMSIPSBundleExample
InstanceOf: HIMSIPSBundle
Usage: #example
Title: "HIMS IPS Bundle"
Description: "HIMS IPS Bundle"
* type = #document
* timestamp = "2024-02-18T09:30:00+02:00"
* identifier.value = "IPS-Summary-1"
* identifier.system = "http://fhir.health.gov.lk/ips/identifier/hims-ips"

* insert ExampleDocumentEntry(HIMSCompositionExample, composition, Composition)

* insert ExampleDocumentEntry(PatientExample, patient, Patient)
* insert ExampleDocumentEntry(TargetFacilityEncounterExample, encounters, Encounter)
* insert ExampleDocumentEntry(MedicalHistoryExample, condition, Condition)

* insert ExampleDocumentEntry(WeightExample, observation-results, Observation)
* insert ExampleDocumentEntry(RiskBehaviourTobaccoSmokerExample, observation-results, Observation)
* insert ExampleDocumentEntry(RiskBehaviourPhysicalActivityExample, observation-results, Observation)
* insert ExampleDocumentEntry(BloodPressureExample, observation-results, Observation)
* insert ExampleDocumentEntry(HeightExample, observation-results, Observation)
* insert ExampleDocumentEntry(BMIExample, observation-results, Observation)
* insert ExampleDocumentEntry(RandomBloodSugarExample, observation-results, Observation)
* insert ExampleDocumentEntry(FastingBloodSugarExample, observation-results, Observation)
* insert ExampleDocumentEntry(TotalCholesterolExample, observation-results, Observation)

* insert ExampleDocumentEntry(NoAllergiesExample, allergyintolerance, AllergyIntolerance)
* insert ExampleDocumentEntry(NoPrescriptionsExample, medicationrequest, MedicationRequest)

* insert ExampleDocumentEntry(CVDRiskCategoryExample, risk-assessment-cardiovascular-disease, RiskAssessment)
* insert ExampleDocumentEntry(FollowUpAtHLCExample, careplan-hlc-follow-up, CarePlan)
* insert ExampleDocumentEntry(FollowUpPlanServiceRequestExample, serviceRequests, ServiceRequest)

* insert ExampleDocumentEntry(GeneralPractitionerExample, practitioner, Practitioner)
* insert ExampleDocumentEntry(ProvidersLocationExample, encounterLocations, Location)
* insert ExampleDocumentEntry(OrganizationExample, organization, Organization)
* insert ExampleDocumentEntry(DeviceInformationExample, device, Device)