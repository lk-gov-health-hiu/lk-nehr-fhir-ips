Invariant: MedicationRequest-DosageInstruction-1
Description: "If dosageInstruction.timing.repeat.frequency does not exist then dosageInstruction.timing.code SHALL be present."
Expression: "repeat.frequency.exists().not() implies code.exists()"
Severity: #error