# Use the JMESPath syntax by using curly braces to specify a query for multiple properties on each instance returned
object.{Alias1:PropertyName1,Alias2:PropertyName2,[…]}

# The value of a specific named tag can be retrieved via a JMESPath query, using the following syntax
Tags[?Key==\`Project\`] | [0].Value

