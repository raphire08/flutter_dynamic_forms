import 'package:expression_language/expression_language.dart';

void main() {
  var expressionGrammarDefinition = ExpressionGrammarParser({},
      customFunctionExpressionFactories:
          getDefaultFunctionExpressionFactories());
  var parser = expressionGrammarDefinition.build();
  var result = parser.parse('"2 == 2"; "This is true"');
  var expression = result.value as Expression;
  var value = expression.evaluate();
  print(value);
}
