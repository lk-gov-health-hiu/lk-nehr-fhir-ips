RuleSet: CompositionEntry(allowedResourcesForEntry, resourceID, sectionSLice, sectionCode, sectionTitle, entrySLice, shortDescription, definition, cardinality)
* section[{sectionSLice}]
  * title 1..1
  * title = "{sectionTitle}"
  * code 1..1
  * code = {sectionCode}
  * entry 1..
  * entry only Reference({allowedResourcesForEntry})
  * entry ^slicing.discriminator[+].type = #profile
  * entry ^slicing.discriminator[=].path = "resolve()"
  * entry ^slicing.discriminator[+].type = #value
  * entry ^slicing.discriminator[=].path = "resolve()"
  * entry ^slicing.rules = #open
  * entry ^short = "{shortDescription}"
  * entry ^definition = "{definition}"
  * entry contains
    {entrySLice} {cardinality} MS
  
  * entry[{entrySLice}] ^definition =
    "reason(s) why this should be supported."
  * entry[{entrySLice}] only Reference({resourceID})

  * text 1..1

RuleSet: EntryToSection(resourceID, sectionSLice, entrySLice, cardinality)
* section[{sectionSLice}]
  * entry contains
    {entrySLice} {cardinality} MS
  
  * entry[{entrySLice}] ^definition =
    "reason(s) why this should be supported."
  * entry[{entrySLice}] only Reference({resourceID})