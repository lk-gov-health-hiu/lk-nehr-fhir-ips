<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile RiskAssessment
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:RiskAssessment</sch:title>
    <sch:rule context="f:RiskAssessment">
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:encounter) &gt;= 1">encounter: minimum cardinality of 'encounter' is 1</sch:assert>
      <sch:assert test="count(f:performer) &gt;= 1">performer: minimum cardinality of 'performer' is 1</sch:assert>
      <sch:assert test="count(f:basis) &gt;= 1">basis: minimum cardinality of 'basis' is 1</sch:assert>
      <sch:assert test="count(f:prediction) &gt;= 1">prediction: minimum cardinality of 'prediction' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:RiskAssessment/f:prediction</sch:title>
    <sch:rule context="f:RiskAssessment/f:prediction">
      <sch:assert test="count(f:outcome) &gt;= 1">outcome: minimum cardinality of 'outcome' is 1</sch:assert>
      <sch:assert test="count(f:qualitativeRisk) &gt;= 1">qualitativeRisk: minimum cardinality of 'qualitativeRisk' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
