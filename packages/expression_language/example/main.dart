import 'package:expression_language/expression_language.dart';

void main() {
  var expressionGrammarDefinition = ExpressionGrammarParser({},
      customFunctionExpressionFactories:
          getDefaultFunctionExpressionFactories());
  var parser = expressionGrammarDefinition.build();
  var result = parser.parse('isEmpty("vjkv") == false');
  var expression = result.value as Expression;
  var value = expression.evaluate();
  print(value);
}
