Invariant: MedicationRequest-DosageInstruction-1
Description: "If the Repeat Frequency does not exist then the Timing Code SHALL be present."
Expression: "repeat.frequency.exists().not() implies code.exists()"
Severity: #error