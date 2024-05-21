<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile MedicationRequestIPS
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:MedicationRequest</sch:title>
    <sch:rule context="f:MedicationRequest">
      <sch:assert test="count(f:encounter) &gt;= 1">encounter: minimum cardinality of 'encounter' is 1</sch:assert>
      <sch:assert test="count(f:authoredOn) &gt;= 1">authoredOn: minimum cardinality of 'authoredOn' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:identifier</sch:title>
    <sch:rule context="f:MedicationRequest/f:identifier">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:assigner) &lt;= 1">assigner: maximum cardinality of 'assigner' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:identifier/f:type</sch:title>
    <sch:rule context="f:MedicationRequest/f:identifier/f:type">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:identifier/f:type/f:coding</sch:title>
    <sch:rule context="f:MedicationRequest/f:identifier/f:type/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:dosageInstruction/f:timing</sch:title>
    <sch:rule context="f:MedicationRequest/f:dosageInstruction/f:timing">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:repeat) &lt;= 1">repeat: maximum cardinality of 'repeat' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:dosageInstruction/f:timing/f:repeat</sch:title>
    <sch:rule context="f:MedicationRequest/f:dosageInstruction/f:timing/f:repeat">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:bounds[x]) &lt;= 1">bounds[x]: maximum cardinality of 'bounds[x]' is 1</sch:assert>
      <sch:assert test="count(f:count) &gt;= 1">count: minimum cardinality of 'count' is 1</sch:assert>
      <sch:assert test="count(f:count) &lt;= 1">count: maximum cardinality of 'count' is 1</sch:assert>
      <sch:assert test="count(f:countMax) &lt;= 1">countMax: maximum cardinality of 'countMax' is 1</sch:assert>
      <sch:assert test="count(f:duration) &gt;= 1">duration: minimum cardinality of 'duration' is 1</sch:assert>
      <sch:assert test="count(f:duration) &lt;= 1">duration: maximum cardinality of 'duration' is 1</sch:assert>
      <sch:assert test="count(f:durationMax) &lt;= 1">durationMax: maximum cardinality of 'durationMax' is 1</sch:assert>
      <sch:assert test="count(f:durationUnit) &gt;= 1">durationUnit: minimum cardinality of 'durationUnit' is 1</sch:assert>
      <sch:assert test="count(f:durationUnit) &lt;= 1">durationUnit: maximum cardinality of 'durationUnit' is 1</sch:assert>
      <sch:assert test="count(f:frequency) &lt;= 1">frequency: maximum cardinality of 'frequency' is 1</sch:assert>
      <sch:assert test="count(f:frequencyMax) &lt;= 1">frequencyMax: maximum cardinality of 'frequencyMax' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:periodMax) &lt;= 1">periodMax: maximum cardinality of 'periodMax' is 1</sch:assert>
      <sch:assert test="count(f:periodUnit) &lt;= 1">periodUnit: maximum cardinality of 'periodUnit' is 1</sch:assert>
      <sch:assert test="count(f:offset) &lt;= 1">offset: maximum cardinality of 'offset' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:dispenseRequest/f:validityPeriod</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:validityPeriod">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/data-absent-reason']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/data-absent-reason': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
