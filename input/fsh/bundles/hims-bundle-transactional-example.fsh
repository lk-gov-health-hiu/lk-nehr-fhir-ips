Instance: HIMSTransactionalBundleExample
InstanceOf: HIMSTransactionalBundle
Usage: #example
Title: "HIMS Transactional Bundle"
Description: "This bundle contains all of the HIMS resources for transactional requests."
* type = #transaction
* timestamp = "2024-02-18T09:30:00+02:00"
* identifier.value = "transactional-id-1234"
* identifier.system = "http://fhir.health.gov.lk/ips/identifier/hims-transactional"

* insert ExampleTransactionalEntry(HIMSPatientExample, patient, Patient)
* insert ExampleTransactionalEntry(HIMSTargetFacilityEncounterExample, encounters, Encounter)
* insert ExampleTransactionalEntry(HIMSMedicalHistoryExample, condition-medical-history, Condition)

* insert ExampleTransactionalEntry(HIMSWeightExample, observation-weight, Observation)
* insert ExampleTransactionalEntry(RiskBehaviourTobaccoSmokerExample, observation-tobacco-smoker, Observation)
* insert ExampleTransactionalEntry(RiskBehaviourPhysicalActivityExample, observation-physical-activity, Observation)
* insert ExampleTransactionalEntry(BloodPressureExample, observation-blood-pressure, Observation)
* insert ExampleTransactionalEntry(HeightExample, observation-height, Observation)
* insert ExampleTransactionalEntry(BMIExample, observation-bmi, Observation)
* insert ExampleTransactionalEntry(RandomBloodSugarExample, observation-random-blood-sugar, Observation)
* insert ExampleTransactionalEntry(FastingBloodSugarExample, observation-fasting-blood-sugar, Observation)
* insert ExampleTransactionalEntry(TotalCholesterolExample, observation-cholesterol, Observation)

* insert ExampleTransactionalEntry(NoAllergiesExample, allergyintolerance, AllergyIntolerance)
* insert ExampleTransactionalEntry(NoPrescriptionsExample, medicationrequest, MedicationRequest)

* insert ExampleTransactionalEntry(CVDRiskCategoryExample, risk-assessment-cardiovascular-disease, RiskAssessment)
* insert ExampleTransactionalEntry(FollowUpAtHLCExample, careplan-hlc-follow-up, CarePlan)
* insert ExampleTransactionalEntry(FollowUpPlanServiceRequestExample, serviceRequest-follow-up-plan, ServiceRequest)

* insert ExampleTransactionalEntry(GeneralPractitionerExample, practitioner, Practitioner)
* insert ExampleTransactionalEntry(ProvidersLocationExample, encounterLocations, Location)
* insert ExampleTransactionalEntry(OrganizationExample, organization, Organization)