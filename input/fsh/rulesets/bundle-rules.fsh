RuleSet: BundleEntry(resourceID, entrySLice, mustSupportReason)
* entry[{entrySLice}]
  ^definition = "{mustSupportReason}"
  * fullUrl 1..1
  * resource 1..
  * resource only {resourceID}

RuleSet: ExampleTransactionalEntry(resourceID, entrySLice, resourceType)
* entry[{entrySLice}][+].fullUrl = "http://hapi-fhir:8080/fhir/{resourceType}/{resourceID}"
* entry[{entrySLice}][=].resource = {resourceID}
* entry[{entrySLice}][=].request.method = #PUT
* entry[{entrySLice}][=].request.url = "{resourceType}/{resourceID}"

RuleSet: ExampleDocumentEntry(resourceID, entrySLice, resourceType)
* entry[{entrySLice}][+].fullUrl = "http://hapi-fhir:8080/fhir/{resourceType}/{resourceID}"
* entry[{entrySLice}][=].resource = {resourceID}