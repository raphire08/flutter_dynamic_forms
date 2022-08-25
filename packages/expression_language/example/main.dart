import 'package:expression_language/expression_language.dart';

void main() {
  var expressionGrammarDefinition = ExpressionGrammarParser({},
      customFunctionExpressionFactories:
          getDefaultFunctionExpressionFactories());
  var parser = expressionGrammarDefinition.build();
  var result = parser.parse('25 <= 25; "Test Hours should be greater than 25"');
  var expression = result.value as Expression;
  var value = expression.evaluate();
  print(value);
}
