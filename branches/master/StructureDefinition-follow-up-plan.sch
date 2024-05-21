<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile GenericServiceRequest
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:ServiceRequest/f:occurrence[x]/f:repeat 1</sch:title>
    <sch:rule context="f:ServiceRequest/f:occurrence[x]/f:repeat">
      <sch:assert test="count(f:count) &gt;= 1">count: minimum cardinality of 'count' is 1</sch:assert>
      <sch:assert test="count(f:duration) &gt;= 1">duration: minimum cardinality of 'duration' is 1</sch:assert>
      <sch:assert test="count(f:durationUnit) &gt;= 1">durationUnit: minimum cardinality of 'durationUnit' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
