RuleSet: Slice(item, definition, discriminatorType, discriminatorPath, rule, description, ordered)
* {item} 
  * ^definition = "{definition}"
  * ^slicing.discriminator[+].type = #{discriminatorType}
  * ^slicing.discriminator[=].path = "{discriminatorPath}"
  * ^slicing.rules = #{rule}
  * ^slicing.description = "{description}"
  * ^slicing.ordered = {ordered}